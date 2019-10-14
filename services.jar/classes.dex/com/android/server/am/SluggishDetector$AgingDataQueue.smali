.class Lcom/android/server/am/SluggishDetector$AgingDataQueue;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgingDataQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mElementList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation
.end field

.field private mElementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
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

    const-class v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SluggishDetector$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;-><init>()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getAverageLaunchTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$10200(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->clear()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/am/SluggishDetector$AgingDataQueue;J)Ljava/util/LinkedList;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJIII)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJIII)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/am/SluggishDetector$AgingDataQueue;JJ)Ljava/util/LinkedList;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    return-object v0
.end method

.method private add(Ljava/lang/String;JJIII)V
    .registers 21

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p6

    invoke-direct {v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_d
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_23
    new-instance v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$1;)V

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2e
    move-object v5, v0

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p7

    move/from16 v11, p8

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJII)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$9300(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJII)V

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez v3, :cond_5a

    :goto_40
    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_5a

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    iget-object v5, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4700(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_59} :catch_5b

    goto :goto_40

    :cond_5a
    goto :goto_63

    :catch_5b
    move-exception v0

    sget-object v4, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->TAG:Ljava/lang/String;

    const-string v5, "add() - Exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    return-void
.end method

.method private add(Ljava/lang/String;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;III)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_f
    :try_start_f
    iget-object v0, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_25
    new-instance v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;Lcom/android/server/am/SluggishDetector$1;)V

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_30
    move-object v5, v0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p13

    move/from16 v17, p14

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    invoke-static/range {v5 .. v17}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$9200(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/am/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/am/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-lez v3, :cond_67

    :goto_4d
    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_67

    iget-object v4, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    iget-object v5, v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$4700(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_66} :catch_68

    goto :goto_4d

    :cond_67
    goto :goto_69

    :catch_68
    move-exception v0

    :goto_69
    return-void
.end method

.method private checkStatus()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private clear()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->toDumpString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$9600(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    return-void
.end method

.method private get(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->init()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAverageLaunchTime(Ljava/lang/String;)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    if-eqz v0, :cond_b

    # getter for: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J
    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$2400(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v1

    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$1;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-ltz v4, :cond_34

    goto :goto_35

    :cond_34
    goto :goto_1b

    :cond_35
    :goto_35
    return-object v1
.end method

.method private getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$2;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-gez v3, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->refreshPssSlope()V
    invoke-static {v3}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;->access$9400(Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_32
    new-instance v2, Lcom/android/server/am/SluggishDetector$AgingDataQueue$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue$3;-><init>(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p1

    if-ltz v5, :cond_5c

    goto :goto_5d

    :cond_5c
    goto :goto_43

    :cond_5d
    :goto_5d
    return-object v2
.end method

.method private init()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->mElementList:Ljava/util/LinkedList;

    return-void
.end method
