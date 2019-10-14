.class public Lcom/android/systemui/util/AnrDetector;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AnrDetector.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final sInstance:Lcom/android/systemui/util/AnrDetector;


# instance fields
.field private mAnrCount:I

.field private mAwakeCount:I

.field private final mBlockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsPaused:Z

.field private mLastAwakeTime:J

.field private mLastStackTrace:Ljava/lang/String;

.field private mLastStackTraceTime:J

.field private final mLooper:Landroid/os/Looper;

.field private mLooperMsgLog:Z

.field private mLooperSlowLog:Z

.field private final mMainThread:Ljava/lang/Thread;

.field private final mMonitorThread:Ljava/lang/Thread;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/AnrDetector;

    invoke-direct {v0}, Lcom/android/systemui/util/AnrDetector;-><init>()V

    sput-object v0, Lcom/android/systemui/util/AnrDetector;->sInstance:Lcom/android/systemui/util/AnrDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooper:Landroid/os/Looper;

    iput-boolean v1, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    iput v0, p0, Lcom/android/systemui/util/AnrDetector;->mAwakeCount:I

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AnrDetector$nwY3LvBpnk9ssNvhcqaFvH7M268;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/-$$Lambda$AnrDetector$nwY3LvBpnk9ssNvhcqaFvH7M268;-><init>(Lcom/android/systemui/util/AnrDetector;)V

    iput-object v1, p0, Lcom/android/systemui/util/AnrDetector;->mRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooperSlowLog:Z

    iput-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooperMsgLog:Z

    iget-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mMainThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AnrDetector$5Ta4rS3oo2C8Pn0znkWpbFpW7kM;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/-$$Lambda$AnrDetector$5Ta4rS3oo2C8Pn0znkWpbFpW7kM;-><init>(Lcom/android/systemui/util/AnrDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mMonitorThread:Ljava/lang/Thread;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/util/AnrDetector;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/AnrDetector;->sInstance:Lcom/android/systemui/util/AnrDetector;

    return-object v0
.end method

.method private isDisabled()Z
    .locals 2

    const-string v0, "debug.sysui.anr_detector.disabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UiThreadMonitor"

    const-string v1, "AnrDetector is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$5Ta4rS3oo2C8Pn0znkWpbFpW7kM(Lcom/android/systemui/util/AnrDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->run()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/util/AnrDetector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/AnrDetector;->setAwake(I)V

    return-void
.end method

.method static synthetic lambda$updateLooperMsgLog$1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UiThreadMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private pause()V
    .locals 1

    const-string v0, "pause"

    invoke-static {v0}, Lcom/android/systemui/util/AnrDetector;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    return-void
.end method

.method private resume()V
    .locals 1

    const-string v0, "resume"

    invoke-static {v0}, Lcom/android/systemui/util/AnrDetector;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/util/AnrDetector;->setAwake(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    return-void
.end method

.method private run()V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->updateLooperMsgLog()V

    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->updateLooperShowSlowLog()V

    iget-boolean v1, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    if-eqz v1, :cond_1

    const-wide/32 v2, 0x5265c00

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1f40

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/util/AnrDetector;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/util/AnrDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/util/AnrDetector;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/util/AnrDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/util/AnrDetector;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v4, 0x0

    const/16 v5, 0xa

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/util/AnrDetector;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/util/AnrDetector;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v2, v3, v7}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    iget v6, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTraceTime:J

    iget-object v6, p0, Lcom/android/systemui/util/AnrDetector;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UiThreadMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*** Traced call stack: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " **\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v8, v6

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    const-string v11, "   "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception v6

    goto/16 :goto_3

    :catch_0
    move-exception v6

    :try_start_1
    const-string v7, "UiThreadMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "run exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    iget v6, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTraceTime:J

    iget-object v6, p0, Lcom/android/systemui/util/AnrDetector;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UiThreadMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*** Traced call stack: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " **\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v8, v6

    move v9, v0

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    const-string v11, "   "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTrace:Ljava/lang/String;

    const-string v5, "UiThreadMonitor"

    iget-object v8, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTrace:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :goto_3
    if-nez v1, :cond_6

    if-nez v4, :cond_6

    iget v7, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTraceTime:J

    iget-object v7, p0, Lcom/android/systemui/util/AnrDetector;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UiThreadMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*** Traced call stack: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " **\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v9, v7

    :goto_4
    if-ge v0, v9, :cond_5

    aget-object v10, v7, v0

    const-string v11, "   "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTrace:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTrace:Ljava/lang/String;

    const-string v5, "UiThreadMonitor"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v6
.end method

.method private setAwake(I)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "UiThreadMonitor"

    const-string v4, "setAwake %d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui/util/AnrDetector;->mAwakeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-wide v6, p0, Lcom/android/systemui/util/AnrDetector;->mLastAwakeTime:J

    sub-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v1, p0, Lcom/android/systemui/util/AnrDetector;->mLastAwakeTime:J

    iget v3, p0, Lcom/android/systemui/util/AnrDetector;->mAwakeCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/systemui/util/AnrDetector;->mAwakeCount:I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/AnrDetector;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private updateLooperMsgLog()V
    .locals 3

    const-string v0, "debug.sysui.looper.msg_log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooperMsgLog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooper:Landroid/os/Looper;

    sget-object v1, Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;->INSTANCE:Lcom/android/systemui/util/-$$Lambda$AnrDetector$uNQYm6JPZcFEIN5s3qNkMcQjg9U;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooperMsgLog:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooperMsgLog:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mLooper:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    iput-boolean v1, p0, Lcom/android/systemui/util/AnrDetector;->mLooperMsgLog:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLooperShowSlowLog()V
    .locals 10

    const-wide/16 v0, -0x1

    const-wide/16 v2, -0x1

    const-string v4, "debug.sysui.looper.slow_log"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/util/AnrDetector;->mLooperSlowLog:Z

    if-nez v4, :cond_1

    const-string v4, "debug.sysui.looper.slow_dispatch"

    const-wide/16 v7, 0x32

    invoke-static {v4, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "debug.sysui.looper.slow_delivery"

    invoke-static {v4, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-boolean v6, p0, Lcom/android/systemui/util/AnrDetector;->mLooperSlowLog:Z

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/util/AnrDetector;->mLooperSlowLog:Z

    if-eqz v4, :cond_1

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/util/AnrDetector;->mLooperSlowLog:Z

    :cond_1
    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v4, v0, v7

    if-lez v4, :cond_2

    cmp-long v4, v2, v7

    if-lez v4, :cond_2

    const-string v4, "UiThreadMonitor"

    const-string v7, "updateLooperShowSlowLog dispatch=%d ms, delivery=%d ms"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v4, v7, v8}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/util/AnrDetector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v4, v0, v1, v0, v1}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnrDetector state:\n  monitorThread state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/AnrDetector;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/AnrDetector;->mIsPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/AnrDetector;->mAnrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  mainThread state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/AnrDetector;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTrace:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  lastStackTrace=[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  ], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/util/AnrDetector;->mLastStackTraceTime:J

    invoke-static {v2, v3}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/util/AnrDetector;->mLastAwakeTime:J

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/util/AnrDetector;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnrDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 3

    const-string v0, "UiThreadMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->pause()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/util/AnrDetector;->resume()V

    :goto_0
    return-void
.end method
