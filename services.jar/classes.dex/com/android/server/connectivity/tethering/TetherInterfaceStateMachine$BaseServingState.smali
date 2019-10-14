.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseServingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv4()Z
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/16 v1, 0xa

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_35

    nop

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv6()Z
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Failed to startIPv6"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_34
    return-void

    :catch_35
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x6

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    return-void
.end method

.method public exit()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1300(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    :try_start_5
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_36

    :catch_15
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x7

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_36
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv4()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1400(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V
    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50071

    if-eq v0, v1, :cond_7d

    const v1, 0x50078

    if-eq v0, v1, :cond_55

    packed-switch v0, :pswitch_data_8e

    packed-switch v0, :pswitch_data_96

    const/4 v0, 0x0

    return v0

    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x5

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_8c

    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    const-string v0, "TetherInterfaceSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethered (ifdown)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_55
    :pswitch_55
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    const-string v0, "TetherInterfaceSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethered (unrequested)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    :cond_7d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    nop

    :goto_8c
    const/4 v0, 0x1

    return v0

    :pswitch_data_8e
    .packed-switch 0x50067
        :pswitch_55
        :pswitch_2d
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x5006b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method
