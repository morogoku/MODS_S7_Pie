.class Lcom/att/iqi/ComparableUI46$1;
.super Ljava/lang/Object;
.source "ComparableUI46.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/ComparableUI46;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/att/iqi/lib/Metric;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/att/iqi/lib/Metric;Lcom/att/iqi/lib/Metric;)I
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/att/iqi/lib/metrics/ui/UI46;

    if-eqz v1, :cond_25

    instance-of v1, p2, Lcom/att/iqi/lib/metrics/ui/UI46;

    if-eqz v1, :cond_25

    move-object v1, p1

    check-cast v1, Lcom/att/iqi/lib/metrics/ui/UI46;

    move-object v2, p2

    check-cast v2, Lcom/att/iqi/lib/metrics/ui/UI46;

    invoke-virtual {v2}, Lcom/att/iqi/lib/metrics/ui/UI46;->getElapsedCpu()I

    move-result v3

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/ui/UI46;->getElapsedCpu()I

    move-result v4

    sub-int v0, v3, v4

    if-nez v0, :cond_25

    invoke-virtual {v2}, Lcom/att/iqi/lib/metrics/ui/UI46;->getMaxMemoryUsed()I

    move-result v3

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/ui/UI46;->getMaxMemoryUsed()I

    move-result v4

    sub-int v0, v3, v4

    :cond_25
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/att/iqi/lib/Metric;

    check-cast p2, Lcom/att/iqi/lib/Metric;

    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/ComparableUI46$1;->compare(Lcom/att/iqi/lib/Metric;Lcom/att/iqi/lib/Metric;)I

    move-result p1

    return p1
.end method
