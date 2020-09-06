.class Lcom/android/server/desktopmode/DualModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;,
        Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;,
        Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;
    }
.end annotation


# static fields
.field private static final MSG_START_LOADING_SCREEN:I = 0x1

.field private static final MSG_STOP_LOADING_SCREEN:I = 0x2

.field private static final MSG_UNREGISTER_STATELISTENER:I = 0x3

.field private static final REASON_LOADING_SCREEN_TIMEOUT:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_CPU_BOOST:I = 0x2710

.field private static final TIMEOUT_LOADING_SCREEN:I = 0x2710


# instance fields
.field private mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field private mDesktopDisplayContext:Landroid/content/Context;

.field private mDesktopDisplayId:I

.field private mDualModeEnabled:Z

.field private mLoadingScreenAnimationComplete:Z

.field private mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field private mPrevDesktopDisplayId:I

.field private mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

.field private mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTopStackId:I

.field private mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field private mWallpaperShown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/ModeChangerService;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;)Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/DualModeChanger;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/desktopmode/DualModeChanger;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/desktopmode/DualModeChanger;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/desktopmode/DualModeChanger;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->collapsePanelsToDisplay(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/desktopmode/DualModeChanger;)Lcom/android/server/desktopmode/TouchpadManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->showInitialSPenDialog(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/desktopmode/DualModeChanger;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/DualModeChanger;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->handleStopLoadingScreen(ZI)V

    return-void
.end method

.method private collapsePanelsToDisplay(I)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/DualModeChanger;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_f

    nop

    if-nez p1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    :goto_c
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string v2, "collapsePanelsToDisplay failed."

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDesktopDisplayConfigured(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_a1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1a

    goto/16 :goto_a1

    :cond_1a
    const/4 v2, 0x1

    if-eqz p1, :cond_22

    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_28

    :cond_22
    if-nez p1, :cond_a0

    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v3, v2, :cond_a0

    :cond_28
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_4b

    sget-object v3, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDesktopDisplayConfigured(), added="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", desktopModeState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz p1, :cond_53

    move v5, v3

    goto :goto_54

    :cond_53
    move v5, v4

    :goto_54
    const/16 v6, 0x28

    invoke-virtual {p0, v5, v6}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    if-eqz p1, :cond_6b

    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v2

    goto :goto_82

    :cond_6b
    iget-object v5, p0, Lcom/android/server/desktopmode/DualModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v6, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->clearHomeStack(I)V

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->clearLaunchPolicyDatabaseCache()V

    iget-object v5, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    :cond_7e
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    iput-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    :cond_82
    :goto_82
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v5

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/android/server/desktopmode/SettingsHelper;->backupOrRestoreSettings(ZII)V

    if-eqz p1, :cond_92

    goto :goto_93

    :cond_92
    move v3, v4

    :goto_93
    const/16 v2, 0x32

    invoke-virtual {p0, v3, v2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeOnConfigurationChanged(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    :cond_a0
    return-void

    :cond_a1
    :goto_a1
    return-void
.end method

.method private handleStartLoadingScreen(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting loading screen... enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x67

    const/16 v2, 0x70

    new-instance v3, Lcom/android/server/desktopmode/DualModeChanger$2;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/DualModeChanger$2;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->showPresentation(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_2a
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeStartLoadingScreen(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeInternal(Z)V

    return-void
.end method

.method private handleStopLoadingScreen(ZI)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_28

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_23

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading screen timeout! enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    :cond_28
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v2, 0x32

    if-eq v1, v2, :cond_59

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_58

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop loading screen. onDesktopDisplayConfigured() is not called! enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    :cond_59
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_73

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping loading screen... enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    if-eqz p1, :cond_7f

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    iget v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ActivityManagerInternal;->bringStackToForeground(III)V

    :cond_7f
    const-string/jumbo v1, "dex_enabled_font"

    invoke-static {v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSystemProperties(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v2, 0x67

    const/16 v3, 0x6e

    invoke-virtual {v1, v2, v3}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    if-eqz p1, :cond_93

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V

    :cond_93
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setModeChangeLock(Z)V

    if-eqz p1, :cond_9b

    const/4 v2, 0x4

    goto :goto_9c

    :cond_9b
    const/4 v2, 0x2

    :goto_9c
    invoke-virtual {p0, v2, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    if-eqz p1, :cond_b4

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->getType()I

    move-result v2

    const/16 v3, 0x2715

    if-ne v2, v3, :cond_b4

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v3, 0xd2

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    :cond_b4
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v2, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeStopLoadingScreen(Z)V

    if-nez p1, :cond_d0

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->unregister()V
    invoke-static {v2}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->access$700(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d0
    if-eqz p1, :cond_eb

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_open_last_app"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    const v2, 0x104029e

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_e8
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->showUseGenuineAccessoriesNotificationIfNeeded(Lcom/android/server/desktopmode/State;)V

    :cond_eb
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mService:Lcom/android/server/desktopmode/ModeChangerService;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/ModeChangerService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method public static synthetic lambda$onDesktopDisplayConfigured$0(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->handleDesktopDisplayConfigured(Z)V

    return-void
.end method

.method private scheduleStartLoadingScreen(Z)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStartLoadingScreen(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->handleStartLoadingScreen(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleStopLoadingScreenIfPossible(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_41

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopLoadingScreenIfPossible(), enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWallpaperShown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLoadingScreenAnimationComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", desktopModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    if-eqz v1, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    if-eqz v1, :cond_6c

    const/4 v1, 0x2

    if-eqz p1, :cond_4e

    const/4 v2, 0x4

    goto :goto_4f

    :cond_4e
    move v2, v1

    :goto_4f
    const/16 v3, 0x32

    const/16 v4, 0x66

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_6c
    return-void
.end method

.method private setDesktopDisplayId(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    iput p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDesktopDisplayId(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    return-void
.end method

.method private setDesktopModeInternal(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeInternal(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->dismissDialog([I)V

    if-eqz p1, :cond_28

    const/4 v0, 0x3

    nop

    :cond_28
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeSetDesktopModeInternal(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/State;)V

    if-eqz p1, :cond_5a

    :try_start_3d
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->stopSystemLockTaskMode()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_47
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->setCurrentLaunchPolicyMode(Landroid/content/ContentResolver;I)V

    :cond_5a
    return-void
.end method

.method private setModeChangeLock(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setModeChangeLocked(Z)V

    return-void
.end method

.method private showDisplayUnsupportDialogIfNeeded(Lcom/android/server/desktopmode/State;)V
    .registers 8

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DisplayInfo;->getRealSize()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/16 v3, 0x280

    if-gt v2, v3, :cond_21

    iget v2, v1, Landroid/graphics/Point;->y:I

    const/16 v3, 0x1e0

    if-gt v2, v3, :cond_21

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_21
    return-void
.end method

.method private showInitialSPenDialog(Lcom/android/server/desktopmode/State;)V
    .registers 6

    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/State;)V

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :cond_16
    return-void
.end method

.method private showUseGenuineAccessoriesNotificationIfNeeded(Lcom/android/server/desktopmode/State;)V
    .registers 5

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isGenuine()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "use_genuine_accessories_notification_deleted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    :cond_1d
    return-void
.end method

.method private startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V
    .registers 7

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_23
    return-void
.end method

.method private startHome(Lcom/android/server/desktopmode/State;I)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHome(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getCurrentUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startSPenModeSettingActivity(Lcom/android/server/desktopmode/State;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.desktoplauncher"

    const-string v3, "com.android.launcher3.settings.SPenInputModePreferenceActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mDesktopDisplayId"

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDualModeEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mModeToModeChangeInfo"

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mPrevDesktopDisplayId"

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mTopStackId"

    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method onDesktopDisplayConfigured(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopDisplayConfigured(), added="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDesktopDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .registers 11

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopMode(), enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isModeChangeLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isModeChangeLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setModeChangeLock(Z)V

    iput-object p3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isAdapter()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v3}, Lcom/android/server/am/MultiWindowManagerService;->setMaxVisibleFreeformCountForDex(II)V

    goto :goto_44

    :cond_3f
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/am/MultiWindowManagerService;->setMaxVisibleFreeformCountForDex(II)V

    :goto_44
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz p3, :cond_55

    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v4

    if-ne v4, v1, :cond_55

    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getTopStackId()I

    move-result v4

    iput v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    goto :goto_6a

    :cond_55
    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p2, :cond_5b

    move v5, v3

    goto :goto_5d

    :cond_5b
    iget v5, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    :goto_5d
    invoke-virtual {v4, v5}, Landroid/app/ActivityManagerInternal;->getForegroundStackId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    if-eqz p3, :cond_6a

    iget v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    invoke-virtual {p3, v4}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->setTopStackId(I)V

    :cond_6a
    :goto_6a
    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_75

    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_75
    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v5, 0x137

    invoke-virtual {v4, v5}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    const/4 v4, 0x3

    if-eqz p2, :cond_81

    move v5, v4

    goto :goto_82

    :cond_81
    move v5, v0

    :goto_82
    const/16 v6, 0x14

    invoke-virtual {p0, v5, v6}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeToSurfaceFlinger(Z)V

    if-eqz p2, :cond_d1

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$1;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    # invokes: Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->register()V
    invoke-static {v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->access$100(Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    if-nez v1, :cond_b8

    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/DualModeChanger$1;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_b0

    sget-object v1, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mStateListener registered"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    invoke-interface {v1, v2}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    goto :goto_bd

    :cond_b8
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :goto_bd
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/State;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mContext:Landroid/content/Context;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModePolicyManager;->initLaunchPolicyDatabaseCache(Landroid/content/Context;I)V

    goto :goto_f0

    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->clearNotifications()V

    iget-object v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {v4}, Lcom/android/server/desktopmode/CoverStateManager;->goToSleepIfFlipTypeCoverClosed()V

    if-eqz p3, :cond_e1

    invoke-virtual {p3}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->getModeToMode()I

    move-result v4

    if-ne v4, v1, :cond_e8

    :cond_e1
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopStackId:I

    invoke-virtual {v1, v4, v3, v0}, Landroid/app/ActivityManagerInternal;->bringStackToForeground(III)V

    :cond_e8
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    :goto_f0
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    iput-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1, p2}, Lcom/android/server/desktopmode/IStateManager;->notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStartLoadingScreen(Z)V

    return-object p3
.end method

.method setDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/State;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-void
.end method

.method setDesktopModeState(II)V
    .registers 9

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    if-nez p2, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    invoke-direct {v0, p1, p2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    sget-object v3, Lcom/android/server/desktopmode/DualModeChanger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDesktopModeState(), newState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {v3, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    const/16 v3, 0x28

    if-ne p2, v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    const/4 v4, 0x4

    if-ne p1, v4, :cond_47

    const/4 v2, 0x1

    nop

    :cond_47
    invoke-virtual {v3, v2, v1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeChanged(ZI)V

    :cond_4a
    iget-object v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1, v0}, Lcom/android/server/desktopmode/IStateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    :cond_4f
    return-void
.end method

.method varargs setSystemServices([Ljava/lang/Object;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/desktopmode/ModeChanger;->setSystemServices([Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/android/server/desktopmode/CoverStateManager;

    if-eqz v3, :cond_13

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/CoverStateManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    goto :goto_1c

    :cond_13
    instance-of v3, v2, Lcom/android/server/desktopmode/TouchpadManager;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Lcom/android/server/desktopmode/TouchpadManager;

    iput-object v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method startHome(Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;I)V

    :cond_a
    return-void
.end method
