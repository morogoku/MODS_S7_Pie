.class Lcom/att/iqi/lib/metrics/os/OS09$CpuComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/metrics/os/OS09;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpuComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/lib/metrics/os/OS09$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/lib/metrics/os/OS09$CpuComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;)I
    .registers 5

    iget-wide v0, p2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->c:J

    iget-wide p1, p1, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;->c:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    check-cast p2, Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;

    invoke-virtual {p0, p1, p2}, Lcom/att/iqi/lib/metrics/os/OS09$CpuComparator;->compare(Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;Lcom/att/iqi/lib/metrics/os/OS09$ProcessRecord;)I

    move-result p1

    return p1
.end method
