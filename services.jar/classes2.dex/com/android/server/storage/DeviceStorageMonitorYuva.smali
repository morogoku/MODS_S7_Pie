.class public Lcom/android/server/storage/DeviceStorageMonitorYuva;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorYuva.java"


# static fields
.field private static final ACTION_CANCEL_USER_MEM_LOW:Ljava/lang/String; = "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

.field private static final ACTION_USER_MEM_LOW:Ljava/lang/String; = "com.samsung.android.sm.ACTION_USER_MEM_LOW"

.field private static final DATA_PATH:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorYuva"

.field private static final valueCscYuva:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private isBootCompleted:Z

.field private isSupported:Z

.field private final mContext:Landroid/content/Context;

.field private mLowUserMemFlag_15:Z

.field private mLowUserMemFlag_20:Z

.field private mMemLowUserThreshold_15:J

.field private mMemLowUserThreshold_20:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isBootCompleted:Z

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "DeviceStorageMonitorYuva"

    const-string v1, "constructor is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isYuvaSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    return-void
.end method

.method private getStorageUserMemLowBytes(I)J
    .registers 7

    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v2, :cond_26

    const-string v2, "DeviceStorageMonitorYuva"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user spcific threshold is calculated ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-wide v0
.end method

.method private intentBroadcastForUserLowMem(J)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_63

    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gez v0, :cond_1d

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-nez v0, :cond_63

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    invoke-direct {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_63

    :cond_1d
    iget-wide v3, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    cmp-long v0, p1, v3

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-gez v0, :cond_45

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz v0, :cond_35

    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    invoke-direct {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    :cond_35
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-nez v0, :cond_63

    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_63

    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz v0, :cond_54

    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    invoke-direct {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    :cond_54
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-eqz v0, :cond_63

    iput-boolean v4, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    :cond_63
    :goto_63
    return-void
.end method

.method private sendCancelUserMemLowNotification(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "DeviceStorageMonitorYuva"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent ACTION_CANCEL_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PERCENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "com.sec.android.autobackup"

    const-string v2, "com.sec.android.autobackup.UsbBackupReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendUserMemLowNotification(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "DeviceStorageMonitorYuva"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent ACTION_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PERCENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "com.sec.android.autobackup"

    const-string v2, "com.sec.android.autobackup.UsbBackupReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getMemLowUserThreshold_15()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    return-wide v0
.end method

.method public getMemLowUserThreshold_20()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    return-wide v0
.end method

.method public isLowUserMemFlag_15()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    return v0
.end method

.method public isLowUserMemFlag_20()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    return v0
.end method

.method public isYuvaSupported()Z
    .registers 3

    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    const-string v1, "MemorySaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    const-string/jumbo v1, "usbbackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_23

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "DeviceStorageMonitorYuva"

    const-string v1, "device does not support YUVA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x0

    return v0

    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "DeviceStorageMonitorYuva"

    const-string v1, "device supports YUVA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdate(J)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->intentBroadcastForUserLowMem(J)V

    :cond_7
    return-void
.end method

.method public setLowUserMemFlag_15(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    return-void
.end method

.method public setLowUserMemFlag_20(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    return-void
.end method
