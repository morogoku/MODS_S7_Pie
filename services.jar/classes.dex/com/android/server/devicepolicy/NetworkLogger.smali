.class final Lcom/android/server/devicepolicy/NetworkLogger;
.super Ljava/lang/Object;
.source "NetworkLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private final mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field private final mPm:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/devicepolicy/NetworkLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLogger$1;-><init>(Lcom/android/server/devicepolicy/NetworkLogger;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    return-object v0
.end method

.method private checkIpConnectivityMetricsService()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v1, 0x0

    return v1

    :cond_12
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    return v1
.end method


# virtual methods
.method discardLogs()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->discardLogs()V

    :cond_9
    return-void
.end method

.method pause()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->pause()V

    :cond_9
    return-void
.end method

.method resume()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->resume()V

    :cond_9
    return-void
.end method

.method retrieveLogs(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->retrieveFullLogBatch(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method startNetworkLogging()Z
    .registers 6

    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v1, "Starting network logging."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register callback with IIpConnectivityMetrics."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {v0, v2, v4}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_4a} :catch_4c

    return v3

    :cond_4b
    return v1

    :catch_4c
    move-exception v0

    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to make remote calls to register the callback"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method stopNetworkLogging()Z
    .registers 5

    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v1, "Stopping network logging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->discardLogs()V

    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister callback with IIpConnectivityMetrics."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_3b
    .catchall {:try_start_11 .. :try_end_1e} :catchall_39

    nop

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_28
    return v0

    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v1, v0}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_3b
    .catchall {:try_start_29 .. :try_end_2f} :catchall_39

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_38
    return v1

    :catchall_39
    move-exception v0

    goto :goto_4e

    :catch_3b
    move-exception v1

    :try_start_3c
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to make remote calls to unregister the callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    nop

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_4d
    return v0

    :goto_4e
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_57
    throw v0
.end method
