.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureDetectAds"
.end annotation


# static fields
.field private static final ACTIVE_DELAY_MS:I = 0x7d0

.field private static final FUNCTION:Ljava/lang/String; = "detectads"

.field private static final MODULE:Ljava/lang/String; = "FeatureDetectAds"


# instance fields
.field private mActiveState:Z

.field private mForegroundUid:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreviousUid:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureDetectAds"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    iput v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/android/server/sepunion/SemGoodCatchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I
    .registers 2

    iget v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)[Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->getPackageName(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isActiveState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I
    .registers 2

    iget v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object v0
.end method

.method private getPackageName(I)[Ljava/lang/String;
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_b

    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    :goto_11
    if-nez v0, :cond_1a

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_1a
    return-object v0
.end method

.method private isActiveState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    return v0
.end method

.method private process(Z)V
    .registers 5

    if-eqz p1, :cond_1b

    :try_start_2
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_2f

    :catch_19
    move-exception v0

    goto :goto_30

    :cond_1b
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_19

    :goto_2f
    goto :goto_3d

    :goto_30
    nop

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception - ProcessObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public off()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->off()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    :cond_d
    return-void
.end method

.method public on()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isOn()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->on()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    :cond_d
    return-void
.end method

.method public reset()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->off()V

    return-void
.end method

.method public setActiveState(Z)V
    .registers 5

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    return-void
.end method
