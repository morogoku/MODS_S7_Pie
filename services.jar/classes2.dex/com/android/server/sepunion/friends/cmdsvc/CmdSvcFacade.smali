.class public Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;
.super Ljava/lang/Object;
.source "CmdSvcFacade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final WAIT_TIMEOUT:I = 0x7d0


# instance fields
.field private final mBlockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mCompleted:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_14

    if-eqz p1, :cond_14

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_2f
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    :cond_14
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_47

    :try_start_18
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    goto :goto_47

    :catchall_2d
    move-exception v0

    goto :goto_48

    :catch_2f
    move-exception v1

    :try_start_30
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2d

    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_47

    :try_start_37
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_46} :catch_28

    goto :goto_2c

    :cond_47
    :goto_47
    return v0

    :goto_48
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_60

    :try_start_4c
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_5b} :catch_5c

    :cond_5b
    goto :goto_60

    :catch_5c
    move-exception v1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    throw v0
.end method

.method public static synthetic lambda$perform$0(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;Landroid/os/Message;)Z
    .registers 4

    invoke-direct {p0, p2, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public perform(Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;

    invoke-direct {v5, p0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;-><init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v2, v3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object v2

    if-eqz v2, :cond_52

    if-eqz p1, :cond_52

    const/4 v3, 0x0

    :try_start_26
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2a} :catch_3f
    .catchall {:try_start_26 .. :try_end_2a} :catchall_3d

    if-eqz v4, :cond_52

    :try_start_2c
    iget-object v4, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_36} :catch_38
    .catchall {:try_start_2c .. :try_end_36} :catchall_3d

    move-object v0, v4

    goto :goto_52

    :catch_38
    move-exception v4

    :try_start_39
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3f
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_52

    :catchall_3d
    move-exception v4

    goto :goto_41

    :catch_3f
    move-exception v3

    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    :goto_41
    if-eqz v2, :cond_51

    if-eqz v3, :cond_4e

    :try_start_45
    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_51

    :catch_49
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_51

    :cond_4e
    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_51
    :goto_51
    throw v4

    :cond_52
    :goto_52
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    return-object v0
.end method
