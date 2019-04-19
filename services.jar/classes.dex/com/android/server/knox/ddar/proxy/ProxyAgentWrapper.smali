.class public Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxService::ProxyAgentWrapper"


# instance fields
.field private mBindPending:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

.field private mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

.field public final mProxyAgentLock:Ljava/lang/Object;

.field private mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    new-instance v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;-><init>(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string v2, "ProxyAgentWrapper()"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V

    return-void
.end method

.method private triggerRestart()V
    .registers 5

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v1, "triggerRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public connectAsync()Z
    .registers 11

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "connectAsync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v1, v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    const-string v3, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already bound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v4

    :cond_3c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    iget-object v7, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    const v7, 0x4000001

    new-instance v8, Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget v9, v9, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    iget-boolean v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v5, :cond_7f

    const-string v4, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t bind to container service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v2

    :cond_7f
    monitor-exit v0

    return v4

    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_d .. :try_end_83} :catchall_81

    throw v1
.end method

.method public connectSync()Z
    .registers 7

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "connectSync"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_a
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_33

    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v1

    if-nez v1, :cond_28

    const-string v3, "KnoxService::ProxyAgentWrapper"

    const-string v4, "connection to Proxy Agent failed"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v1

    :cond_28
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_2d
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_30

    :try_start_32
    throw v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public disconnect()V
    .registers 5

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v1, "disconnect"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    iput-boolean v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_2c

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string v1, "Unbinding to agent done"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public isBindPending()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return v0
.end method

.method public isBound()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    const-string v0, "KnoxService::ProxyAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relay to Service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_1a
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_26

    return-object v0

    :cond_25
    goto :goto_52

    :catch_26
    move-exception v0

    const-string v1, "KnoxService::ProxyAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v4, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_52
    const/4 v0, 0x0

    return-object v0
.end method
