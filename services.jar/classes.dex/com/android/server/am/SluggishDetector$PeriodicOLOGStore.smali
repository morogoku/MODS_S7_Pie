.class final Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicOLOGStore"
.end annotation


# static fields
.field private static Diff_OlogLength:J = 0x0L

.field private static Origin_OlogLength:J = 0x0L

.field private static STORE_FLAG_FOR_ADD:Z = false

.field private static STORE_FLAG_FOR_PERIODIC:Z = false

.field private static STORE_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final STORE_WAIT_INTERVAL_FOR_PERIODIC:J = 0x7530L

.field private static final TAG:Ljava/lang/String;


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

    const-class v1, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_INTERVAL_FOR_PERIODIC:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    sput-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$11700()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->clear()V

    return-void
.end method

.method static synthetic access$12100(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1600()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$1700()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->storeOLOG()V

    return-void
.end method

.method static synthetic access$400()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method static synthetic access$8700()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->step()V

    return-void
.end method

.method private static check()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static clear()V
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->check()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    :cond_9
    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->clear()V

    if-eqz p0, :cond_a

    const-string v0, " [OLOG] CLEAR OLOGR - PERIODIC STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4

    if-nez p0, :cond_a

    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-string v1, " [OLOG][ADB] dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->check()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, " [OLOG][ADB] SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "======================================================================"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC OLOG STORE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-string v2, " [OLOG][ADB] dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, " [OLOG][ADB] exc start"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [OLOG][ADB] exc cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->dump(Ljava/io/PrintWriter;)V

    const-string v0, " [OLOG][ADB] olog end"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_27
    :goto_27
    sget-object v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    const-string v1, " [OLOG][ADB] executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " [OLOG][ADB] exc pw or cmd is null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static init()V
    .registers 1

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    return-void
.end method

.method private static makeStoreOLOG()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->sendPeriodicReportToHandler()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->clear()V

    return-void
.end method

.method private static sendPeriodicReportToHandler()V
    .registers 3

    const/16 v0, 0xe

    const-wide/16 v1, 0x7530

    # invokes: Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .registers 3

    sget-wide v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3eb

    # invokes: Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->access$10500(IJ)V

    return-void
.end method

.method private static step()V
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->check()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->init()V

    :cond_9
    sget-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_PERIODIC:Z

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->setReportFlagForPeriodicWithDelay()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->makeStoreOLOG()V

    :cond_16
    return-void
.end method

.method private static storeOLOG()V
    .registers 24

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x800

    new-array v3, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    new-instance v0, Ljava/io/File;

    const-string v8, "/proc/kperfmon"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    new-instance v0, Ljava/io/File;

    const-string v9, "/data/log/remaining_olog"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    const/4 v0, 0x0

    :try_start_1f
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_95

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v10

    sget-boolean v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_37

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v10

    goto :goto_3d

    :cond_37
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v10

    :goto_3d
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    :goto_46
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v0, v10

    const/4 v11, 0x0

    if-lez v10, :cond_53

    invoke-virtual {v2, v3, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v11, 0x1

    goto :goto_46

    :cond_53
    sget-boolean v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    if-eqz v10, :cond_62

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sget-wide v18, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    sub-long v16, v16, v18

    sput-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    goto :goto_68

    :cond_62
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    :goto_68
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    sput-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sget-wide v20, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    const-wide/32 v22, 0x4c4b40

    cmp-long v10, v20, v22

    if-gtz v10, :cond_93

    sget-wide v20, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    const-wide/32 v22, 0x989680

    cmp-long v10, v20, v22

    if-lez v10, :cond_8f

    goto :goto_93

    :cond_8f
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    goto :goto_95

    :cond_93
    :goto_93
    sput-boolean v11, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_95} :catch_a9
    .catchall {:try_start_1f .. :try_end_95} :catchall_a4

    :cond_95
    :goto_95
    if-eqz v1, :cond_9c

    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :cond_9c
    :goto_9c
    if-eqz v2, :cond_cc

    :try_start_9e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_cc

    :catch_a2
    move-exception v0

    goto :goto_cc

    :catchall_a4
    move-exception v0

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_cd

    :catch_a9
    move-exception v0

    :try_start_aa
    sget-object v10, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " [OLOG] storeOLOG - File copy error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_a4

    if-eqz v1, :cond_c7

    :try_start_c2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_c7

    :catch_c6
    move-exception v0

    :cond_c7
    :goto_c7
    if-eqz v2, :cond_cc

    :try_start_c9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_a2

    :cond_cc
    :goto_cc
    return-void

    :goto_cd
    if-eqz v2, :cond_d4

    :try_start_cf
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v0

    :cond_d4
    :goto_d4
    if-eqz v10, :cond_db

    :try_start_d6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_db

    :catch_da
    move-exception v0

    :cond_db
    :goto_db
    throw v1
.end method

.method private static storeOLOG(Ljava/io/PrintWriter;)V
    .registers 30

    move-object/from16 v1, p0

    if-eqz v1, :cond_9

    const-string v0, " [OLOG][ADB] STORE OLOGR - PERIODIC STORE"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x800

    new-array v4, v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    new-instance v0, Ljava/io/File;

    const-string v9, "/proc/kperfmon"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    new-instance v0, Ljava/io/File;

    const-string v10, "/data/log/remaining_olog"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [OLOG][ADB] BEFORE lowBound = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", lownanoBound = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_43
    const-string v0, " [OLOG][ADB] storeOLOG try"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_203

    const-string v11, " [OLOG][ADB] storeOLOG lk_proc is file"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_59} :catch_21f
    .catchall {:try_start_43 .. :try_end_59} :catchall_216

    move-object v2, v11

    :try_start_5a
    sget-boolean v11, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5c} :catch_1fb
    .catchall {:try_start_5a .. :try_end_5c} :catchall_1ef

    const/4 v12, 0x1

    if-eqz v11, :cond_79

    :try_start_5f
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v11

    const-string v11, " [OLOG][ADB] storeOLOG should add"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6a} :catch_72
    .catchall {:try_start_5f .. :try_end_6a} :catchall_6b

    goto :goto_84

    :catchall_6b
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto/16 :goto_24d

    :catch_72
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto/16 :goto_224

    :cond_79
    :try_start_79
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v11

    const-string v11, " [OLOG][ADB] storeOLOG should overwrite"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_84} :catch_1fb
    .catchall {:try_start_79 .. :try_end_84} :catchall_1ef

    :goto_84
    const/4 v0, 0x0

    :try_start_85
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    sput-wide v13, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " [OLOG][ADB] START lk_save = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide/from16 v17, v15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " [OLOG][ADB] START midBound = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",  midnanoBound = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v13

    move-wide/from16 v12, v17

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_cb
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v11
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_cf} :catch_1e5
    .catchall {:try_start_85 .. :try_end_cf} :catchall_1d5

    move v0, v11

    const/4 v14, 0x0

    if-lez v11, :cond_d7

    :try_start_d3
    invoke-virtual {v3, v4, v14, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_72
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_6b

    goto :goto_cb

    :cond_d7
    :try_start_d7
    sget-boolean v11, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_d9} :catch_1e5
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_1d5

    if-eqz v11, :cond_e6

    :try_start_db
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v15

    sget-wide v17, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    sub-long v15, v15, v17

    sput-wide v15, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e5} :catch_72
    .catchall {:try_start_db .. :try_end_e5} :catchall_6b

    goto :goto_ec

    :cond_e6
    :try_start_e6
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v15

    sput-wide v15, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    :goto_ec
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v15

    sput-wide v15, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " [OLOG][ADB] AFTER lk_save = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", Diff lk_save = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v14, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v21, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v0

    const-string v0, " [OLOG][ADB] AFTER higBound = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", highnanoBound = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_138} :catch_1e5
    .catchall {:try_start_e6 .. :try_end_138} :catchall_1d5

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-wide/from16 v2, v21

    :try_start_13e
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Diff_OlogLength:J
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_14a} :catch_1ca
    .catchall {:try_start_13e .. :try_end_14a} :catchall_1be

    const-wide/32 v21, 0x4c4b40

    cmp-long v0, v16, v21

    if-gtz v0, :cond_176

    :try_start_151
    sget-wide v16, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->Origin_OlogLength:J

    const-wide/32 v21, 0x989680

    cmp-long v0, v16, v21

    if-lez v0, :cond_15b

    goto :goto_176

    :cond_15b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_15e} :catch_16b
    .catchall {:try_start_151 .. :try_end_15e} :catchall_15f

    goto :goto_179

    :catchall_15f
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_165
    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_250

    :catch_16b
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_170
    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_224

    :cond_176
    :goto_176
    const/4 v0, 0x0

    :try_start_177
    sput-boolean v0, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    :goto_179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [OLOG][ADB] STORE FUN excute time is = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_183} :catch_1ca
    .catchall {:try_start_177 .. :try_end_183} :catchall_1be

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    sub-long v4, v14, v19

    :try_start_189
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v2, v12

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [OLOG][ADB] STORE_FLAG_FOR_ADD = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->STORE_FLAG_FOR_ADD:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1b3} :catch_1bc
    .catchall {:try_start_189 .. :try_end_1b3} :catchall_1b9

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_207

    :catchall_1b9
    move-exception v0

    move-object v2, v0

    goto :goto_165

    :catch_1bc
    move-exception v0

    goto :goto_170

    :catchall_1be
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v2, v0

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_21e

    :catch_1ca
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_224

    :catchall_1d5
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v2, v0

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_250

    :catch_1e5
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto :goto_224

    :catchall_1ef
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v2, v0

    move-object v4, v3

    move-object/from16 v3, v24

    goto :goto_250

    :catch_1fb
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    goto :goto_224

    :cond_203
    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_207
    if-eqz v2, :cond_20e

    :try_start_209
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_20d

    goto :goto_20e

    :catch_20d
    move-exception v0

    :cond_20e
    :goto_20e
    if-eqz v3, :cond_24b

    :try_start_210
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_214

    goto :goto_24b

    :catch_214
    move-exception v0

    goto :goto_24b

    :catchall_216
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_21e
    goto :goto_250

    :catch_21f
    move-exception v0

    move-object/from16 v26, v4

    move-wide/from16 v27, v5

    :goto_224
    :try_start_224
    sget-object v4, Lcom/android/server/am/SluggishDetector$PeriodicOLOGStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [OLOG][ADB] storeOLOG - File copy error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " [OLOG][ADB] storeOLOG catch"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_23f
    .catchall {:try_start_224 .. :try_end_23f} :catchall_24c

    if-eqz v2, :cond_246

    :try_start_241
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_244} :catch_245

    goto :goto_246

    :catch_245
    move-exception v0

    :cond_246
    :goto_246
    if-eqz v3, :cond_24b

    :try_start_248
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_24b
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24b} :catch_214

    :cond_24b
    :goto_24b
    return-void

    :catchall_24c
    move-exception v0

    :goto_24d
    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_250
    if-eqz v3, :cond_257

    :try_start_252
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_255
    .catch Ljava/io/IOException; {:try_start_252 .. :try_end_255} :catch_256

    goto :goto_257

    :catch_256
    move-exception v0

    :cond_257
    :goto_257
    if-eqz v4, :cond_25e

    :try_start_259
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_25c
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25c} :catch_25d

    goto :goto_25e

    :catch_25d
    move-exception v0

    :cond_25e
    :goto_25e
    throw v2
.end method
