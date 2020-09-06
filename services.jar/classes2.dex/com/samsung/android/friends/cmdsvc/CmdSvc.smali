.class public final Lcom/samsung/android/friends/cmdsvc/CmdSvc;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Lcom/samsung/android/friends/cmdsvc/CmdSvcOperation;


# static fields
.field private static final MSG_TYPE_CMD:I = 0x0

.field private static final MSG_TYPE_MAP:I = 0x1

.field private static final MSG_TYPE_SYS_EVENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CmdSvc"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/os/Messenger;

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReplyMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    new-instance v0, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc$1;-><init>(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)V

    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_26

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method private connect(J)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.friendscmder"

    const-string v3, "com.samsung.android.friendscmder.FrsShellCmdExecutor"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    const-string v3, "SYSTEM"

    invoke-static {v3}, Lcom/samsung/android/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    :try_start_1f
    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_38

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    goto :goto_57

    :cond_39
    const-string v0, "CmdSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to bind svc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.samsung.android.friendscmder.FrsShellCmdExecutor"

    invoke-static {v3}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_57
    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_5f

    move v1, v4

    nop

    :cond_5f
    return v1
.end method

.method public static createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/friends/cmdsvc/CmdSvc;
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    const-string v0, "CmdSvc"

    const-string/jumbo v1, "wrong current thread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0

    :cond_17
    new-instance v0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->connect(J)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->close()V

    const/4 v0, 0x0

    :cond_28
    return-object v0
.end method

.method private getClient()Landroid/os/Messenger;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setClient(Landroid/os/Messenger;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method public command(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    const/4 v3, 0x0

    :try_start_9
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "paramStrA0"

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "sysSvcVer"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :cond_2c
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2f} :catch_31

    const/4 v0, 0x1

    goto :goto_35

    :catch_31
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    const-string v3, "CmdSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public mappedAccessory([B[BZ)Z
    .registers 11

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_40

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_9
    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5, p1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "extraData"

    invoke-virtual {v4, v5, p2}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "attached"

    invoke-virtual {v4, v5, p3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "sysSvcVer"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :cond_37
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3a} :catch_3c

    const/4 v0, 0x1

    goto :goto_40

    :catch_3c
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    const-string v2, "CmdSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mappedAccessory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public sysEvent(Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_27

    if-eqz p1, :cond_27

    :try_start_9
    const-string/jumbo v2, "sysSvcVer"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :cond_1e
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_21} :catch_23

    const/4 v0, 0x1

    goto :goto_27

    :catch_23
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    const-string v2, "CmdSvc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sysEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method
