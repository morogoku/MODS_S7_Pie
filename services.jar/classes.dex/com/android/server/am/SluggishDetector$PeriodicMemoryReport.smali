.class final Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicMemoryReport"
.end annotation


# static fields
.field private static COLLECT_FLAG_FOR_PERIODIC:Z = false

.field private static COLLECT_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final MAXIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = 0x1f4

.field private static final MAXIMUM_QUEUE_COUNT_FOR_PERIODIC:I = 0xc8

.field private static final MINIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = -0x1

.field private static final REPORT_COUNT_FOR_PERIODIC:I = 0x9

.field private static final REPORT_COUNT_IN_MESSAGE_FOR_PERIODIC:I = 0x3

.field private static REPORT_FLAG_FOR_PERIODIC:Z = false

.field private static REPORT_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final REPORT_WAIT_INTERVAL_FOR_PERIODIC:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field private static sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;


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

    const-class v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$11600()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->clear()V

    return-void
.end method

.method static synthetic access$12000(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1400()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setCollectFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method private static check()Z
    .registers 1

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static clear()V
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    :cond_9
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue;->clear()V
    invoke-static {v0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10300(Lcom/android/server/am/SluggishDetector$AgingDataQueue;)V

    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->clear()V

    if-eqz p0, :cond_a

    const-string v0, "CLEAR SLUGGISH DETECTOR - PERIODIC MEMORY REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4

    if-nez p0, :cond_b

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "SLUGGISH DETECTOR - PERIODIC MEMORY REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_periodic_memory)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageBeforeSlgInfoData] [averageAfterSlgInfoData] [averageIoInfoData] [averageThroughputInfoData][launchTimeStandardDeviation]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v0, p0}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10400(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC MEMORY REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_3b

    goto :goto_44

    :catch_3b
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V

    return-void

    :cond_9
    :goto_9
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static init()V
    .registers 2

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/am/SluggishDetector$1;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    :cond_c
    return-void
.end method

.method private static makePeriodicReport(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sendPeriodicReportToHandler(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->clear()V

    return-void
.end method

.method private static sendPeriodicReportToHandler(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 8

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const-wide/16 v1, 0x9

    const-wide/16 v3, 0x12

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$11000(Lcom/android/server/am/SluggishDetector$AgingDataQueue;JJ)Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_28

    :cond_20
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    :goto_28
    new-instance v3, Lcom/android/server/am/SluggishDetector$DetectInfo;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/android/server/am/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/am/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/am/SluggishDetector$1;)V

    const/4 v4, 0x2

    const-wide/16 v5, 0x7530

    # invokes: Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    invoke-static {v4, v3, v5, v6}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10800(ILjava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_b

    :cond_38
    return-void
.end method

.method private static setCollectFlagForPeriodic()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setCollectFlagForPeriodicWithDelay()V
    .registers 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x65

    # invokes: Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .registers 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3ea

    # invokes: Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static step(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 20

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->init()V

    :cond_9
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sput-boolean v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->makePeriodicReport(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    :cond_16
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_5c

    sput-boolean v1, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->setCollectFlagForPeriodicWithDelay()V

    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getDumpProcessMemoryInfo(Z)Ljava/util/List;

    move-result-object v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_2a

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MemDumpInfo;

    iget-object v12, v2, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    iget-wide v13, v2, Lcom/android/internal/app/MemDumpInfo;->pss:J

    iget-wide v10, v2, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_5b

    sget-object v3, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/am/SluggishDetector$AgingDataQueue;

    const/16 v9, 0xc8

    const/16 v15, 0x1f4

    const/16 v16, -0x1

    move-object v4, v12

    move-wide v5, v13

    move-wide v7, v10

    move-wide/from16 v17, v10

    move v10, v15

    move/from16 v11, v16

    # invokes: Lcom/android/server/am/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJIII)V
    invoke-static/range {v3 .. v11}, Lcom/android/server/am/SluggishDetector$AgingDataQueue;->access$10900(Lcom/android/server/am/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJIII)V

    :cond_5b
    goto :goto_30

    :cond_5c
    return-void
.end method
