.class final Lcom/android/server/am/SluggishDetector$ThroughputInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;,
        Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TP_INTERVAL:J = 0x64L

.field private static final TP_INTERVAL_COUNT:I = 0x5

.field private static final TP_MAXIMUM_CHECK_COUNT:I = 0x14

.field private static final XT_QTAGUID_STATS_PATH:Ljava/lang/String; = "/proc/net/xt_qtaguid/stats"


# instance fields
.field private mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/SluggishDetector;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/SluggishDetector$ThroughputInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    iput p1, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mUid:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/am/SluggishDetector$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;-><init>(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->refresh()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/am/SluggishDetector$ThroughputInfo;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-object v0
.end method

.method private calcThroughputInfoData(Ljava/util/LinkedList;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;",
            ">;)",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    # invokes: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->calcThroughputInfoData(Ljava/util/LinkedList;)V
    invoke-static {v0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$5400(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Ljava/util/LinkedList;)V

    return-object v0
.end method

.method private getThroughputInfoData(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->getThroughputInfoElement(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    :goto_e
    if-lez v1, :cond_40

    # getter for: Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$5500()Z

    move-result v2

    if-nez v2, :cond_40

    # getter for: Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$5600()Z

    move-result v2

    if-nez v2, :cond_40

    const/4 v2, 0x5

    :goto_1d
    if-lez v2, :cond_35

    :try_start_1f
    # getter for: Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->access$5500()Z

    move-result v3

    if-nez v3, :cond_35

    # getter for: Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->access$5600()Z

    move-result v3

    if-nez v3, :cond_35

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_30} :catch_33

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :catch_33
    move-exception v2

    goto :goto_36

    :cond_35
    nop

    :goto_36
    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->getThroughputInfoElement(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_40
    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->calcThroughputInfoData(Ljava/util/LinkedList;)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v1

    return-object v1
.end method

.method private getThroughputInfoElement(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .registers 15

    new-instance v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "/proc/net/xt_qtaguid/stats"

    # invokes: Lcom/android/server/am/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/SluggishDetector;->access$5200(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J
    invoke-static {v0, v6, v7}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4902(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    if-eqz v5, :cond_4f

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_4f

    aget-object v8, v5, v7

    const-string/jumbo v9, "idx"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    goto :goto_4c

    :cond_29
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    :try_start_30
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, p1, :cond_4a

    const/4 v11, 0x5

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v1, v11

    const/4 v11, 0x7

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_48} :catch_4b

    int-to-long v11, v11

    add-long/2addr v3, v11

    :cond_4a
    goto :goto_4c

    :catch_4b
    move-exception v10

    :goto_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_4f
    # setter for: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4802(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    # setter for: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J
    invoke-static {v0, v3, v4}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$5002(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    return-object v0
.end method

.method private refresh()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->getThroughputInfoData(I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    invoke-virtual {v0}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D
    invoke-static {}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$5700()[D

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_22

    aget-wide v4, v1, v3

    const-string v6, "-1/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_22
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
