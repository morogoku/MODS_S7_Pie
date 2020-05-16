.class abstract Lcom/android/server/desktopmode/ModeChanger;
.super Ljava/lang/Object;
.source "ModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    }
.end annotation


# static fields
.field static final CONFIGURATION_DISABLED:I = 0x0

.field static final CONFIGURATION_ENABLED:I = 0x1

.field static final CONFIGURATION_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field final mContext:Landroid/content/Context;

.field mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field mHandler:Landroid/os/Handler;

.field mIsLockTaskModeEnabledAndSecured:Z

.field mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

.field final mResolver:Landroid/content/ContentResolver;

.field final mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field final mService:Lcom/android/server/desktopmode/ModeChangerService;

.field mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field mUiManager:Lcom/android/server/desktopmode/UiManager;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/ModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    iput-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mService:Lcom/android/server/desktopmode/ModeChangerService;

    iput-object p3, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iput-object p4, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    return-void
.end method

.method private isKnoxLauncherMode(Lcom/android/server/desktopmode/State;)Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.android.internal.app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isKnoxLauncherMode()=true"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const/4 v2, 0x1

    return v2

    :cond_39
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isInLockTaskMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lock_to_app_exit_locked"

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    nop

    :cond_1e
    iput-boolean v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    return-void
.end method

.method clearNotifications()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    return-void
.end method

.method clearSettingsBadgeCount()V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string v1, "clearSettingsBadgeCount()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "badge_for_dex"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method varargs dismissDialog([I)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method getHdmiSettings()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/SettingsHelper;->getHdmiSettings()I

    move-result v0

    return v0
.end method

.method isLockTaskModeEnabledAndSecured()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    return v0
.end method

.method abstract setDesktopModeState(II)V
.end method

.method setDesktopModeToSurfaceFlinger(Z)V
    .registers 7

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0x44f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_28

    :catch_1f
    move-exception v1

    sget-object v2, Lcom/android/server/desktopmode/ModeChanger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to set desktop mode for SF"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_28
    :goto_28
    nop

    :goto_29
    return-void
.end method

.method setHdmiSettings(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "hdmi_mode"

    nop

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method varargs setSystemServices([Ljava/lang/Object;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getService()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto :goto_59

    :cond_56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    :cond_59
    :goto_59
    array-length v0, p1

    :goto_5a
    if-ge v1, v0, :cond_7e

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/android/server/desktopmode/UiManager;

    if-eqz v3, :cond_68

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/UiManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    goto :goto_7b

    :cond_68
    instance-of v3, v2, Lcom/android/server/desktopmode/SettingsHelper;

    if-eqz v3, :cond_72

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper;

    iput-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    goto :goto_7b

    :cond_72
    instance-of v3, v2, Lcom/android/server/desktopmode/MultiResolutionManager;

    if-eqz v3, :cond_7b

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/MultiResolutionManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_7e
    return-void
.end method

.method switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->isKnoxLauncherMode(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "android.intent.extra.user_handle"

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_23
    return-void
.end method
