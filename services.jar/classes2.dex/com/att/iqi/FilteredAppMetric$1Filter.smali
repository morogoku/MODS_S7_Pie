.class Lcom/att/iqi/FilteredAppMetric$1Filter;
.super Ljava/lang/Object;
.source "FilteredAppMetric.java"

# interfaces
.implements Lcom/att/iqi/GenUI46$ForEachApplicationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/FilteredAppMetric;->submitComparableMetric()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Filter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/FilteredAppMetric;

.field final synthetic val$sortedMetrics:Ljava/util/TreeSet;


# direct methods
.method constructor <init>(Lcom/att/iqi/FilteredAppMetric;Ljava/util/TreeSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/att/iqi/FilteredAppMetric$1Filter;->this$0:Lcom/att/iqi/FilteredAppMetric;

    iput-object p2, p0, Lcom/att/iqi/FilteredAppMetric$1Filter;->val$sortedMetrics:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/att/iqi/ApplicationInformation;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/FilteredAppMetric$1Filter;->this$0:Lcom/att/iqi/FilteredAppMetric;

    # getter for: Lcom/att/iqi/FilteredAppMetric;->mCM:Lcom/att/iqi/ComparableUI46;
    invoke-static {v0}, Lcom/att/iqi/FilteredAppMetric;->access$200(Lcom/att/iqi/FilteredAppMetric;)Lcom/att/iqi/ComparableUI46;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/att/iqi/ComparableUI46;->newMetric(Lcom/att/iqi/ApplicationInformation;)Lcom/att/iqi/lib/Metric;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric$1Filter;->this$0:Lcom/att/iqi/FilteredAppMetric;

    # invokes: Lcom/att/iqi/FilteredAppMetric;->filterApplication(Lcom/att/iqi/ApplicationInformation;Lcom/att/iqi/lib/Metric;)Z
    invoke-static {v1, p1, v0}, Lcom/att/iqi/FilteredAppMetric;->access$300(Lcom/att/iqi/FilteredAppMetric;Lcom/att/iqi/ApplicationInformation;Lcom/att/iqi/lib/Metric;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/att/iqi/FilteredAppMetric$1Filter;->val$sortedMetrics:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    goto :goto_24

    :catch_18
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "UI46 onMetricQuery() error"

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    return-void
.end method
