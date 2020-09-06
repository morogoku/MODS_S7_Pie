.class public Lcom/att/iqi/ComparableUI46;
.super Ljava/lang/Object;
.source "ComparableUI46.java"


# static fields
.field private static final mSort:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/att/iqi/lib/Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/att/iqi/ComparableUI46$1;

    invoke-direct {v0}, Lcom/att/iqi/ComparableUI46$1;-><init>()V

    sput-object v0, Lcom/att/iqi/ComparableUI46;->mSort:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricId()Lcom/att/iqi/lib/Metric$ID;
    .registers 2

    sget-object v0, Lcom/att/iqi/lib/metrics/ui/UI46;->ID:Lcom/att/iqi/lib/Metric$ID;

    return-object v0
.end method

.method public metricChanged(Lcom/att/iqi/lib/Metric;Lcom/att/iqi/lib/Metric;)Z
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/att/iqi/lib/metrics/ui/UI46;

    if-eqz v1, :cond_28

    instance-of v1, p2, Lcom/att/iqi/lib/metrics/ui/UI46;

    if-eqz v1, :cond_28

    move-object v1, p1

    check-cast v1, Lcom/att/iqi/lib/metrics/ui/UI46;

    move-object v2, p2

    check-cast v2, Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/ui/UI46;->getElapsedCpu()I

    move-result v3

    invoke-virtual {v2}, Lcom/att/iqi/lib/metrics/ui/UI46;->getElapsedCpu()I

    move-result v4

    if-ne v3, v4, :cond_26

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/ui/UI46;->getMaxMemoryUsed()I

    move-result v3

    invoke-virtual {v2}, Lcom/att/iqi/lib/metrics/ui/UI46;->getMaxMemoryUsed()I

    move-result v4

    if-eq v3, v4, :cond_24

    goto :goto_26

    :cond_24
    const/4 v3, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v3, 0x1

    :goto_27
    move v0, v3

    :cond_28
    return v0
.end method

.method public metricSort()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/att/iqi/lib/Metric;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/att/iqi/ComparableUI46;->mSort:Ljava/util/Comparator;

    return-object v0
.end method

.method public newMetric(Lcom/att/iqi/ApplicationInformation;)Lcom/att/iqi/lib/Metric;
    .registers 4

    new-instance v0, Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {p1}, Lcom/att/iqi/ApplicationInformation;->currentUI46()Lcom/att/iqi/lib/metrics/ui/UI46;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/metrics/ui/UI46;-><init>(Lcom/att/iqi/lib/metrics/ui/UI46;)V

    return-object v0
.end method
