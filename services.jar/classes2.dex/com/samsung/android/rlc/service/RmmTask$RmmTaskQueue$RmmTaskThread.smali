.class public Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;
.super Ljava/lang/Thread;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RmmTaskThread"
.end annotation


# instance fields
.field private mQuit:Z

.field final synthetic this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->mQuit:Z

    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->mQuit:Z

    invoke-virtual {p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->interrupt()V

    :cond_c
    return-void
.end method

.method public run()V
    .registers 5

    :goto_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v1, "[RmmTaskQueue] take"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    # getter for: Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->access$100(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    if-nez v0, :cond_21

    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v2, "[RmmTaskQueue] destroyed by Timer"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    iget-object v1, v1, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->this$0:Lcom/samsung/android/rlc/service/RmmTask;

    iget-object v2, v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;->intent:Landroid/content/Intent;

    # invokes: Lcom/samsung/android/rlc/service/RmmTask;->handleIntent(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->access$200(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_49

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RmmTaskQueue] Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    goto :goto_0
.end method
