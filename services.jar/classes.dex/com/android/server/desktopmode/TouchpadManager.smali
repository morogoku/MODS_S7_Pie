.class Lcom/android/server/desktopmode/TouchpadManager;
.super Ljava/lang/Object;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/TouchpadManager$StateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInternalUiCallback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

.field private mIsInitialSPenDetected:Z

.field private mIsSPenDetached:Z

.field private mIsSPenEnabled:Z

.field private mIsTouchpadEnabled:Z

.field private final mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private final mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z

    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/TouchpadManager$1;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$2;

    const-string/jumbo v1, "spen_enabled"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/TouchpadManager$2;-><init>(Lcom/android/server/desktopmode/TouchpadManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/TouchpadManager$3;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/TouchpadManager$4;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$StateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/TouchpadManager$StateListener;-><init>(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/TouchpadManager$1;)V

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    iput-object p3, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/desktopmode/TouchpadManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpad(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->updateTouchpadAvailability(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/SettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/TouchpadManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/desktopmode/TouchpadManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/desktopmode/TouchpadManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/TouchpadManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/desktopmode/TouchpadManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/desktopmode/TouchpadManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/TouchpadManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/TouchpadManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateInitialSPenSetting()V

    return-void
.end method

.method private isTouchpadAvailable(Lcom/android/server/desktopmode/State;)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    const/4 v2, 0x4

    const/16 v3, 0x66

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    nop

    :cond_16
    return v1
.end method

.method private updateInitialSPenSetting()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateInitialSPenSetting()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->notifyInitialSPenDetected(Z)V

    return-void
.end method

.method private updateSPenState()V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSPenState()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    if-eqz v1, :cond_24

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    iget-boolean v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    if-eq v2, v1, :cond_59

    iput-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/server/desktopmode/TouchpadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsSPenEnabled= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_enabled"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v2, v1}, Lcom/android/server/desktopmode/IStateManager;->notifySPenEnabled(Z)V

    :cond_59
    return-void
.end method

.method private updateTouchpad(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0, p1}, Lcom/android/server/desktopmode/IStateManager;->setTouchpadEnabled(Z)V

    return-void
.end method

.method private updateTouchpadAvailability(Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->setTouchpadAvailable(Z)V

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mIsInitialSPenDetected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsInitialSPenDetected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsSPenDetached"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsSPenEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsTouchpadEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getInternalUiCallback()Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/UiManager$InternalUiCallback;

    return-object v0
.end method

.method isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/desktopmode/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    nop

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isCoverSupportStatePartial()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method
