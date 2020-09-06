.class public Lcom/att/iqi/GenOS09;
.super Ljava/lang/Object;
.source "GenOS09.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/GenOS09$HandlerCallback;,
        Lcom/att/iqi/GenOS09$ProcessInfo;,
        Lcom/att/iqi/GenOS09$PidFilenameFilter;
    }
.end annotation


# static fields
.field private static final STAT_KERNEL_MODE_TICKS_INDEX:I = 0xe

.field private static final STAT_NAME_INDEX:I = 0x1

.field private static final STAT_START_REALTIME_INDEX:I = 0x15

.field private static final STAT_USER_MODE_TICKS_INDEX:I = 0xd

.field private static final STAT_VM_SIZE_INDEX:I = 0x16

.field private static final TICKS_PER_MILLISECOND:I = 0xa

.field private static final TICKS_PER_SECOND:I = 0x64


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mClient:Lcom/att/iqi/lib/IQIManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final os09:Lcom/att/iqi/lib/metrics/os/OS09;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/att/iqi/lib/metrics/os/OS09;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/os/OS09;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/GenOS09;->os09:Lcom/att/iqi/lib/metrics/os/OS09;

    iput-object p1, p0, Lcom/att/iqi/GenOS09;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/att/iqi/GenOS09;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v0, p0, Lcom/att/iqi/GenOS09;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/att/iqi/GenOS09;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "procid"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/GenOS09;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/att/iqi/GenOS09;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/att/iqi/GenOS09;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/att/iqi/GenOS09$HandlerCallback;

    invoke-direct {v3, p0, v1}, Lcom/att/iqi/GenOS09$HandlerCallback;-><init>(Lcom/att/iqi/GenOS09;Lcom/att/iqi/GenOS09$1;)V

    invoke-direct {v2, v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/att/iqi/GenOS09;->mHandler:Landroid/os/Handler;

    goto :goto_4c

    :cond_3f
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "Couldn\'t get looper for GenOS09"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_4a
    iput-object v1, p0, Lcom/att/iqi/GenOS09;->mHandler:Landroid/os/Handler;

    :goto_4c
    return-void
.end method

.method static synthetic access$100(Lcom/att/iqi/GenOS09;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/GenOS09;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getNameFromStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_29

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method private getNormalizedProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/GenOS09;->readFirstLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_26

    :cond_22
    invoke-static {p2}, Lcom/att/iqi/GenOS09;->getNameFromStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_26
    if-eqz v0, :cond_34

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_34
    return-object v0
.end method

.method private static readFirstLineFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    :try_start_13
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_33
    .catchall {:try_start_13 .. :try_end_22} :catchall_2a

    move-object v1, v3

    nop

    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    :goto_27
    goto :goto_3a

    :catch_28
    move-exception v3

    goto :goto_27

    :catchall_2a
    move-exception v3

    if-eqz v2, :cond_32

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    move-exception v4

    :cond_32
    :goto_32
    throw v3

    :catch_33
    move-exception v3

    if-eqz v2, :cond_3a

    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_28

    goto :goto_27

    :cond_3a
    :goto_3a
    return-object v1
.end method


# virtual methods
.method protected endListening()V
    .registers 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "OS09 unregistered"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public metricID()Lcom/att/iqi/lib/Metric$ID;
    .registers 2

    sget-object v0, Lcom/att/iqi/lib/metrics/os/OS09;->ID:Lcom/att/iqi/lib/Metric$ID;

    return-object v0
.end method

.method public startListening()V
    .registers 4

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Init Gen OS09"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/att/iqi/GenOS09;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "No IQIManager"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/att/iqi/GenOS09;->mClient:Lcom/att/iqi/lib/IQIManager;

    sget-object v1, Lcom/att/iqi/lib/metrics/os/OS09;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v2, Lcom/att/iqi/GenOS09$1;

    invoke-direct {v2, p0}, Lcom/att/iqi/GenOS09$1;-><init>(Lcom/att/iqi/GenOS09;)V

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/lib/IQIManager;->registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "OS09 registered"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public submit()V
    .registers 28

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/att/iqi/GenOS09;->os09:Lcom/att/iqi/lib/metrics/os/OS09;

    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/os/OS09;->reset()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    new-instance v0, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    new-instance v0, Lcom/att/iqi/GenOS09$PidFilenameFilter;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/att/iqi/GenOS09$PidFilenameFilter;-><init>(Lcom/att/iqi/GenOS09$1;)V

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_27

    array-length v0, v6

    goto :goto_28

    :cond_27
    move v0, v7

    :goto_28
    move v8, v0

    const/4 v0, 0x0

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v10, v0

    move v0, v7

    :goto_31
    move v11, v0

    if-ge v11, v8, :cond_c4

    :try_start_34
    new-instance v0, Lcom/att/iqi/GenOS09$ProcessInfo;

    invoke-direct {v0, v4}, Lcom/att/iqi/GenOS09$ProcessInfo;-><init>(Lcom/att/iqi/GenOS09$1;)V

    aget-object v12, v6, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v10, v12

    iput v10, v0, Lcom/att/iqi/GenOS09$ProcessInfo;->pid:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/proc/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/stat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/att/iqi/GenOS09;->readFirstLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a0

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/16 v15, 0x16

    if-le v14, v15, :cond_a0

    aget-object v14, v6, v11

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-direct {v1, v14, v15}, Lcom/att/iqi/GenOS09;->getNormalizedProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/att/iqi/GenOS09$ProcessInfo;->processName:Ljava/lang/String;

    const/16 v14, 0xd

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v16, 0xe

    aget-object v4, v13, v16

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    add-long v14, v14, v18

    const-wide/16 v18, 0xa

    mul-long v14, v14, v18

    iput-wide v14, v0, Lcom/att/iqi/GenOS09$ProcessInfo;->cpuUsage:J

    const/16 v4, 0x15

    aget-object v4, v13, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    sub-int v4, v2, v4

    iput v4, v0, Lcom/att/iqi/GenOS09$ProcessInfo;->elapsedTime:I

    :cond_a0
    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_a3} :catch_a4

    goto :goto_bf

    :catch_a4
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_bf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OSO9 failed to parse number for pid: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_bf
    :goto_bf
    add-int/lit8 v0, v11, 0x1

    const/4 v4, 0x0

    goto/16 :goto_31

    :cond_c4
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v4, v0, [I

    move v11, v7

    :goto_cb
    if-ge v11, v0, :cond_da

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/att/iqi/GenOS09$ProcessInfo;

    iget v13, v12, Lcom/att/iqi/GenOS09$ProcessInfo;->pid:I

    aput v13, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_cb

    :cond_da
    iget-object v12, v1, Lcom/att/iqi/GenOS09;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v12, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    nop

    :goto_e1
    array-length v13, v4

    if-ge v7, v13, :cond_12f

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/att/iqi/GenOS09$ProcessInfo;

    aget-object v14, v12, v7

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v14

    iput v14, v13, Lcom/att/iqi/GenOS09$ProcessInfo;->memoryUsage:I

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_ff

    invoke-virtual {v13}, Lcom/att/iqi/GenOS09$ProcessInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_ff
    iget-object v15, v1, Lcom/att/iqi/GenOS09;->os09:Lcom/att/iqi/lib/metrics/os/OS09;

    iget v14, v13, Lcom/att/iqi/GenOS09$ProcessInfo;->pid:I

    move/from16 v22, v0

    iget v0, v13, Lcom/att/iqi/GenOS09$ProcessInfo;->elapsedTime:I

    move/from16 v23, v2

    move-object/from16 v24, v3

    iget-wide v2, v13, Lcom/att/iqi/GenOS09$ProcessInfo;->cpuUsage:J

    move-object/from16 v25, v4

    iget v4, v13, Lcom/att/iqi/GenOS09$ProcessInfo;->memoryUsage:I

    move-object/from16 v26, v5

    iget-object v5, v13, Lcom/att/iqi/GenOS09$ProcessInfo;->processName:Ljava/lang/String;

    move/from16 v16, v14

    move/from16 v17, v0

    move-wide/from16 v18, v2

    move/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v15 .. v21}, Lcom/att/iqi/lib/metrics/os/OS09;->addProcessInfo(IIJILjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    goto :goto_e1

    :cond_12f
    move/from16 v22, v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    iget-object v0, v1, Lcom/att/iqi/GenOS09;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-eqz v0, :cond_144

    iget-object v0, v1, Lcom/att/iqi/GenOS09;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v2, v1, Lcom/att/iqi/GenOS09;->os09:Lcom/att/iqi/lib/metrics/os/OS09;

    invoke-virtual {v0, v2}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_144
    return-void
.end method
