.class public Lcom/android/server/sepunion/SemGoodCatchService;
.super Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;
.source "SemGoodCatchService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;,
        Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;
    }
.end annotation


# static fields
.field private static final ACTION_GOOD_CATCH_URI:Ljava/lang/String; = "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

.field private static final DB_EXTRA:Ljava/lang/String; = "extra"

.field private static final DB_FUNCTION:Ljava/lang/String; = "function"

.field private static final DB_MESSAGE:Ljava/lang/String; = "message"

.field private static final DB_MODULE:Ljava/lang/String; = "module"

.field private static final DB_PACKAGE:Ljava/lang/String; = "package"

.field private static final DB_TIME:Ljava/lang/String; = "time"

.field private static final DB_VALUE:Ljava/lang/String; = "value"

.field private static final EXTRA_EVENT_URI:Ljava/lang/String; = "EVENT_LIST_URI"

.field private static final EXTRA_SETTING_URI:Ljava/lang/String; = "ONOFF_SETTING_URI"

.field private static final MSG_CREATE_FEATURE:I = 0x0

.field private static final MSG_CREATE_OBSERVER:I = 0x3

.field private static final MSG_UPDATE_DETECT_ADS_STATE:I = 0x4

.field private static final MSG_UPDATE_EVENT:I = 0x2

.field private static final MSG_UPDATE_SETTING:I = 0x1

.field private static final MSG_WRITING_WAKEUP_WRITE_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

.field private mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

.field private mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

.field private mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

.field private mGoodCatchClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

.field private mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

.field private mGoodCatchThread:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    return-object p1
.end method

.method static synthetic access$500(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->createFeature()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->createObserver()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    return-object v0
.end method

.method private createFeature()V
    .registers 2

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    return-void
.end method

.method private createGoodCatchThread()V
    .registers 2

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchThread:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchThread:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->start()V

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->waitForGoodCatchHandlerCreation()V

    return-void
.end method

.method private createObserver()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    :cond_1b
    return-void
.end method

.method private init()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->createGoodCatchThread()V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method private sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p5

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private waitForGoodCatchHandlerCreation()V
    .registers 4

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_12

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    :goto_8
    goto :goto_1

    :catch_9
    move-exception v0

    :try_start_a
    sget-object v1, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting on vibrator handler."

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v0, "\n##### GoodCatchService #####\n##### (dumpsys sepunion goodcatch) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-virtual {v0, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nGoodCatchClient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    invoke-virtual {v2, p2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->dump(Ljava/io/PrintWriter;)V

    goto :goto_40

    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_52

    throw v1
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 5

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_17

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/sepunion/SemGoodCatchService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v1, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    const-string v2, "PHASE_BOOT_COMPLETED, send com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    .registers 13

    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_22
    new-instance v7, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V

    move-object v1, v7

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public update([Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method
