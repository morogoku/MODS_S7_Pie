.class Lcom/att/iqi/GenOS09$1;
.super Ljava/lang/Object;
.source "GenOS09.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/GenOS09;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/GenOS09;


# direct methods
.method constructor <init>(Lcom/att/iqi/GenOS09;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/GenOS09$1;->this$0:Lcom/att/iqi/GenOS09;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "OS09 query"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/att/iqi/GenOS09$1;->this$0:Lcom/att/iqi/GenOS09;

    # getter for: Lcom/att/iqi/GenOS09;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/att/iqi/GenOS09;->access$100(Lcom/att/iqi/GenOS09;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/att/iqi/GenOS09$1;->this$0:Lcom/att/iqi/GenOS09;

    # getter for: Lcom/att/iqi/GenOS09;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/att/iqi/GenOS09;->access$100(Lcom/att/iqi/GenOS09;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/GenOS09$1;->this$0:Lcom/att/iqi/GenOS09;

    # getter for: Lcom/att/iqi/GenOS09;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/att/iqi/GenOS09;->access$100(Lcom/att/iqi/GenOS09;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    return-void
.end method
