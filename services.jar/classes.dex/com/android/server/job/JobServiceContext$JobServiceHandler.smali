.class Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1b

    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->access$000(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    # getter for: Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;
    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v2

    if-ne v1, v2, :cond_32

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    # invokes: Lcom/android/server/job/JobServiceContext;->handleOpTimeoutLocked()V
    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->access$200(Lcom/android/server/job/JobServiceContext;)V

    goto :goto_6a

    :cond_32
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/JobServiceContext$JobCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring timeout of no longer active job"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v3, :cond_61

    const-string v3, ", stopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v3, " because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    const-string v3, "JobServiceContext"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    monitor-exit v0

    nop

    :goto_6c
    return-void

    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_22 .. :try_end_6f} :catchall_6d

    throw v1
.end method
