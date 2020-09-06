.class Lcom/att/iqi/WiFiReceiver$5;
.super Ljava/lang/Object;
.source "WiFiReceiver.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/WiFiReceiver;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/WiFiReceiver;


# direct methods
.method constructor <init>(Lcom/att/iqi/WiFiReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/WiFiReceiver$5;->this$0:Lcom/att/iqi/WiFiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "WL18 query"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver$5;->this$0:Lcom/att/iqi/WiFiReceiver;

    # invokes: Lcom/att/iqi/WiFiReceiver;->populateWL18()V
    invoke-static {v0}, Lcom/att/iqi/WiFiReceiver;->access$300(Lcom/att/iqi/WiFiReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver$5;->this$0:Lcom/att/iqi/WiFiReceiver;

    # getter for: Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;
    invoke-static {v0}, Lcom/att/iqi/WiFiReceiver;->access$500(Lcom/att/iqi/WiFiReceiver;)Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver$5;->this$0:Lcom/att/iqi/WiFiReceiver;

    # getter for: Lcom/att/iqi/WiFiReceiver;->mWL18:Lcom/att/iqi/lib/metrics/wl/WL18;
    invoke-static {v1}, Lcom/att/iqi/WiFiReceiver;->access$400(Lcom/att/iqi/WiFiReceiver;)Lcom/att/iqi/lib/metrics/wl/WL18;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    return-void
.end method
