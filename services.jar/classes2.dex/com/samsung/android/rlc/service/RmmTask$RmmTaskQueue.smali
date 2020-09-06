.class public Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
.super Ljava/lang/Object;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/service/RmmTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RmmTaskQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;
    }
.end annotation


# instance fields
.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/rlc/service/RmmTask;

.field private thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;Ljava/util/concurrent/BlockingQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->this$0:Lcom/samsung/android/rlc/service/RmmTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    :try_start_a
    iput-object p3, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    # setter for: Lcom/samsung/android/rlc/service/RmmTask;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/samsung/android/rlc/service/RmmTask;->access$002(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Context;)Landroid/content/Context;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_d
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string v1, "[RmmTask] Thread is null"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;-><init>(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->thread:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->start()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_48

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_48

    goto :goto_2a

    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2a
    sget-object v0, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RmmTask] queue size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method
