.class public Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
.super Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;
.source "SystemProxyAgent.java"


# static fields
.field private static final DAEMON_PROXY_SERVICE:Ljava/lang/String; = "DAEMON_PROXY_SERVICE"

.field private static final DDAR_CACHE_SERVICE:Ljava/lang/String; = "DDAR_CACHE_SERVICE"

.field private static final DDAR_LOG_SERVICE:Ljava/lang/String; = "DDAR_LOG_SERVICE"

.field private static final STATE_MACHINE_SERVICE:Ljava/lang/String; = "STATE_MACHINE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "SystemProxyAgent"

.field private static final TA_PROXY_SERVICE:Ljava/lang/String; = "TA_PROXY_SERVICE"

.field public static mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
    .registers 3

    const-class v0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;->onCreate()V

    const-string v0, "TA_PROXY_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/ta/TAProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/ta/TAProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DAEMON_PROXY_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "STATE_MACHINE_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DDAR_LOG_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    const-string v0, "DDAR_CACHE_SERVICE"

    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDCache;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    return-void
.end method
