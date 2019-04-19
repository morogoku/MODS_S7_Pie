.class public Lcom/att/iqi/MemAndCPUStats;
.super Ljava/lang/Object;
.source "MemAndCPUStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/MemAndCPUStats$HandlerCallback;
    }
.end annotation


# static fields
.field private static final INITIAL_THREAD_POOL_SIZE:I = 0x10

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAX_THREAD_POOL_SIZE:I = 0x20

.field private static final MESSAGE_DELAY_MS:J = 0x1388L


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPIDRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/PIDRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mUpdateStatsWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/att/iqi/MemAndCPUStats;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/att/iqi/MemAndCPUStats;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "mcs"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/att/iqi/MemAndCPUStats;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/att/iqi/MemAndCPUStats;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/att/iqi/MemAndCPUStats;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_32

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Unable to start handler thread, CPU & Mem stats won\'t be updated"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_3e

    :cond_32
    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;

    invoke-direct {v3, p0, v0}, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;-><init>(Lcom/att/iqi/MemAndCPUStats;Lcom/att/iqi/MemAndCPUStats$1;)V

    invoke-direct {v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    :cond_3e
    :goto_3e
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mUpdateStatsWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0x10

    const/16 v4, 0x20

    const-wide/16 v5, 0x1

    sget-object v7, Lcom/att/iqi/MemAndCPUStats;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/att/iqi/MemAndCPUStats;->mUpdateStatsWorkQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/MemAndCPUStats;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/att/iqi/MemAndCPUStats;)V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/MemAndCPUStats;->updateStats()V

    return-void
.end method

.method static synthetic access$200(Lcom/att/iqi/MemAndCPUStats;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateStats()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_25

    iget-object v3, p0, Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/att/iqi/PIDRecord;

    iget-object v4, p0, Lcom/att/iqi/MemAndCPUStats;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Lcom/att/iqi/PIDRecord;->getUpdateTask()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    iget-object v3, p0, Lcom/att/iqi/MemAndCPUStats;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v0, :cond_43

    iget-object v4, p0, Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/att/iqi/PIDRecord;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/att/iqi/PIDRecord;->reportMemoryUsed(J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_44

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_43
    goto :goto_50

    :catch_44
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "Error getting memory info"

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public registerPIDRecord(Lcom/att/iqi/PIDRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public startTracking()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public stopTracking()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    return-void
.end method

.method public unregisterPIDRecord(Lcom/att/iqi/PIDRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method
