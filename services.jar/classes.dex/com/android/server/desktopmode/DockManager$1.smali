.class Lcom/android/server/desktopmode/DockManager$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method onConfigurationChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->getUseDexMacAddress()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DockManager;->requestVirtualMacAddress(Z)V

    :cond_d
    return-void
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2d

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDockStateChanged n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getPreviousDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_4b
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->initialize()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$200(Lcom/android/server/desktopmode/DockManager;)V

    :cond_50
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo v1, "onDockStateChanged"

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    return-void
.end method

.method onDualModeConfigurationChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->getUseDexMacAddress()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DockManager;->requestVirtualMacAddress(Z)V

    :cond_d
    return-void
.end method

.method onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V
    .registers 4

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isRawDockUsbpdIdSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateDockVersionToSettings(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->access$000(Lcom/android/server/desktopmode/DockManager;Z)V

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateDockVersionToSettings(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->access$000(Lcom/android/server/desktopmode/DockManager;Z)V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo v1, "onDisplayChanged"

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    return-void
.end method

.method onWiredFastChargingChanged(Lcom/android/server/desktopmode/State;)V
    .registers 5

    # invokes: Lcom/android/server/desktopmode/DockManager;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->access$300(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWiredFastCharging()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v1, -0x1

    const-string v2, "batterymanager"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$400(Lcom/android/server/desktopmode/DockManager;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$1;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$500(Lcom/android/server/desktopmode/DockManager;)V

    return-void
.end method
