.class Lcom/android/server/desktopmode/HardwareManager$5;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDualModeStopLoadingScreen(Z)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mIsExternalDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1100(Lcom/android/server/desktopmode/HardwareManager;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager;->access$200(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->logConnectedAccessoryInformation(Lcom/android/server/desktopmode/State;)V

    :cond_1d
    return-void
.end method

.method onStartLoadingScreen(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$900(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1000(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method

.method onStopLoadingScreen(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$900(Lcom/android/server/desktopmode/HardwareManager;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$5;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->access$1000(Lcom/android/server/desktopmode/HardwareManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method
