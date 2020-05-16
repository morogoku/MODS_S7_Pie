.class public Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;
.super Ljava/lang/Object;
.source "StatusBarNavBarFeature.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private mAddNavigationBarViewRunnable:Ljava/lang/Runnable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContext:Landroid/content/Context;

.field private mCurrentImmersiveSaveState:Z

.field private final mDeviceProvisionedAndUserSetupObsever:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mHandler:Landroid/os/Handler;

.field private mIsAttApp:Z

.field private mIsServiceBoxFullPageSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStatusBarFocused:Z

.field private mIsUltraPowerSaving:Z

.field private mKnoxNavbarHiddenChanged:Z

.field private final mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mLastMobileKeyboardCovered:I

.field private mLastPinButtonShow:Z

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

.field private mNavbarSettingsHelper:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

.field private mNavigationBarBackupView:Landroid/view/View;

.field private mNavigationBarShouldAdd:Z

.field private mRestartButtonData:Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenTurnedOff:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSetup:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/WindowManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsStatusBarFocused:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mCurrentImmersiveSaveState:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsUltraPowerSaving:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxNavbarHiddenChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsAttApp:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$1;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$2;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedAndUserSetupObsever:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$3;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$5;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$6;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$7;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mAddNavigationBarViewRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature$8;-><init>(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavbarSettingsHelper:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mRestartButtonData:Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxNavbarHiddenChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavbarSettingsHelper:Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarBackupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarBackupView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private switchSetupWizardNavigationBar()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsAttApp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBar()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarWindow()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFragmentListener()Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->checkNavigationBarType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->switchNavigationBar(Landroid/view/View;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addNavigationBar()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInGearVrDocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMirrorLinkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mAddNavigationBarViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkNavigationBarType()I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsAttApp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    nop

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v1
.end method

.method public controlNavigationBar(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->forceShowNavigationBarWindow(ZJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->forceShowNavigationBarWindow(ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, " StatusBarNavBarFeature:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, " NAVBAR KNOX HIDDEN CHANGED:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKnoxNavbarHiddenChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxNavbarHiddenChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_DYNAMIC_ADD_REMOVE:Z

    if-eqz v0, :cond_1

    const-string v0, " NAVBAR DYNAMIC ADD REMOVE:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNavigationBarShouldAdd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    return-void
.end method

.method public forceShowNavigationBarWindow(ZJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "StatusBarNavBarFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceShowNavigationBarWindow() mIsNavigationBarShowingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", show : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mNavigationBarShouldAdd:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mAddNavigationBarViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mAddNavigationBarViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public getKnoxNavbarHiddenChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxNavbarHiddenChanged:Z

    return v0
.end method

.method public getLastPinbuttonShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLastPinButtonShow:Z

    return v0
.end method

.method public getRestartData(Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mRestartButtonData:Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->mTaskId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mRestartButtonData:Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->mIsDisplayCompatTask:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mRestartButtonData:Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->mShow:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->setData(IZZ)V

    return-void
.end method

.method public isStatusBarFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsStatusBarFocused:Z

    return v0
.end method

.method public isUserSetup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mUserSetup:Z

    return v0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLastMobileKeyboardCovered:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v0, :cond_5

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SWITCH_POSITION:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "navigationbar_key_order"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLastMobileKeyboardCovered:I

    :cond_6
    return-void
.end method

.method public onWindowFocusChanged(ZI)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsServiceBoxFullPageSupplier:Ljava/util/function/Supplier;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsServiceBoxFullPageSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v4, "StatusBarNavBarFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWindowFocusChanged() gainFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mScreenTurnedOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mScreenTurnedOff:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isServiceBoxFullPage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isBouncerShowing()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsStatusBarFocused:Z

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    nop

    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePinButtonVisibility()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setBarState(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->switchSetupWizardNavigationBar()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setStatusBarState(I)V

    :cond_3
    return-void
.end method

.method public setForceImmersiveBtnVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLastPinButtonShow:Z

    return-void
.end method

.method public setIsServiceBoxFullPageSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mIsServiceBoxFullPageSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public setRestartData(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mRestartButtonData:Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/feature/RestartButtonData;->setData(IZZ)V

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_SETUP_WIZARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->switchSetupWizardNavigationBar()V

    :cond_0
    return-void
.end method

.method public setupNavbarFeature()V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.mirrorlink.ML_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mMirrorLinkReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.mirrorlink.android.service.TMS_SERVICE_PERMISSION"

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedAndUserSetupObsever:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mDeviceProvisionedAndUserSetupObsever:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public updateNavigationBarHidden()V
    .locals 5

    :try_start_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isNavigationBarHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxNavbarHiddenChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "StatusBarNavBarFeature"

    const-string v2, "Visibility of NavigationBar is GONE by Knox"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mKnoxNavbarHiddenChanged:Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "StatusBarNavBarFeature"

    const-string v2, "Visibility of NavigationBar is VISIBLE by Knox"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "StatusBarNavBarFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed Applying policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateRestartButton(IZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "StatusBarNavBarFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRestartButton() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isDisplayCompatTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->setRestartData(IZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRestartButton(IZZ)V

    :cond_0
    return-void
.end method
