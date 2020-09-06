.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$HistoricalBuffer;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;,
        Lcom/android/server/GraphicsStatsService$BufferInfo;
    }
.end annotation


# static fields
.field private static final DELETE_OLD:I = 0x2

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final SAVE_BUFFER:I = 0x1

.field private static final SI_DUMP_DEFAULT:I = 0x0

.field private static final SI_PIPE_READ:I = 0x0

.field private static final SI_PIPE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private final ASHMEM_SIZE:I

.field private final ZERO_DATA:[B

.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mFileAccessLock:Ljava/lang/Object;

.field private mGraphicsStatsDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mPidForStats:J

.field private mRotateIsScheduled:Z

.field private mSIGraphicsDataRunnable:Ljava/lang/Runnable;

.field private mSIHandler:Landroid/os/Handler;

.field private final mSiLock:Ljava/lang/Object;

.field private mSiPipe:[Landroid/os/ParcelFileDescriptor;

.field private mSiRunning:Z

.field private mWriteOutHandler:Landroid/os/Handler;

.field private siThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    invoke-static {}, Lcom/android/server/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mSiRunning:Z

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "graphicsstats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_94

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GraphicsStats-disk"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "GraphicsStats-SI"

    invoke-direct {v2, v4, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/GraphicsStatsService;->siThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->siThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/server/GraphicsStatsService$1;

    invoke-direct {v4, p0}, Lcom/android/server/GraphicsStatsService$1;-><init>(Lcom/android/server/GraphicsStatsService;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    return-void

    :cond_94
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graphics stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/GraphicsStatsService;)[Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(IZ)J
    .registers 4

    invoke-static {p0, p1}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V

    return-void
.end method

.method static synthetic access$1400(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/GraphicsStatsService;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/GraphicsStatsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GraphicsStatsService;->mSiRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/GraphicsStatsService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/GraphicsStatsService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/GraphicsStatsService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GraphicsStatsService;->mPidForStats:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/GraphicsStatsService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mSiLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_2b

    :catch_10
    move-exception v0

    const-string v1, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy graphicsstats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    return-void
.end method

.method private deleteOldBuffers()V
    .registers 12

    const-string/jumbo v0, "deleting old graphicsstats buffers"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_57

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_19

    goto :goto_57

    :cond_19
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v6, 0x0

    move v7, v6

    :goto_1e
    array-length v8, v3
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_59

    if-ge v7, v8, :cond_32

    :try_start_21
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2d} :catch_2e
    .catchall {:try_start_21 .. :try_end_2d} :catchall_59

    goto :goto_2f

    :catch_2e
    move-exception v8

    :goto_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_32
    :try_start_32
    array-length v7, v4

    if-gt v7, v5, :cond_37

    monitor-exit v0

    return-void

    :cond_37
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    nop

    :goto_3b
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_52

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v9, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_59

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private deleteRecursiveLocked(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method private dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v10, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v12, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v14, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v6, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-object/from16 v16, v6

    move-wide/from16 v6, p1

    invoke-static/range {v6 .. v16}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_43
    move-object/from16 v5, p0

    move-object/from16 v2, p3

    return-object v0
.end method

.method private dumpHistoricalLocked(JLjava/util/HashSet;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_64

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v7, :cond_57

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v11, :cond_4a

    aget-object v13, v10, v12

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "total"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    nop

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    goto :goto_43

    :cond_38
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    :goto_43
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_1e

    :cond_4a
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_14

    :cond_57
    move-object/from16 v15, p3

    move-object/from16 v17, v1

    move-wide/from16 v0, p1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_a

    :cond_64
    move-wide/from16 v0, p1

    move-object/from16 v15, p3

    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v10, :cond_3c

    iget-object v1, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    iget v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    move/from16 v13, p3

    if-ne v2, v13, :cond_37

    iget v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    move/from16 v14, p2

    if-ne v2, v14, :cond_39

    iget-object v2, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v2, v2, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    cmp-long v2, v2, v11

    if-gez v2, :cond_36

    invoke-virtual {v1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->binderDied()V

    goto :goto_40

    :cond_36
    return-object v1

    :cond_37
    move/from16 v14, p2

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3c
    move/from16 v14, p2

    move/from16 v13, p3

    :goto_40
    :try_start_40
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p1

    move v4, v14

    move v5, v13

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    iget-object v1, v9, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_54} :catch_55

    return-object v0

    :catch_55
    move-exception v0

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid file descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSIGraphicsDataRunnable()Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/android/server/GraphicsStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/GraphicsStatsService$2;-><init>(Lcom/android/server/GraphicsStatsService;)V

    return-object v0
.end method

.method public static synthetic lambda$2EDVu98hsJvSwNgKvijVLSR3IrQ(Lcom/android/server/GraphicsStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method private static native nAddToDump(JLjava/lang/String;)V
.end method

.method private static native nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private static native nCreateDump(IZ)J
.end method

.method private static native nFinishDump(J)V
.end method

.method private static native nGetAshmemSize()I
.end method

.method private static native nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private normalizeDate(J)Ljava/util/Calendar;
    .registers 6

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private onAlarm()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_49

    array-length v0, v2

    move v3, v1

    :goto_16
    const/4 v4, 0x2

    if-ge v3, v0, :cond_41

    aget-object v5, v2, v3

    :try_start_1b
    iget-object v6, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v6}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_3e

    :catch_21
    move-exception v6

    const-string v7, "GraphicsStatsService"

    const-string v8, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    aput-object v9, v4, v1

    iget v9, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v4, v10

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_41
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .registers 6

    const-string v0, "%d/%s/%d/total"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method private requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .registers 16

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saving graphicsstats for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_22
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_25
    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_59

    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create path: \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_59
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v6, v6, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v7, v7, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v9, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v11, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v11, v11, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v13, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static/range {v5 .. v13}, Lcom/android/server/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_25 .. :try_end_73} :catchall_77

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0
.end method

.method private scheduleRotateLocked()V
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v7, "GraphicsStatsService"

    new-instance v8, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;

    invoke-direct {v8, p0}, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;-><init>(Lcom/android/server/GraphicsStatsService;)V

    iget-object v9, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_20

    aget-object v4, p3, v3

    const-string v5, "--proto"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v0, 0x1

    goto :goto_20

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    nop

    :goto_2f
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_71

    if-ge v2, v4, :cond_4c

    :try_start_37
    new-instance v4, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v4, p0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_47} :catch_48
    .catchall {:try_start_37 .. :try_end_47} :catchall_71

    goto :goto_49

    :catch_48
    move-exception v4

    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_71

    move-object v1, v3

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v2

    :try_start_56
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6c

    :try_start_59
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_69

    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    nop

    return-void

    :catchall_69
    move-exception v5

    :try_start_6a
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    throw v4

    :catchall_71
    move-exception v2

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v2
.end method

.method public dumpGstats(Ljava/io/FileDescriptor;Z)V
    .registers 9

    move v0, p2

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_10
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_52

    if-ge v3, v4, :cond_2d

    :try_start_18
    new-instance v4, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v4, p0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_29
    .catchall {:try_start_18 .. :try_end_28} :catchall_52

    goto :goto_2a

    :catch_29
    move-exception v4

    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_52

    move-object v1, v2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2, v0}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide v2

    :try_start_37
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4d

    :try_start_3a
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_4a

    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    nop

    return-void

    :catchall_4a
    move-exception v5

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    throw v4

    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public dumpSiGStats(J)I
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mSiRunning:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    const-string v0, "GraphicsStatsService"

    const-string v2, " Busy "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mSiLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iput-wide p1, p0, Lcom/android/server/GraphicsStatsService;->mPidForStats:J

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_27

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mSIGraphicsDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mSIGraphicsDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_27
    const-string v2, "GraphicsStatsService"

    const-string/jumbo v3, "dumpSiGStats: mSIHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    :try_start_12
    iget-object v0, v8, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v10, v9}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v15, v0

    iget-object v6, v8, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_2a} :catch_50
    .catchall {:try_start_12 .. :try_end_2a} :catchall_4e

    nop

    :try_start_2b
    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_49

    move-object v1, v8

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    move-object v5, v9

    move-object/from16 v18, v6

    move-wide/from16 v6, v16

    :try_start_39
    invoke-direct/range {v1 .. v7}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_47

    move-object v1, v0

    :try_start_3e
    monitor-exit v18
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_44

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v1

    :catchall_44
    move-exception v0

    move-object v12, v1

    goto :goto_4c

    :catchall_47
    move-exception v0

    goto :goto_4c

    :catchall_49
    move-exception v0

    move-object/from16 v18, v6

    :goto_4c
    :try_start_4c
    monitor-exit v18
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_47

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4d .. :try_end_4e} :catch_50
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    goto :goto_6d

    :catch_50
    move-exception v0

    :try_start_51
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find package: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_4e

    :goto_6d
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startSiGStats()Landroid/os/ParcelFileDescriptor;
    .registers 6

    const-string v0, "GraphicsStatsService"

    const-string v1, " enter startSiGStats "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mSiLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    if-nez v1, :cond_21

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->siThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->getSIGraphicsDataRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIGraphicsDataRunnable:Ljava/lang/Runnable;

    :cond_21
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_48

    const/4 v2, 0x0

    if-nez v1, :cond_3f

    :try_start_26
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_34
    .catchall {:try_start_26 .. :try_end_2c} :catchall_48

    nop

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    :catch_34
    move-exception v1

    const-string v3, "GraphicsStatsService"

    const-string/jumbo v4, "mSiPipe not opened"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :cond_3f
    const-string v1, "GraphicsStatsService"

    const-string v3, " exit startSiGStats "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public stopSiGStats()V
    .registers 6

    const-string v0, "GraphicsStatsService"

    const-string v1, " enter stopSiGStats "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mSiLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mSIGraphicsDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/GraphicsStatsService;->mSIHandler:Landroid/os/Handler;

    goto :goto_21

    :cond_19
    const-string v1, "GraphicsStatsService"

    const-string/jumbo v3, "stopGstatsPolling: mSIHandler is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v1, v1, v3
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_5e

    if-eqz v1, :cond_3c

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_34
    .catchall {:try_start_2c .. :try_end_33} :catchall_5e

    goto :goto_3c

    :catch_34
    move-exception v1

    :try_start_35
    const-string v3, "GraphicsStatsService"

    const-string v4, "  SI_PIPE_READ -> "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v1, v1, v3
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_5e

    if-eqz v1, :cond_53

    :try_start_43
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_4b
    .catchall {:try_start_43 .. :try_end_4a} :catchall_5e

    goto :goto_53

    :catch_4b
    move-exception v1

    :try_start_4c
    const-string v3, "GraphicsStatsService"

    const-string v4, " SI_PIPE_WRITE -> "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    :goto_53
    iput-object v2, p0, Lcom/android/server/GraphicsStatsService;->mSiPipe:[Landroid/os/ParcelFileDescriptor;

    :cond_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_5e

    const-string v0, "GraphicsStatsService"

    const-string v1, " exit stopSiGStats "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method
