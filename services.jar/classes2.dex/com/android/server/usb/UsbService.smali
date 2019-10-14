.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final RELEASE_BUILD:Z

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field private bRestrictHostAPI:Z

.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

.field private final mLock:Ljava/lang/Object;

.field private mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

.field private mOverVoltageObserver:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

.field private mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbService;->RELEASE_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->bRestrictHostAPI:Z

    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UsbHostNotification"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "UsbHostNotification"

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/usb/UsbNotificationHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    new-instance v2, Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {v2}, Lcom/android/server/utils/sysfwutil/DexObserver;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    new-instance v2, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    invoke-direct {v2, p1}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mOverVoltageObserver:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "UsbService"

    const-string v4, "UsbService -> UsbHostManager"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    :cond_6e
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_88

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/utils/sysfwutil/DexObserver;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    :cond_88
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v3, :cond_90

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_97

    :cond_90
    new-instance v3, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    :cond_97
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_112

    const-string v3, "UsbService"

    const-string v4, "At UsbService, UsbDeviceManager -> UsbHostRestrictor"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v3, p1, v4}, Lcom/android/server/usb/UsbHostRestrictor;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v3, "UsbService"

    const-string v4, "At UsbService, UsbDeviceManager -> UsbMonitorImpl"

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/usb/UsbMonitorImpl;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbMonitorImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_e8

    const-string v0, "UsbService"

    const-string v3, "UsbService -> UsbMirrorLinkManager"

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbMirrorLinkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    goto :goto_f7

    :cond_e8
    const-string v0, "UsbService"

    const-string v3, "UsbService -> ML Feature level is not 3"

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    :cond_f0
    const-string v0, "UsbService"

    const-string v3, "UsbService -> no ML Feature "

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f7
    new-instance v0, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "USB Device Not Supported while trying to start UsbHostRestrictor"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method private isAllowedPackage()Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowedPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android"

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_34

    move v3, v4

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    move v0, v3

    const-string v3, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/usb/UsbService;->RELEASE_BUILD:Z

    if-eq v3, v4, :cond_67

    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip signature verification, ret"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_67
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_6c

    const/4 v0, 0x1

    :cond_6c
    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowedPackage, ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isCallerInCurrentUserProfileGroupLocked()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    return v3

    :catchall_14
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    return-void
.end method

