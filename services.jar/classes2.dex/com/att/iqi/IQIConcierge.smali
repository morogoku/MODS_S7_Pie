.class public final Lcom/att/iqi/IQIConcierge;
.super Ljava/lang/Object;
.source "IQIConcierge.java"


# static fields
.field private static sInstance:Lcom/att/iqi/IQIConcierge;


# instance fields
.field private mAppReceiver:Lcom/att/iqi/DetailedAppReceiver;

.field private mClient:Lcom/att/iqi/lib/IQIManager;

.field private final mContext:Landroid/content/Context;

.field private mGenOS09:Lcom/att/iqi/GenOS09;

.field private mWifiReceiver:Lcom/att/iqi/WiFiReceiver;

.field serviceReceiver:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/att/iqi/IQIConcierge$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIConcierge$1;-><init>(Lcom/att/iqi/IQIConcierge;)V

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->serviceReceiver:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    iput-object p1, p0, Lcom/att/iqi/IQIConcierge;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v1, p0, Lcom/att/iqi/IQIConcierge;->serviceReceiver:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    new-instance v0, Lcom/att/iqi/WiFiReceiver;

    iget-object v1, p0, Lcom/att/iqi/IQIConcierge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v0, v1, v2}, Lcom/att/iqi/WiFiReceiver;-><init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mWifiReceiver:Lcom/att/iqi/WiFiReceiver;

    new-instance v0, Lcom/att/iqi/GenOS09;

    iget-object v1, p0, Lcom/att/iqi/IQIConcierge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v0, v1, v2}, Lcom/att/iqi/GenOS09;-><init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mGenOS09:Lcom/att/iqi/GenOS09;

    new-instance v0, Lcom/att/iqi/DetailedAppReceiver;

    iget-object v1, p0, Lcom/att/iqi/IQIConcierge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v0, v1, v2}, Lcom/att/iqi/DetailedAppReceiver;-><init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/IQIConcierge;->mAppReceiver:Lcom/att/iqi/DetailedAppReceiver;

    goto :goto_4a

    :cond_3f
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "Failed to get IQIManager"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/IQIConcierge;)Lcom/att/iqi/lib/IQIManager;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mClient:Lcom/att/iqi/lib/IQIManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/att/iqi/IQIConcierge;)V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/IQIConcierge;->startMetricReceiver()V

    return-void
.end method

.method static synthetic access$200(Lcom/att/iqi/IQIConcierge;)V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/IQIConcierge;->stopMetricReceiver()V

    return-void
.end method

.method public static enableDebugLogs(Z)V
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/LogUtil;->enableLogging(Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/att/iqi/IQIConcierge;->sInstance:Lcom/att/iqi/IQIConcierge;

    if-nez v0, :cond_b

    new-instance v0, Lcom/att/iqi/IQIConcierge;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIConcierge;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/att/iqi/IQIConcierge;->sInstance:Lcom/att/iqi/IQIConcierge;

    :cond_b
    return-void
.end method

.method private startMetricReceiver()V
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mWifiReceiver:Lcom/att/iqi/WiFiReceiver;

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Start Listening"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mWifiReceiver:Lcom/att/iqi/WiFiReceiver;

    invoke-virtual {v0}, Lcom/att/iqi/WiFiReceiver;->startListening()V

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mGenOS09:Lcom/att/iqi/GenOS09;

    invoke-virtual {v0}, Lcom/att/iqi/GenOS09;->startListening()V

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mAppReceiver:Lcom/att/iqi/DetailedAppReceiver;

    invoke-virtual {v0}, Lcom/att/iqi/DetailedAppReceiver;->startListening()V

    :cond_1e
    return-void
.end method

.method private stopMetricReceiver()V
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mWifiReceiver:Lcom/att/iqi/WiFiReceiver;

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Stop Listening"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mWifiReceiver:Lcom/att/iqi/WiFiReceiver;

    invoke-virtual {v0}, Lcom/att/iqi/WiFiReceiver;->endListening()V

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mGenOS09:Lcom/att/iqi/GenOS09;

    invoke-virtual {v0}, Lcom/att/iqi/GenOS09;->endListening()V

    iget-object v0, p0, Lcom/att/iqi/IQIConcierge;->mAppReceiver:Lcom/att/iqi/DetailedAppReceiver;

    invoke-virtual {v0}, Lcom/att/iqi/DetailedAppReceiver;->endListen()V

    :cond_1e
    return-void
.end method
