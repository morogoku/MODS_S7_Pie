.class Lcom/att/iqi/FilteredAppMetric$1;
.super Ljava/lang/Object;
.source "FilteredAppMetric.java"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/FilteredAppMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/FilteredAppMetric;


# direct methods
.method constructor <init>(Lcom/att/iqi/FilteredAppMetric;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/FilteredAppMetric$1;->this$0:Lcom/att/iqi/FilteredAppMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricSourcing(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric$1;->this$0:Lcom/att/iqi/FilteredAppMetric;

    const/4 v1, 0x0

    # setter for: Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z
    invoke-static {v0, v1}, Lcom/att/iqi/FilteredAppMetric;->access$002(Lcom/att/iqi/FilteredAppMetric;Z)Z

    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric$1;->this$0:Lcom/att/iqi/FilteredAppMetric;

    # invokes: Lcom/att/iqi/FilteredAppMetric;->extractString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/att/iqi/FilteredAppMetric;->access$100(Lcom/att/iqi/FilteredAppMetric;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metric UI46 has event with data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_28
    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric$1;->this$0:Lcom/att/iqi/FilteredAppMetric;

    const-string v2, "FILTER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    # setter for: Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z
    invoke-static {v1, v2}, Lcom/att/iqi/FilteredAppMetric;->access$002(Lcom/att/iqi/FilteredAppMetric;Z)Z

    :cond_33
    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric$1;->this$0:Lcom/att/iqi/FilteredAppMetric;

    # getter for: Lcom/att/iqi/FilteredAppMetric;->mFilteringEnabled:Z
    invoke-static {v1}, Lcom/att/iqi/FilteredAppMetric;->access$000(Lcom/att/iqi/FilteredAppMetric;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric$1;->this$0:Lcom/att/iqi/FilteredAppMetric;

    invoke-virtual {v1}, Lcom/att/iqi/FilteredAppMetric;->clear()V

    :cond_40
    return-void
.end method
