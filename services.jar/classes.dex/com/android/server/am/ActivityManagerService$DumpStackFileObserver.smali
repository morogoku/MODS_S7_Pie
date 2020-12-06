.class public Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpStackFileObserver"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TRACE_DUMP_TIMEOUT_MS:I = 0x2710


# instance fields
.field private mClosed:Z

.field private final mTracesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dumpWithTimeout(IJ)J
    .registers 15

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    monitor-enter p0

    :try_start_f
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_15
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_1b

    :catchall_13
    move-exception v4

    goto :goto_6b

    :catch_15
    move-exception v4

    :try_start_16
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v6, v4, p2

    if-ltz v6, :cond_26

    return-wide v4

    :cond_26
    iget-boolean v6, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    if-nez v6, :cond_61

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Didn\'t see close of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Attempting native stack collection."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x7d0

    sub-long v8, p2, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    const-wide/16 v9, 0x3e8

    div-long v9, v6, v9

    long-to-int v9, v9

    invoke-static {p1, v8, v9}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    :cond_61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    sub-long v8, v6, v0

    return-wide v8

    :goto_6b
    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_13

    throw v4
.end method

.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
