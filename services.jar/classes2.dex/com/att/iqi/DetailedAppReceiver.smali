.class public Lcom/att/iqi/DetailedAppReceiver;
.super Lcom/att/iqi/ReceiverMetricSource;
.source "DetailedAppReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_APPLICATION_STATE:Ljava/lang/String; = "com.att.iqi.action.APPLICATION_STATE"

.field public static final BAD_PID:I = -0x1

.field public static final BAD_RUN_APP_ID:I = -0x1

.field private static final EXTRA_APPLICATION_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APPLICATION_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APPLICATION_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field private static final EXTRA_INSTANCE_ID:Ljava/lang/String; = "AppInstance"

.field private static final EXTRA_PROCESS_ID:Ljava/lang/String; = "PID"


# instance fields
.field private mAMG:Lcom/att/iqi/GenUI46;

.field private mAppStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V
    .registers 4

    invoke-direct {p0}, Lcom/att/iqi/ReceiverMetricSource;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/DetailedAppReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/att/iqi/DetailedAppReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    new-instance v0, Lcom/att/iqi/DetailedAppReceiver$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/DetailedAppReceiver$1;-><init>(Lcom/att/iqi/DetailedAppReceiver;)V

    iput-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mAppStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/DetailedAppReceiver;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/DetailedAppReceiver;->handleStartAppState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/att/iqi/DetailedAppReceiver;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/DetailedAppReceiver;->handleExitedAppState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/att/iqi/DetailedAppReceiver;)Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mHandler:Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/att/iqi/DetailedAppReceiver;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/DetailedAppReceiver;->handleUnknownAppState(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    const-string v0, "ApplicationPackageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "DetailedAppReceiver: Application Package Name not found"

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logw(Ljava/lang/String;)V

    :cond_13
    return-object v0
.end method

.method private handleExitedAppState(Landroid/content/Intent;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/att/iqi/DetailedAppReceiver;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationTermReason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v1, :cond_15

    const-string v1, "UNKNOWN"

    :cond_15
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AppState=EXITED TermReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_4b
    if-nez v0, :cond_4e

    return-void

    :cond_4e
    iget-object v3, p0, Lcom/att/iqi/DetailedAppReceiver;->mAMG:Lcom/att/iqi/GenUI46;

    invoke-virtual {v3, v0, v2}, Lcom/att/iqi/GenUI46;->processAppExit(Ljava/lang/String;I)V

    return-void
.end method

.method private handleStartAppState(Landroid/content/Intent;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/att/iqi/DetailedAppReceiver;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "AppInstance"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AppState=START PID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_3f
    if-nez v0, :cond_42

    return-void

    :cond_42
    iget-object v3, p0, Lcom/att/iqi/DetailedAppReceiver;->mAMG:Lcom/att/iqi/GenUI46;

    invoke-virtual {v3, v0, v1, v2}, Lcom/att/iqi/GenUI46;->processAppStart(Ljava/lang/String;II)V

    return-void
.end method

.method private handleUnknownAppState(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, p1}, Lcom/att/iqi/DetailedAppReceiver;->getAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " PackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Unknown AppState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_32
    return-void
.end method


# virtual methods
.method protected beginListening()V
    .registers 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dar"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "Looper cannot be null"

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_21
    return-void

    :cond_22
    new-instance v1, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;-><init>(Lcom/att/iqi/DetailedAppReceiver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/att/iqi/DetailedAppReceiver;->mHandler:Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.att.iqi.action.APPLICATION_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/att/iqi/DetailedAppReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/DetailedAppReceiver;->mAppStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "Detailed app state receiver registered"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method protected endListen()V
    .registers 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "UI46 unregistered"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected endListening()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/DetailedAppReceiver;->mAppStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :try_start_c
    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "Waiting for bg thread to finish..."

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "Bg thread is done"

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_31} :catch_32

    :cond_31
    goto :goto_33

    :catch_32
    move-exception v0

    :goto_33
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "Detailed app state receiver unregistered"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method protected getMetricList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/Metric$ID;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/att/iqi/GenUI46;->getMetricList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onProfileChanged()V
    .registers 2

    invoke-super {p0}, Lcom/att/iqi/ReceiverMetricSource;->onProfileChanged()V

    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mAMG:Lcom/att/iqi/GenUI46;

    invoke-virtual {v0}, Lcom/att/iqi/GenUI46;->onProfileChanged()V

    return-void
.end method

.method protected startListening()V
    .registers 3

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Init Detailed app receiver"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "No IQIManager"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mAMG:Lcom/att/iqi/GenUI46;

    if-nez v0, :cond_28

    new-instance v0, Lcom/att/iqi/GenUI46;

    iget-object v1, p0, Lcom/att/iqi/DetailedAppReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/att/iqi/GenUI46;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/att/iqi/DetailedAppReceiver;->mAMG:Lcom/att/iqi/GenUI46;

    :cond_28
    invoke-virtual {p0}, Lcom/att/iqi/DetailedAppReceiver;->startListen()V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "UI46 registered"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_36
    return-void
.end method
