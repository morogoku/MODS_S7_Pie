.class Lcom/android/server/connectivity/tethering/OffloadController$1;
.super Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/tethering/OffloadController;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/OffloadController;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/connectivity/tethering/OffloadController;->access$800(Lcom/android/server/connectivity/tethering/OffloadController;ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # getter for: Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStarted"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStoppedError()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # getter for: Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedError"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStoppedLimitReached()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # getter for: Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedLimitReached"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$700(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->forceTetherStatsPoll()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$300(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method public onStoppedUnsupported()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # getter for: Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onStoppedUnsupported"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForAllUpstreams()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$200(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->forceTetherStatsPoll()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$300(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method public onSupportAvailable()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # getter for: Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string/jumbo v1, "onSupportAvailable"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForAllUpstreams()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$200(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->forceTetherStatsPoll()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$300(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    sget-object v1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->access$400(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->pushAllDownstreamState()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$500(Lcom/android/server/connectivity/tethering/OffloadController;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$1;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->access$600(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z

    return-void
.end method