.method private onSwitchUser(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    :cond_18
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    return-void
.end method

.method public bootCompleted()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mMirrorLinkManager:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->systemReady()V

    :cond_12
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    return-void
.end method

.method public countKeyBoardConnectedviaUsbHost()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    return v1
.end method

.method public countMouseConnectedviaUsbHost()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    return v1
.end method

.method public denyUsbDebugging()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v5, "UsbService"

    invoke-static {v0, v5, v3}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v0, v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v14, v6

    :try_start_20
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const-string v7, "--proto"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_599

    if-eqz v7, :cond_32

    const/4 v6, 0x1

    :cond_32
    move/from16 v16, v6

    if-eqz v4, :cond_4f6

    :try_start_36
    array-length v6, v4

    if-eqz v6, :cond_4f6

    const/4 v6, 0x0

    aget-object v7, v4, v6

    const-string v8, "-a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f6

    if-eqz v16, :cond_49

    move-wide v11, v14

    goto/16 :goto_4f7

    :cond_49
    const-string/jumbo v7, "set-port-roles"

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_4f1

    const v11, -0x4f94e1aa

    const v12, -0x356f97e5    # -4731917.5f

    const/4 v13, 0x4

    const/16 v17, -0x1

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_142

    :try_start_60
    array-length v7, v4

    if-ne v7, v13, :cond_142

    aget-object v7, v4, v9

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v12, :cond_8e

    const v12, -0x1a426a07

    if-eq v13, v12, :cond_83

    const v12, 0x35de93

    if-eq v13, v12, :cond_78

    goto :goto_99

    :cond_78
    const-string/jumbo v12, "sink"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    move v10, v9

    goto :goto_9b

    :cond_83
    const-string/jumbo v12, "no-power"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    move v10, v6

    goto :goto_9b

    :cond_8e
    const-string/jumbo v12, "source"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    const/4 v10, 0x0

    goto :goto_9b

    :cond_99
    :goto_99
    move/from16 v10, v17

    :goto_9b
    packed-switch v10, :pswitch_data_5a2

    new-instance v8, Ljava/lang/StringBuilder;

    goto/16 :goto_125

    :pswitch_a2
    const/4 v10, 0x0

    goto :goto_a8

    :pswitch_a4
    const/4 v10, 0x2

    goto :goto_a8

    :pswitch_a6
    const/4 v10, 0x1

    nop

    :goto_a8
    nop

    aget-object v12, v4, v8

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v11, :cond_d3

    const v11, 0x30f5a8

    if-eq v13, v11, :cond_c8

    const v9, 0x7b007436

    if-eq v13, v9, :cond_bc

    goto :goto_dd

    :cond_bc
    const-string/jumbo v9, "no-data"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    move/from16 v17, v6

    goto :goto_dd

    :cond_c8
    const-string v6, "host"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    const/16 v17, 0x0

    goto :goto_dd

    :cond_d3
    const-string v6, "device"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    move/from16 v17, v9

    :cond_dd
    :goto_dd
    packed-switch v17, :pswitch_data_5ac

    new-instance v6, Ljava/lang/StringBuilder;

    goto :goto_10d

    :pswitch_e3
    const/4 v6, 0x0

    goto :goto_e9

    :pswitch_e5
    const/4 v6, 0x2

    goto :goto_e9

    :pswitch_e7
    const/4 v6, 0x1

    nop

    :goto_e9
    nop

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_10b

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v8, v7, v10, v6, v5}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v11, v5, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v11, ""

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v9, v11, v12, v13}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_10b
    goto/16 :goto_1cb

    :goto_10d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid data role: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_60 .. :try_end_121} :catchall_13d

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_125
    :try_start_125
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid power role: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_125 .. :try_end_139} :catchall_13d

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13d
    move-exception v0

    move-object v6, v2

    move-wide v11, v14

    goto/16 :goto_59c

    :cond_142
    :try_start_142
    const-string v7, "add-port"

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_14b
    .catchall {:try_start_142 .. :try_end_14b} :catchall_4f1

    const v10, 0x1c3ff

    const v11, 0x1842e

    if-eqz v7, :cond_1e7

    :try_start_153
    array-length v7, v4

    if-ne v7, v8, :cond_1e7

    aget-object v7, v4, v9

    aget-object v12, v4, v6

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    if-eq v13, v11, :cond_190

    if-eq v13, v10, :cond_184

    const v9, 0x2f387c

    if-eq v13, v9, :cond_179

    const v9, 0x33af38

    if-eq v13, v9, :cond_16d

    goto :goto_19a

    :cond_16d
    const-string/jumbo v9, "none"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19a

    move/from16 v17, v8

    goto :goto_19a

    :cond_179
    const-string v8, "dual"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19a

    move/from16 v17, v6

    goto :goto_19a

    :cond_184
    const-string/jumbo v8, "ufp"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19a

    const/16 v17, 0x0

    goto :goto_19a

    :cond_190
    const-string v8, "dfp"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19a

    move/from16 v17, v9

    :cond_19a
    :goto_19a
    packed-switch v17, :pswitch_data_5b6

    new-instance v8, Ljava/lang/StringBuilder;

    goto :goto_1cf

    :pswitch_1a0
    const/4 v6, 0x0

    goto :goto_1a8

    :pswitch_1a2
    const/4 v6, 0x3

    goto :goto_1a8

    :pswitch_1a4
    const/4 v6, 0x2

    goto :goto_1a8

    :pswitch_1a6
    const/4 v6, 0x1

    nop

    :goto_1a8
    nop

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_1ca

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v8, v7, v6, v5}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v8, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v11, "  "

    invoke-direct {v10, v5, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v10, ""

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_1ca
    nop

    :goto_1cb
    move-object v6, v2

    move-wide v11, v14

    goto/16 :goto_592

    :goto_1cf
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e3
    .catchall {:try_start_153 .. :try_end_1e3} :catchall_13d

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1e7
    const-wide/16 v20, 0x0

    :try_start_1e9
    const-string v7, "connect-port"

    const/16 v19, 0x0

    aget-object v8, v4, v19

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_359

    array-length v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_359

    aget-object v7, v4, v9

    aget-object v8, v4, v6

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_203
    .catchall {:try_start_1e9 .. :try_end_203} :catchall_4f1

    move/from16 v23, v8

    if-eqz v23, :cond_20e

    :try_start_207
    aget-object v8, v4, v6

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_20d
    .catchall {:try_start_207 .. :try_end_20d} :catchall_13d

    goto :goto_210

    :cond_20e
    :try_start_20e
    aget-object v8, v4, v6

    :goto_210
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_214
    .catchall {:try_start_20e .. :try_end_214} :catchall_4f1

    if-eq v9, v11, :cond_224

    if-eq v9, v10, :cond_219

    goto :goto_22e

    :cond_219
    :try_start_219
    const-string/jumbo v9, "ufp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_220
    .catchall {:try_start_219 .. :try_end_220} :catchall_13d

    if-eqz v8, :cond_22e

    const/4 v8, 0x0

    goto :goto_230

    :cond_224
    :try_start_224
    const-string v9, "dfp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_22a
    .catchall {:try_start_224 .. :try_end_22a} :catchall_4f1

    if-eqz v8, :cond_22e

    const/4 v8, 0x1

    goto :goto_230

    :cond_22e
    :goto_22e
    move/from16 v8, v17

    :goto_230
    packed-switch v8, :pswitch_data_5c2

    move-wide v11, v14

    :try_start_234
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_236
    .catchall {:try_start_234 .. :try_end_236} :catchall_506

    goto/16 :goto_341

    :pswitch_238
    const/4 v6, 0x2

    goto :goto_23c

    :pswitch_23a
    const/4 v6, 0x1

    nop

    :goto_23c
    move v8, v6

    const/4 v6, 0x3

    :try_start_23e
    aget-object v9, v4, v6

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_246
    .catchall {:try_start_23e .. :try_end_246} :catchall_4f1

    move/from16 v22, v9

    if-eqz v22, :cond_251

    :try_start_24a
    aget-object v9, v4, v6

    invoke-static {v9}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_250
    .catchall {:try_start_24a .. :try_end_250} :catchall_13d

    goto :goto_253

    :cond_251
    :try_start_251
    aget-object v9, v4, v6

    :goto_253
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_257
    .catchall {:try_start_251 .. :try_end_257} :catchall_4f1

    if-eq v10, v12, :cond_26a

    const v11, 0x35de93

    if-eq v10, v11, :cond_25f

    goto :goto_275

    :cond_25f
    :try_start_25f
    const-string/jumbo v10, "sink"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_266
    .catchall {:try_start_25f .. :try_end_266} :catchall_13d

    if-eqz v9, :cond_275

    const/4 v9, 0x1

    goto :goto_277

    :cond_26a
    :try_start_26a
    const-string/jumbo v10, "source"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_271
    .catchall {:try_start_26a .. :try_end_271} :catchall_4f1

    if-eqz v9, :cond_275

    const/4 v9, 0x0

    goto :goto_277

    :cond_275
    :goto_275
    move/from16 v9, v17

    :goto_277
    packed-switch v9, :pswitch_data_5ca

    move-wide v11, v14

    :try_start_27b
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_27d
    .catchall {:try_start_27b .. :try_end_27d} :catchall_506

    goto/16 :goto_329

    :pswitch_27f
    const/4 v6, 0x2

    goto :goto_283

    :pswitch_281
    const/4 v6, 0x1

    nop

    :goto_283
    move v10, v6

    move-wide/from16 v11, v20

    :try_start_286
    aget-object v6, v4, v13

    const-string v9, "?"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_28e
    .catchall {:try_start_286 .. :try_end_28e} :catchall_4f1

    move/from16 v18, v6

    if-eqz v18, :cond_299

    :try_start_292
    aget-object v6, v4, v13

    invoke-static {v6}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_298
    .catchall {:try_start_292 .. :try_end_298} :catchall_13d

    goto :goto_29b

    :cond_299
    :try_start_299
    aget-object v6, v4, v13

    :goto_29b
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_29f
    .catchall {:try_start_299 .. :try_end_29f} :catchall_4f1

    const v11, -0x4f94e1aa

    if-eq v9, v11, :cond_2b5

    const v11, 0x30f5a8

    if-eq v9, v11, :cond_2aa

    goto :goto_2bf

    :cond_2aa
    :try_start_2aa
    const-string v9, "host"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2b0
    .catchall {:try_start_2aa .. :try_end_2b0} :catchall_13d

    if-eqz v6, :cond_2bf

    const/16 v17, 0x0

    goto :goto_2bf

    :cond_2b5
    :try_start_2b5
    const-string v9, "device"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2bb
    .catchall {:try_start_2b5 .. :try_end_2bb} :catchall_4f1

    if-eqz v6, :cond_2bf

    const/16 v17, 0x1

    :cond_2bf
    :goto_2bf
    packed-switch v17, :pswitch_data_5d2

    move-wide/from16 v24, v14

    :try_start_2c4
    new-instance v2, Ljava/lang/StringBuilder;
    :try_end_2c6
    .catchall {:try_start_2c4 .. :try_end_2c6} :catchall_322

    goto :goto_308

    :pswitch_2c7
    const/4 v6, 0x2

    goto :goto_2cb

    :pswitch_2c9
    const/4 v6, 0x1

    nop

    :goto_2cb
    move v12, v6

    const-wide/16 v2, 0x0

    :try_start_2ce
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_2fc

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_2d4
    .catchall {:try_start_2ce .. :try_end_2d4} :catchall_302

    move/from16 v9, v23

    move/from16 v11, v22

    move/from16 v13, v18

    move-wide/from16 v24, v14

    move-object v14, v5

    :try_start_2dd
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v9, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v11, v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v11, ""

    invoke-virtual {v6, v9, v11, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_2f6
    .catchall {:try_start_2dd .. :try_end_2f6} :catchall_2f7

    goto :goto_2fe

    :catchall_2f7
    move-exception v0

    move-wide/from16 v11, v24

    goto/16 :goto_507

    :cond_2fc
    move-wide/from16 v24, v14

    :goto_2fe
    move-wide/from16 v11, v24

    goto/16 :goto_38d

    :catchall_302
    move-exception v0

    move-wide v11, v14

    move-object/from16 v6, p1

    goto/16 :goto_59c

    :goto_308
    :try_start_308
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_31c
    .catchall {:try_start_308 .. :try_end_31c} :catchall_322

    move-wide/from16 v11, v24

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_322
    move-exception v0

    move-wide/from16 v11, v24

    move-object/from16 v6, p1

    goto/16 :goto_59c

    :goto_329
    :try_start_329
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid power role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_33d
    .catchall {:try_start_329 .. :try_end_33d} :catchall_506

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_341
    :try_start_341
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_355
    .catchall {:try_start_341 .. :try_end_355} :catchall_506

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_359
    move-wide v11, v14

    move-wide/from16 v2, v20

    :try_start_35c
    const-string v7, "disconnect-port"

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_391

    array-length v7, v4

    if-ne v7, v6, :cond_391

    const/4 v6, 0x1

    aget-object v6, v4, v6

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_38c

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    invoke-direct {v9, v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_38c
    nop

    :cond_38d
    :goto_38d
    move-object/from16 v6, p1

    goto/16 :goto_592

    :cond_391
    const-string/jumbo v7, "remove-port"

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c3

    array-length v7, v4

    if-ne v7, v6, :cond_3c3

    const/4 v6, 0x1

    aget-object v6, v4, v6

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_3c2

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v9, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v10, "  "

    invoke-direct {v9, v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_3c2
    goto :goto_38d

    :cond_3c3
    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f3

    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3f3

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_38d

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6, v5}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_38d

    :cond_3f3
    const-string/jumbo v6, "ports"

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41c

    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_41c

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_38d

    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_38d

    :cond_41c
    const-string v2, "dump-descriptors"

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42e

    iget-object v2, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_38d

    :cond_42e
    const-string v2, "Dump current USB state or issue command:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  ports"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  disconnect-port <id>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  remove-port <id>"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB type C port role switch:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb ports"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB device-only port:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb reset"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v2, "Example USB device descriptors:"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_38d

    :catchall_4f1
    move-exception v0

    move-wide v11, v14

    move-object v6, v2

    goto/16 :goto_59c

    :cond_4f6
    move-wide v11, v14

    :goto_4f7
    if-eqz v16, :cond_50b

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/proto/ProtoOutputStream;
    :try_end_4fd
    .catchall {:try_start_35c .. :try_end_4fd} :catchall_506

    move-object/from16 v6, p1

    :try_start_4ff
    invoke-direct {v3, v6}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_51e

    :catchall_506
    move-exception v0

    :goto_507
    move-object/from16 v6, p1

    goto/16 :goto_59c

    :cond_50b
    move-object/from16 v6, p1

    const-string v2, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v3, v5, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_51e
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_52e

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v7, "device_manager"

    const-wide v8, 0x10b00000001L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_52e
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v3, :cond_53e

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string v7, "host_manager"

    const-wide v8, 0x10b00000002L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_53e
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_54f

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v7, "port_manager"

    const-wide v8, 0x10b00000003L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    :cond_54f
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v7, "alsa_manager"

    const-wide v8, 0x10b00000004L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    if-nez v16, :cond_581

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v3, :cond_566

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v3, v6, v5}, Lcom/android/server/usb/UsbHostRestrictor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_566
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz v3, :cond_56f

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/usb/UsbMonitorImpl;->dump(Ljava/io/PrintWriter;)V

    :cond_56f
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    if-eqz v3, :cond_578

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mDexObserver:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-virtual {v3, v5}, Lcom/android/server/utils/sysfwutil/DexObserver;->dump(Ljava/io/PrintWriter;)V

    :cond_578
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    if-eqz v3, :cond_581

    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mUsbNotificationHandler:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-virtual {v3, v6, v5}, Lcom/android/server/usb/UsbNotificationHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    :cond_581
    iget-object v3, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v7, "settings_manager"

    const-wide v8, 0x10b00000005L

    invoke-virtual {v3, v2, v7, v8, v9}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_591
    .catchall {:try_start_4ff .. :try_end_591} :catchall_597

    nop

    :goto_592
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_597
    move-exception v0

    goto :goto_59c

    :catchall_599
    move-exception v0

    move-object v6, v2

    move-wide v11, v14

    :goto_59c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    nop

    :pswitch_data_5a2
    .packed-switch 0x0
        :pswitch_a6
        :pswitch_a4
        :pswitch_a2
    .end packed-switch

    :pswitch_data_5ac
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_e5
        :pswitch_e3
    .end packed-switch

    :pswitch_data_5b6
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_1a4
        :pswitch_1a2
        :pswitch_1a0
    .end packed-switch

    :pswitch_data_5c2
    .packed-switch 0x0
        :pswitch_23a
        :pswitch_238
    .end packed-switch

    :pswitch_data_5ca
    .packed-switch 0x0
        :pswitch_281
        :pswitch_27f
    .end packed-switch

    :pswitch_data_5d2
    .packed-switch 0x0
        :pswitch_2c9
        :pswitch_2c7
    .end packed-switch
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    :cond_15
    return-object v1
.end method

.method public getCurrentFunctions()J
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    :cond_12
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 6

    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_12
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    nop

    :cond_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_c
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_17

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1b

    nop

    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getScreenUnlockedFunctions()J
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isSupportDexRestrict()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    move-result v0

    return v0

    :cond_b
    const-string v0, "UsbService"

    const-string v1, "UsbService mHostRestrictor is NULL, so return false as a default value"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isUsb30Available()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    return v1
.end method

.method public isUsb30Enabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onUnlockUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    :cond_9
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_4f

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_27
    const-string v4, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user is not active."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_4f

    :catchall_4c
    move-exception v1

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_15 .. :try_end_4e} :catchall_4c

    throw v1

    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    return-object v1

    :cond_b
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_54

    :try_start_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, p1, v5, p2, v6}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, v4

    goto :goto_54

    :cond_2e
    const-string v4, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user is not active."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catchall_52
    move-exception v2

    goto :goto_56

    :cond_54
    :goto_54
    monitor-exit v1

    goto :goto_58

    :goto_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_14 .. :try_end_57} :catchall_52

    throw v2

    :cond_58
    :goto_58
    return-object v0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public restrictUsbHostInterface(ZLjava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v0, :cond_29

    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictUsbHostInterface : change bRestrictHostAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->bRestrictHostAPI:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p1, p2}, Lcom/android/server/usb/UsbHostRestrictor;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result v0

    return v0

    :cond_29
    const-string v0, "UsbService"

    const-string v1, "UsbService mHostRestrictor is NULL, so return false as a default value"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public semGetUsbDebugState()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string v0, "UsbService"

    const-string/jumbo v2, "semGetUsbDebugState--, managers are null"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_e
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "UsbService"

    const-string/jumbo v2, "semGetUsbDebugState--, no permissions"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1d
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->semGetUsbDebugState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGrantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbService;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public semSetDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbService;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    return-void
.end method

