.class public Lcom/samsung/android/MtpApplication/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;
    }
.end annotation


# static fields
.field static EmergencyRegistered:Z

.field static PolicyRegistered:Z

.field static RegisterBroadcastMtpFileShare:Z

.field static mtpServiceHandler:Landroid/os/Handler;

.field static sdCardCurrentStatus:Z

.field static userPresentRegistered:Z


# instance fields
.field binder:Landroid/os/Binder;

.field private jniObj:Landroid/mtp/MTPJNIInterface;

.field private mContext:Landroid/content/Context;

.field private final mMtpFileShareReceiver:Landroid/content/BroadcastReceiver;

.field mNotiManager:Landroid/app/NotificationManager;

.field private mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mThread:Landroid/os/HandlerThread;

.field private final mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private final mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->sdCardCurrentStatus:Z

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->RegisterBroadcastMtpFileShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mNotiManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->binder:Landroid/os/Binder;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$1;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$2;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$3;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mMtpFileShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$4;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/MtpApplication/MtpService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpService;->manageProcessForeground(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpService;->unRegisterAllIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static isUsbDisconnected()Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "/sys/class/android_usb/android0/state"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    nop

    if-eqz v0, :cond_0

    const-string v3, "DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/android_usb/android0/state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2

    :catch_0
    move-exception v3

    const-string v4, "MtpService"

    const-string v5, "cannot open file : /sys/class/android_usb/android0/state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private manageProcessForeground(Z)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->binder:Landroid/os/Binder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->binder:Landroid/os/Binder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "MTP:setProcessImportant()"

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private registerBroadCastEmergencyRec()V
    .locals 7

    const-string v0, "MtpService"

    const-string v1, "< MTP > Registering BroadCast registerBroadCastEmergencyRec :::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z

    return-void
.end method

.method private registerBroadCastPolicyRec()V
    .locals 7

    const-string v0, "MtpService"

    const-string v1, "< MTP > Registering BroadCast registerBroadCastPolicyRec :::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z

    return-void
.end method

.method private registerBroadCastuserPresentRec()V
    .locals 7

    const-string v0, "MtpService"

    const-string v1, "< MTP > Registering BroadCast receiver for USER Present:::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    return-void
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method private unRegisterAllIntent(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z

    if-ne v2, v1, :cond_0

    const-string v2, "MtpService"

    const-string v3, "Unregister Mtp disable Receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MtpService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z

    if-ne v2, v1, :cond_1

    const-string v2, "MtpService"

    const-string v3, "Unregister mtpEmergencyReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "MtpService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    if-ne v2, v1, :cond_2

    const-string v1, "MtpService"

    const-string v2, "unregistering mtpUserPresentReceiver in UnregisterAllIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "MtpService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "MtpService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "MtpService"

    const-string v1, "onCreate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtpService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;-><init>(Lcom/samsung/android/MtpApplication/MtpService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    :cond_0
    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getMtpContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "MtpService"

    const-string v1, "mContext is NULL so getting the getApplicationContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_drive_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MtpService"

    const-string v1, "Calling registerBroadCastuserPresentRec() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastuserPresentRec()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastPolicyRec()V

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastEmergencyRec()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MtpService"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/MtpApplication/MtpService;->manageProcessForeground(Z)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/MtpApplication/MtpService;->unRegisterAllIntent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "MtpService"

    const-string v1, "onStartCommand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method
