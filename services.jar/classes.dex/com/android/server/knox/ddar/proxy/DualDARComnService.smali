.class public Lcom/android/server/knox/ddar/proxy/DualDARComnService;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyService$Stub;
.source "DualDARComnService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final DUALDAR_AGENT:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final DUALDAR_AGENT_METADATA:Ljava/lang/String; = "proxyAgent.class"

.field public static final MSG_AGENT_DIED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DualDARComnService"

.field private static final VERBOSE:Z = false


# instance fields
.field private final SYSTEM_PROXY_AGENT:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;",
            "Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyAgentsLock:Ljava/lang/Object;

.field private mRegisteredProxyAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredProxyAgentsLock:Ljava/lang/Object;

.field private mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyService$Stub;-><init>()V

    const-string v0, "SYSTEM_PROXY_AGENT"

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->SYSTEM_PROXY_AGENT:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;

    invoke-direct {v0, p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;

    invoke-direct {v0, p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectAgentsByUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectAgentsByPkgName(Ljava/lang/String;)V

    return-void
.end method

.method private connectAgentsByPkgName(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v5, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-direct {p0, v4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Z

    :cond_34
    goto :goto_d

    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private connectAgentsByUser(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget v5, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    if-ne v5, p1, :cond_2c

    invoke-direct {p0, v4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Z

    :cond_2c
    goto :goto_d

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBindPending()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_27

    :cond_21
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_27
    :goto_27
    monitor-exit v0

    return v2

    :cond_29
    :goto_29
    new-instance v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v3

    if-nez v3, :cond_55

    const-string v2, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return v4

    :cond_55
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v2

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private connectProxyAgentSync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .registers 8

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_b4

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    if-eqz v3, :cond_17

    return-object v1

    :cond_17
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBindPending()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "DualDARComnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    :cond_40
    return-object v1

    :cond_41
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_44
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_51

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    monitor-exit v3

    goto :goto_56

    :catchall_53
    move-exception v0

    monitor-exit v3
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    :goto_56
    new-instance v3, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    move-object v1, v3

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    move-result v3

    if-nez v3, :cond_81

    const-string v3, "DualDARComnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    :cond_81
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_84
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-object v1, v0

    goto :goto_af

    :cond_a4
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    :cond_aa
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_af
    monitor-exit v2

    return-object v1

    :catchall_b1
    move-exception v0

    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_84 .. :try_end_b3} :catchall_b1

    throw v0

    :catchall_b4
    move-exception v1

    :try_start_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v1
.end method

.method private deregisterAgentInternal(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    if-nez v1, :cond_2d

    const-string v2, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Proxy Agent Not Registered Agent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "No action taken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v0

    return-void

    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->disconnectProxyAgent(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private disconnectProxyAgent(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->disconnect()V

    :cond_1c
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private enforceCallingUser()V
    .registers 4

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "enforceCallingUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_18

    return-void

    :cond_18
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_23

    return-void

    :cond_23
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private findProxyAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 13

    const-string v0, "DualDARComnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "findProxyAgentByAction : agent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :try_start_33
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_73

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_72

    new-instance v5, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {v5, p1, p2, v7}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_70} :catch_74

    move-object v0, v5

    goto :goto_73

    :cond_72
    goto :goto_4f

    :cond_73
    :goto_73
    goto :goto_78

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_78
    if-nez v0, :cond_a3

    const-string v1, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Proxy Agent Not Found : for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_bb

    :cond_a3
    const-string v1, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Proxy Agent Found =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_bb
    return-object v0
.end method

.method private findProxyAgentByMetaData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 13

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    :try_start_e
    invoke-interface {v0, p3, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-interface {v0, p3, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    if-nez v1, :cond_1b

    goto :goto_3d

    :cond_1b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object v3, v6

    if-nez v3, :cond_24

    return-object v2

    :cond_24
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v6

    invoke-virtual {v3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v5, :cond_3c

    if-nez v4, :cond_31

    goto :goto_3c

    :cond_31
    new-instance v6, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, p1, p2, v7}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    return-object v6

    :cond_3c
    :goto_3c
    return-object v2

    :cond_3d
    :goto_3d
    const-string v3, "DualDARComnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5f} :catch_60

    return-object v2

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method private init()V
    .registers 9

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->init()V

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->initKnownProxyAgents()V

    return-void
.end method

.method private initDualDARAgentsIfRequired()V
    .registers 6

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "KNOXCORE_PROXY_AGENT"

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.knox.containercore"

    const-string/jumbo v4, "proxyAgent.class"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    :cond_17
    return-void
.end method

.method private initKnownProxyAgents()V
    .registers 4

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "initKnownProxyAgents"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->initDualDARAgentsIfRequired()V

    return-void
.end method

.method private isDualDAREnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method private registerAgentByActionInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-object v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    monitor-exit v1

    return v2

    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findProxyAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_25

    const-string v2, "DualDARComnService"

    const-string v3, "Knox Proxy Agent Not found"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v1

    return v4

    :cond_25
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_33

    if-eqz p5, :cond_32

    invoke-direct {p0, v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Z

    :cond_32
    return v2

    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method private registerAgentByMetadataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    monitor-exit v1

    return v2

    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findProxyAgentByMetaData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_21

    const-string v2, "DualDARComnService"

    const-string v3, "Knox Proxy Agent Not found"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v1

    return v4

    :cond_21
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2f

    if-eqz p5, :cond_2e

    invoke-direct {p0, v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Z

    :cond_2e
    return v2

    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method


# virtual methods
.method public deregisterAgent(Ljava/lang/String;)V
    .registers 5

    const-string v0, "DualDARComnService"

    const-string v1, "deregisterAgent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->deregisterAgentInternal(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleAgentDied(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .registers 7

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "handleAgentDied"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_65

    :try_start_1c
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-interface {v0, v1, v3}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not installed service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_52
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_55} :catch_56

    goto :goto_64

    :catch_56
    move-exception v0

    const-string v1, "DualDARComnService"

    const-string/jumbo v3, "reconnectService remote exception"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_64
    return-void

    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public registerAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "registerAgentByAction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->registerAgentByActionInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const-string v0, "DualDARComnService"

    const-string/jumbo v1, "registerAgentByMetadata"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->registerAgentByMetadataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const-string v0, "SYSTEM_PROXY_AGENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v1, "DualDARComnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relay: Agent not found, agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    return-object v1

    :cond_39
    invoke-direct {p0, v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method public systemReady()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->init()V

    return-void
.end method