.method public semSetMode(I)V
    .registers 7

    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetMode++, not imlpemtentd yet mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-nez v0, :cond_20

    goto :goto_7b

    :cond_20
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "UsbService"

    const-string/jumbo v1, "semSetMode--, no permissions"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    new-instance v0, Lcom/android/server/usb/SemUsbBackend;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usb/SemUsbBackend;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbDeviceManager;)V

    const-string v1, "UsbService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetMode: backend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    invoke-virtual {v0}, Lcom/android/server/usb/SemUsbBackend;->getCurrentMode()I

    move-result v1

    const-string v2, "UsbService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semSetMode: currentUsbMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/server/usb/SemUsbBackend;->setMode(I)V

    const-string v2, "UsbService"

    const-string/jumbo v3, "semSetMode--"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7b
    :goto_7b
    const-string v0, "UsbService"

    const-string/jumbo v1, "semSetMode--, managers are null"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public semSetUsbDebug(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "UsbService"

    const-string v2, " semSetUsbDebug--, managers are null"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_d
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "UsbService"

    const-string v2, " semSetUsbDebug--, no permissions"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->semSetUsbDebug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    return-void
.end method

.method public setCurrentFunctions(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 8

    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    :cond_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public setUsb30Mode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    :cond_1c
    monitor-exit v0

    return-void

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public systemReady()V
    .registers 3

    const-string v0, "UsbService"

    const-string v1, "!@UsbService:systemReady()"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    :cond_15
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    :cond_1e
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    :cond_27
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbMonitorImpl;->systemReady()V

    :cond_30
    return-void
.end method
