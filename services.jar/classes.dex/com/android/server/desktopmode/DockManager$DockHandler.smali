.class final Lcom/android/server/desktopmode/DockManager$DockHandler;
.super Landroid/os/Handler;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DockManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x96

    if-eq v1, v2, :cond_32b

    const/16 v2, 0xdd

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_28e

    const/16 v2, 0xe7

    if-eq v1, v2, :cond_24b

    const/16 v2, 0x64

    packed-switch v1, :pswitch_data_340

    const/16 v2, 0x65

    packed-switch v1, :pswitch_data_34c

    goto/16 :goto_33e

    :pswitch_26
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_4a

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE onChargingModeUpdated, fastCharging="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v1, :cond_6d

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const/4 v3, 0x3

    const-string v4, "controllib"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo v3, "fast_charging_using"

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    goto/16 :goto_33e

    :cond_6d
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string v4, "controllib"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$400(Lcom/android/server/desktopmode/DockManager;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$500(Lcom/android/server/desktopmode/DockManager;)V

    goto/16 :goto_33e

    :pswitch_80
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v7, :cond_c5

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO onConnectedPowerChargerInfoUpdated, power="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " previous power="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I
    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " support="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mAdaptiveFastChargingSettingsEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z
    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->access$1800(Lcom/android/server/desktopmode/DockManager;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    iget-object v7, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v7}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isWiredFastCharging()Z

    move-result v2

    const/4 v7, 0x2

    if-nez v2, :cond_10c

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mAdaptiveFastChargingSettingsEnabled:Z
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1800(Lcom/android/server/desktopmode/DockManager;)Z

    move-result v2

    if-eqz v2, :cond_10c

    if-ne v5, v7, :cond_ff

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    goto :goto_10c

    :cond_ff
    if-eq v5, v4, :cond_103

    if-nez v5, :cond_10c

    :cond_103
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_10c
    :goto_10c
    if-eqz v1, :cond_116

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v2

    if-eq v1, v2, :cond_163

    :cond_116
    const/16 v2, 0xf

    if-ge v1, v2, :cond_143

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I
    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v3

    if-eqz v3, :cond_12a

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I
    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v3

    if-lt v3, v2, :cond_163

    :cond_12a
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_138

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateDockLowChargerPower true"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    const/4 v6, 0x1

    goto :goto_163

    :cond_143
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I
    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1700(Lcom/android/server/desktopmode/DockManager;)I

    move-result v3

    if-ge v3, v2, :cond_163

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_159

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateDockLowChargerPower false"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_159
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$700(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/android/server/desktopmode/IStateManager;->setDockLowChargerState(I)V

    const/4 v6, 0x1

    :cond_163
    :goto_163
    if-eqz v6, :cond_33e

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # setter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1702(Lcom/android/server/desktopmode/DockManager;I)I

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # setter for: Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I
    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DockManager;->access$1902(Lcom/android/server/desktopmode/DockManager;I)I

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string/jumbo v3, "dockLowChargerPowerUpdated"

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DockManager;->requestUpdateDockLibStatus(Ljava/lang/String;)V

    goto/16 :goto_33e

    :pswitch_179
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_19d

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DOCK_FAST_CHARGING_REQUEST_DESTROY dockType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19d
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->destroyDockControlLib(I)V
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1300(Lcom/android/server/desktopmode/DockManager;I)V

    goto/16 :goto_33e

    :pswitch_1a4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_1c8

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE setFastChargingEnable, enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v3

    if-eqz v3, :cond_33e

    :try_start_1d0
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->setFastChargingEnable(Z)V
    :try_end_1e8
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_1d0 .. :try_end_1e8} :catch_1e9

    goto :goto_1ed

    :catch_1e9
    move-exception v2

    invoke-virtual {v2}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->printStackTrace()V

    :goto_1ed
    goto/16 :goto_33e

    :pswitch_1ef
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1fc

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO requestConnectedPowerChargerInfoUpdate"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fc
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v1

    if-eqz v1, :cond_33e

    :try_start_204
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->access$1400(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->requestConnectedPowerChargerInfoUpdate()V
    :try_end_219
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_204 .. :try_end_219} :catch_21a

    goto :goto_21e

    :catch_21a
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->printStackTrace()V

    :goto_21e
    goto/16 :goto_33e

    :pswitch_220
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_244

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DOCK_FAST_CHARGING_REQUEST_CREATE dockType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_244
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->createDockControlLib(I)V
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1200(Lcom/android/server/desktopmode/DockManager;I)V

    goto/16 :goto_33e

    :cond_24b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_26b

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED onDSVersionUpdated, version="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26b
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v2

    const/16 v3, 0x67

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v5, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v1, :cond_280

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # setter for: Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DockManager;->access$1602(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_287

    :cond_280
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    const-string v3, "####"

    # setter for: Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DockManager;->access$1602(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_287
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateDockVersionToSettings(Z)V
    invoke-static {v2, v4}, Lcom/android/server/desktopmode/DockManager;->access$000(Lcom/android/server/desktopmode/DockManager;Z)V

    goto/16 :goto_33e

    :cond_28e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_2b6

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOCK_FAST_CHARGING_ERROR onError, error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b6
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v2

    const/16 v5, 0x66

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    const/4 v2, -0x5

    if-lt v1, v2, :cond_2d3

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_2d3
    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_2e2
    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_319

    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;
    invoke-static {v4}, Lcom/android/server/desktopmode/DockManager;->access$2000(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e2

    :cond_319
    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # getter for: Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$DockMsgState;
    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->access$1500(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v3

    const/16 v4, 0x68

    const/16 v5, 0xf1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    goto :goto_33e

    :cond_32b
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_338

    # getter for: Lcom/android/server/desktopmode/DockManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSG_DOCK_REQUEST_UPDATE_DOCK_LIB_STATUS"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_338
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    # invokes: Lcom/android/server/desktopmode/DockManager;->updateDockLibStatus(Lcom/android/server/desktopmode/State;)V
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DockManager;->access$1100(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/State;)V

    nop

    :cond_33e
    :goto_33e
    return-void

    nop

    :pswitch_data_340
    .packed-switch 0xc9
        :pswitch_220
        :pswitch_1ef
        :pswitch_1a4
        :pswitch_179
    .end packed-switch

    :pswitch_data_34c
    .packed-switch 0xd3
        :pswitch_80
        :pswitch_26
    .end packed-switch
.end method
