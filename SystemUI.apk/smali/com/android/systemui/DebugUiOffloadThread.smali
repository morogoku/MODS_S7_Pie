.class public Lcom/android/systemui/DebugUiOffloadThread;
.super Lcom/android/systemui/UiOffloadThread;
.source "DebugUiOffloadThread.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DebugUiOffloadThread$InternalTask;,
        Lcom/android/systemui/DebugUiOffloadThread$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Z


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxDuration:J

.field private mMaxDurationCaller:Ljava/lang/String;

.field private mMaxDurationTime:J

.field private mMaxElapsed:J

.field private mMaxElapsedCaller:Ljava/lang/String;

.field private mMaxElapsedTime:J

.field private mMaxTaskCount:I

.field private mMaxTaskCountTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/UiOffloadThread;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mLogList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsed:J

    iput-wide v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDuration:J

    return-void
.end method

.method public static synthetic lambda$5N3-ZlEkmBUcmN_YWQLS05yh9IY(Lcom/android/systemui/DebugUiOffloadThread;Ljava/lang/String;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/DebugUiOffloadThread;->taskEnded(Ljava/lang/String;JJJ)V

    return-void
.end method

.method private taskEnded(Ljava/lang/String;JJJ)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    cmp-long v1, p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "run duration:%d ms from\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "DebugUiOffloadThread"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0xf

    if-lt v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mLogList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->mLogList:Ljava/util/List;

    new-instance v5, Landroid/util/Pair;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDuration:J

    cmp-long v1, v4, p2

    if-gtz v1, :cond_3

    iput-wide p2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDuration:J

    iput-wide p6, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDurationTime:J

    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDurationCaller:Ljava/lang/String;

    :cond_3
    sub-long v4, p6, p4

    sget-boolean v1, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    if-eqz v1, :cond_5

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "DebugUiOffloadThread"

    const-string v6, "elapsed time:%s ms"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v1, v6, v2}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v1, "DebugUiOffloadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "elapsed time:%s ms from\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v1, v6, v2}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsed:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_6

    iput-wide v4, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsed:J

    iput-wide p6, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsedTime:J

    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsedCaller:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    if-eqz v1, :cond_7

    const-string v1, "DebugUiOffloadThread"

    const-string v2, "no remained task"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugUiOffloadThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCount:I

    if-eqz v2, :cond_0

    const-string v2, "  - Max count of queued task:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCountTime:J

    invoke-static {v2, v3}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsed:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-string v2, "  - Max elapsed time:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsedTime:J

    invoke-static {v2, v3}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxElapsedCaller:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDuration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-string v2, "  - Max duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDurationTime:J

    invoke-static {v2, v3}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxDurationCaller:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mLogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "  - Last warning msg:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mLogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "DebugUiOffloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "submit - count of queued task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCount:I

    if-gt v2, v1, :cond_2

    iput v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/DebugUiOffloadThread;->mMaxTaskCountTime:J

    :cond_2
    new-instance v2, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/systemui/util/LogUtil;->getCaller(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$5N3-ZlEkmBUcmN_YWQLS05yh9IY;

    invoke-direct {v4, p0}, Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$5N3-ZlEkmBUcmN_YWQLS05yh9IY;-><init>(Lcom/android/systemui/DebugUiOffloadThread;)V

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/DebugUiOffloadThread$Callback;Lcom/android/systemui/DebugUiOffloadThread$1;)V

    invoke-super {p0, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
