.class Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;
.super Ljava/lang/Object;
.source "SluggishDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SluggishDetector$AgingDataQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;->this$0:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)I
    .registers 9

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J
    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v0

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J
    invoke-static {p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    add-long/2addr v0, v2

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J
    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v2

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J
    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    check-cast p2, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;->compare(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)I

    move-result p1

    return p1
.end method
