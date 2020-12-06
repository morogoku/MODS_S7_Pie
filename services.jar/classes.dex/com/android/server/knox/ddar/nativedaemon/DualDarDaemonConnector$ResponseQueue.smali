.class Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    iput p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    iget v4, v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_1c

    move-object v0, v3

    goto :goto_1d

    :cond_1c
    goto :goto_a

    :cond_1d
    :goto_1d
    if-nez v0, :cond_91

    :goto_1f
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v2, v3, :cond_85

    const-string v2, "DualDarDaemonConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more buffered than allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    const-string v3, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1f

    :cond_85
    new-instance v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_91
    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v2, :cond_a0

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_4 .. :try_end_a1} :catchall_a9

    :try_start_a1
    iget-object v1, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v1

    :goto_a8
    return-void

    :catchall_a9
    move-exception v2

    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "Pending requests:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public remove(ILjava/lang/String;I)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    iget v4, v3, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_1c

    move-object v0, v3

    goto :goto_1d

    :cond_1c
    goto :goto_a

    :cond_1d
    :goto_1d
    if-nez v0, :cond_2a

    new-instance v2, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p2}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2a
    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    iget v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_56

    const/4 v1, 0x0

    :try_start_3b
    iget-object v2, v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v3, p3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_46} :catch_48

    move-object v1, v2

    goto :goto_49

    :catch_48
    move-exception v2

    :goto_49
    if-nez v1, :cond_55

    const-string v2, "DualDarDaemonConnector"

    const-string v3, "Timeout waiting for response"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_55
    return-object v1

    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2
.end method
