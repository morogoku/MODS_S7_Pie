.class Lcom/att/iqi/IQIConcierge$1;
.super Ljava/lang/Object;
.source "IQIConcierge.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIConcierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIConcierge;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIConcierge;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIConcierge$1;->this$0:Lcom/att/iqi/IQIConcierge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .registers 4

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/att/iqi/IQIConcierge$1;->this$0:Lcom/att/iqi/IQIConcierge;

    # getter for: Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;
    invoke-static {v0}, Lcom/att/iqi/IQIConcierge;->access$000(Lcom/att/iqi/IQIConcierge;)Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge$1;->this$0:Lcom/att/iqi/IQIConcierge;

    # invokes: Lcom/att/iqi/IQIConcierge;->startMetricReceiver()V
    invoke-static {v0}, Lcom/att/iqi/IQIConcierge;->access$100(Lcom/att/iqi/IQIConcierge;)V

    goto :goto_2f

    :cond_2a
    iget-object v0, p0, Lcom/att/iqi/IQIConcierge$1;->this$0:Lcom/att/iqi/IQIConcierge;

    # invokes: Lcom/att/iqi/IQIConcierge;->stopMetricReceiver()V
    invoke-static {v0}, Lcom/att/iqi/IQIConcierge;->access$200(Lcom/att/iqi/IQIConcierge;)V

    :cond_2f
    :goto_2f
    return-void
.end method
