.class public Lcom/android/server/usb/UsbMirrorLinkManager;
.super Ljava/lang/Object;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MIRRORLINK_DISCONNECT_CONFIRM_ACTION:Ljava/lang/String; = "com.android.server.usb.ML_DISCONNECT_CONFIRM"

.field private static final MIRRORLINK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.mirrorlink"

.field private static final MIRRORLINK_START_ACTION:Ljava/lang/String; = "com.samsung.android.mirrorlink.action.ML_UEVENT"

.field private static final NCM_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_ncm"

.field private static final SETTING_EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field private static final SETTING_ULTRA_SAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final STRING_NCM:Ljava/lang/String; = "ncm"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0x5dc

.field private static mDisconnectConfirmed:Z = false

.field private static mStart:J = 0x0L

.field private static final timeUntilBootComplete:I = 0x1388


# instance fields
.field private cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

.field latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsCallToastShown:Z

.field private mIsPinnedToastShown:Z

.field private mIsVoiceToastShown:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/usb/UsbMirrorLinkManager;->mDisconnectConfirmed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->RELEASE:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$1;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMirrorLinkManager$3;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_ncm"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.usb.ML_DISCONNECT_CONFIRM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/usb/UsbMirrorLinkManager$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager$2;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbMirrorLinkManager;->getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/usb/UsbMirrorLinkManager;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->cpuMinFreqBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbMirrorLinkManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbMirrorLinkManager;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->clearToastStates()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbMirrorLinkManager;->semSetNcm(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mDisconnectConfirmed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private canMirrorLinkStart(Landroid/content/Context;)Z
    .registers 7

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v1, "canMirrorLinkStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7a

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    goto :goto_7a

    :cond_22
    invoke-direct {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->isPinnedMode()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    if-nez v2, :cond_31

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_31
    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v3, "Screen is pinned, Not launching MirrorLink"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_39
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-boolean v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_48
    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v3, "MirrorLink can\u2019t be used while Voice Assistant is turned on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v3, "MirrorLink doesn\'t enable ncm due to emergency mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_5e
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6c

    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v3, "MirrorLink doesn\'t enable ncm due to Ultra power saving mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_6c
    sget-boolean v2, Lcom/android/server/usb/UsbMirrorLinkManager;->mDisconnectConfirmed:Z

    if-eqz v2, :cond_78

    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v3, "MirrorLink can\'t start, as user disconneted it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_78
    const/4 v0, 0x1

    goto :goto_8b

    :cond_7a
    :goto_7a
    iget-boolean v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    if-nez v2, :cond_84

    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_84
    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v3, "Phone rining or offhook, Not launching MirrorLink"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    return v0
.end method

.method private clearToastStates()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsCallToastShown:Z

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsPinnedToastShown:Z

    iput-boolean v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mIsVoiceToastShown:Z

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getStringIdFromMirrorLinkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 9

    const/4 v0, 0x0

    const-string v1, ""

    :try_start_3
    iget-object v2, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.mirrorlink"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.samsung.android.app.mirrorlink:string/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.app.mirrorlink"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    sget-object v3, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resource="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_4c} :catch_4d

    :cond_4c
    goto :goto_51

    :catch_4d
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_51
    return-object v1
.end method

.method private insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 11

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v1, "insertLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usb/UsbMirrorLinkManager;->mStart:J

    goto :goto_66

    :cond_20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    const-string v2, "CON1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v1, Lcom/android/server/usb/UsbMirrorLinkManager;->mStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_52

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/usb/UsbMirrorLinkManager;->mStart:J

    sub-long v3, v1, v3

    const-string v5, "extra"

    const-string v6, "Connection_Time"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "value"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_66
    :goto_66
    return-void
.end method

.method private isEmergencyMode(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_b} :catch_11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    move v0, v2

    nop

    :cond_10
    return v0

    :catch_11
    move-exception v1

    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "never enabled emergency mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isPinnedMode()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    move v0, v2

    return v0
.end method

.method private isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 13

    const/4 v0, 0x0

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    :try_start_9
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v3, "semIsAccessibilityServiceEnabled"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    const-string v5, "SEM_STATE_FLAG_GOOGLE_TALKBACK"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    const-class v8, Landroid/view/accessibility/AccessibilityManager;

    const-string v9, "SEM_STATE_FLAG_VOICE_ASSISTANT"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v2, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_49

    const/4 v0, 0x1

    goto :goto_5e

    :cond_49
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_5b} :catch_78
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_5b} :catch_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_5b} :catch_6e
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_5b} :catch_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_5b} :catch_64
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_5b} :catch_5f

    if-eqz v4, :cond_5e

    const/4 v0, 0x1

    :cond_5e
    :goto_5e
    goto :goto_7d

    :catch_5f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_7d

    :catch_64
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5e

    :catch_69
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5e

    :catch_6e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5e

    :catch_73
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5e

    :catch_78
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5e

    :goto_7d
    return v0
.end method

.method private isUltraSavingMode(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    move v0, v2

    nop

    :cond_11
    return v0

    :catch_12
    move-exception v1

    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUltraSavingMode failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static synthetic lambda$systemReady$0(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbMirrorLinkManager;->onBootComplete()V

    return-void
.end method

.method private onBootComplete()V
    .registers 10

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootComplete() called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_17
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    :goto_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3b

    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_29} :catch_33
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_1d

    :catch_2a
    move-exception v3

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v5, "IOException for not opening usb file"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catch_33
    move-exception v3

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v5, "FileNotFoundException for not opening usb file"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    nop

    :goto_3c
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v4, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v5, "checking terminal version"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "major"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "minor"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    sget-object v7, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "systemReady terminal_version : major 0 minor 1"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V

    :cond_94
    goto :goto_b9

    :cond_95
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "minor"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    sget-object v6, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "systemReady terminal_version : major 1 minor"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->startMirrorLink(Landroid/content/Context;)V

    goto :goto_b9

    :cond_b0
    sget-object v5, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "systemReady major version is not present"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_b9
    :goto_b9
    const/4 v3, 0x0

    if-eqz v2, :cond_c6

    :try_start_bc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c1

    const/4 v2, 0x0

    goto :goto_c6

    :catch_c1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c7

    :cond_c6
    :goto_c6
    nop

    :goto_c7
    return-void
.end method

.method private semSetNcm(Landroid/content/Context;Z)V
    .registers 7

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNCMTethering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->semSetNcmTethering(Z)I

    return-void
.end method

.method private startMirrorLink(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string v1, "NCM mode Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;->canMirrorLinkStart(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startService : major 0 minor 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v1, "ncm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    sget-object v1, Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;->START:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    iput-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->latestEvent:Lcom/android/server/usb/UsbMirrorLinkManager$LATEST_UEVENT;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usb/UsbMirrorLinkManager;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.mirrorlink"

    const-string v4, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method


# virtual methods
.method public systemReady()V
    .registers 5

    sget-object v0, Lcom/android/server/usb/UsbMirrorLinkManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemReady() called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/usb/-$$Lambda$UsbMirrorLinkManager$LSRDSgzA34I8NC4MRB4o-Bxriiw;

    invoke-direct {v1, p0}, Lcom/android/server/usb/-$$Lambda$UsbMirrorLinkManager$LSRDSgzA34I8NC4MRB4o-Bxriiw;-><init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
