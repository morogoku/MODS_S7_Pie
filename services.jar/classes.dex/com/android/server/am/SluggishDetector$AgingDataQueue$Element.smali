.class Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector$AgingDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAverageAfterSlgInfoData:Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:Ljava/lang/String;

.field private mAverageIoInfoData:Ljava/lang/String;

.field private mAverageLaunchTime:J

.field private mAveragePss:J

.field private mAverageSwapPss:J

.field private mAverageThroughputInfoData:Ljava/lang/String;

.field private mBeforeSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIoInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeStandardDeviation:D

.field private mPssList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPssSlope:D

.field private mRunCount:J

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapUsedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThroughputInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;"
        }
    .end annotation
.end field


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

    const-class v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJII)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshPssSlope()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    return-wide v0
.end method

.method static synthetic access$9600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->toDumpString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private add(JJII)V
    .registers 11

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_9
    iget-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1, p2, p5}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    invoke-direct {p0, p6}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshPss(I)V

    return-void
.end method

.method private add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    .registers 26

    move-object v0, p0

    move/from16 v1, p11

    invoke-direct {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_c
    iget-wide v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    move-wide v3, p1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    move-wide/from16 v5, p3

    invoke-direct {v0, v2, v5, v6, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    move-wide/from16 v7, p5

    invoke-direct {v0, v2, v7, v8, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v9, p7

    invoke-direct {v0, v2, v9, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v10, p8

    invoke-direct {v0, v2, v10, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v11, p9

    invoke-direct {v0, v2, v11, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V

    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v12, p10

    invoke-direct {v0, v2, v12, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V

    move/from16 v2, p12

    invoke-direct {v0, v2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refresh(I)V

    return-void
.end method

.method private add(Ljava/util/LinkedList;JI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p4, :cond_13

    :goto_9
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p4, :cond_13

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_9

    :cond_13
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            ">;",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_f

    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_f

    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez p3, :cond_f

    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    :cond_f
    return-void
.end method

.method private checkStatus()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private getAverage(Ljava/util/LinkedList;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;I)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, p2, :cond_2a

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_12

    :cond_24
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_2a
    return-wide v0
.end method

.method private getAverageForIoInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;",
            ">;I)",
            "Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, p2, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    # invokes: Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->add(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V
    invoke-static {v0, v2}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->access$5900(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;)V

    goto :goto_16

    :cond_26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    # invokes: Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->divide(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->access$8800(Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;I)V

    :cond_2d
    return-object v0
.end method

.method private getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;",
            ">;I)",
            "Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_60

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    move/from16 v9, p2

    if-lt v8, v9, :cond_62

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    iget-object v11, v10, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    add-long/2addr v0, v13

    iget-object v11, v10, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x1

    aget-wide v14, v11, v13

    add-long/2addr v2, v14

    iget-object v11, v10, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v14, 0x2

    aget-wide v14, v11, v14

    add-long/2addr v4, v14

    iget-object v11, v10, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    aget v11, v11, v12

    add-int/2addr v6, v11

    iget-object v11, v10, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    aget v11, v11, v13

    add-int/2addr v7, v11

    goto :goto_1a

    :cond_43
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v10, v8

    div-long/2addr v0, v10

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v10, v8

    div-long/2addr v2, v10

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v10, v8

    div-long/2addr v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    div-int/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    div-int/2addr v7, v8

    goto :goto_62

    :cond_60
    move/from16 v9, p2

    :cond_62
    :goto_62
    new-instance v8, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-object v10, v8

    move-wide v11, v0

    move-wide v13, v2

    move-wide v15, v4

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;-><init>(JJJII)V

    return-object v8
.end method

.method private getAverageForThroughputInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;I)",
            "Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, p2, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    # invokes: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->add(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    invoke-static {v0, v2}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$8900(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    goto :goto_16

    :cond_26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    # invokes: Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->divide(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$9000(Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V

    :cond_2d
    return-object v0
.end method

.method private getStandardDeviation(Ljava/util/LinkedList;JI)D
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;JI)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_46

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lt v4, p4, :cond_46

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v5, p2

    mul-long v9, v7, v7

    add-long/2addr v0, v9

    goto :goto_14

    :cond_2a
    long-to-double v4, v0

    :try_start_2b
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-wide v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_45

    long-to-double v6, v6

    div-double v2, v6, v4

    goto :goto_46

    :catch_45
    move-exception v4

    :cond_46
    :goto_46
    return-wide v2
.end method

.method private init()V
    .registers 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    return-void
.end method

.method private refresh(I)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_d
    iget-object v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {v0, v4, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {v0, v6, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {v0, v8, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    invoke-direct {v0, v9, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    invoke-direct {v0, v10, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForIoInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    invoke-direct {v0, v11, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverageForThroughputInfoData(Ljava/util/LinkedList;I)Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {v0, v12, v2, v3, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getStandardDeviation(Ljava/util/LinkedList;JI)D

    move-result-wide v12

    iput-wide v2, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    const-wide/16 v14, 0x400

    move-wide/from16 v16, v2

    div-long v1, v4, v14

    iput-wide v1, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    div-long v1, v6, v14

    iput-wide v1, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v8}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    iput-wide v12, v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    return-void
.end method

.method private refreshPss(I)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->init()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long v6, v0, v4

    iput-wide v6, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    div-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    return-void
.end method

.method private refreshPssSlope()V
    .registers 10

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-lez v2, :cond_48

    iget-object v3, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    sub-long v7, v3, v5

    add-long/2addr v0, v7

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_48
    long-to-double v2, v0

    iget-object v4, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    return-void
.end method

.method private toDumpString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
