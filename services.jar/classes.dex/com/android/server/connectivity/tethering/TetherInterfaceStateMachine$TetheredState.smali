.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;
.super Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method

.method private cleanupUpstream()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    iget-object v0, v0, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_15

    :cond_25
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1702(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    return-void
.end method

.method private cleanupUpstreamInterface(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_25

    :catch_a
    move-exception v0

    const-string v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in forceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    goto :goto_50

    :catch_35
    move-exception v0

    const-string v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in removeInterfaceForward: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    :try_start_50
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5f} :catch_60

    goto :goto_7b

    :catch_60
    move-exception v0

    const-string v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in disableNat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-void
.end method

.method private noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/util/InterfaceSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_1a
    return-object v0
.end method

.method private upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public enter()V
    .registers 4

    invoke-super {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->enter()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_16
    const-string v0, "TetherInterfaceSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tethered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    return-void
.end method

.method public exit()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    invoke-super {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->exit()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10

    invoke-super {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V
    invoke-static {v0, p0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_ba

    const v2, 0x50070

    if-eq v0, v2, :cond_1d

    const/4 v0, 0x0

    return v0

    :cond_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/util/InterfaceSet;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "TetherInterfaceSM"

    const-string v3, "Connection changed noop - dropping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    :cond_30
    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    goto/16 :goto_c6

    :cond_37
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_3f

    :cond_4f
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;
    invoke-static {v3, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1702(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_68
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_86} :catch_88

    nop

    goto :goto_5c

    :catch_88
    move-exception v3

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v5}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception enabling NAT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/16 v6, 0x8

    # setter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I
    invoke-static {v5, v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    :cond_b9
    goto :goto_c6

    :cond_ba
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    # getter for: Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v2, "CMD_TETHER_REQUESTED while already tethering."

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    nop

    :goto_c6
    return v1
.end method
