.class public Lcom/att/iqi/IQIServiceBroker;
.super Lcom/android/server/SystemService;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IQIServiceBroker$BinderService;,
        Lcom/att/iqi/IQIServiceBroker$ServiceState;
    }
.end annotation


# static fields
.field private static final IQI_DEBUG_ACTION:Ljava/lang/String; = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

.field private static final IQI_DEBUG_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_DEBUG"

.field private static final IQI_DEBUG_FILE:Ljava/lang/String; = "logify"

.field private static final IQI_DEBUG_FILE_PATH:Ljava/lang/String;

.field private static final IQI_STATE_ACTION:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field private static final IQI_STATE_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field private static final IQI_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_IQI_STATE_BROADCAST"

.field private static final MSG_CHECK_VALID:I = 0x2

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "IQIServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

.field private static final VALIDSIG:Ljava/lang/String; = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

.field private static sDebug:Z


# instance fields
.field private mApplicationEnabled:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

.field private mInitialServiceConnect:Z

.field private mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastServiceEnabled:Z

.field private final mMetricQueryCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricQueryCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMetricSourcingCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricSourcingCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IProfileChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mServicePublished:Z

.field private mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field private final mServiceStateChangeList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/att/iqi/IServiceStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStubForFailure:Lcom/att/iqi/IIQIService;

.field private mStateChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/IQIServiceBroker;->IQI_DEBUG_FILE_PATH:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.att.iqi"

    const-string v2, "com.att.iqi.service.IQService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mLastServiceEnabled:Z

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mInitialServiceConnect:Z

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$1;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$2;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$3;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$4;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$5;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$5;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$6;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$6;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->verifyDebugLogsState()V

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->registerPackageMonitor()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/att/iqi/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/att/iqi/IQIServiceBroker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->tryConnecting()V

    return-void
.end method

.method static synthetic access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/att/iqi/IQIServiceBroker;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IIQIService;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/att/iqi/IQIServiceBroker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->notifyServiceState(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/att/iqi/IQIServiceBroker;I)I
    .registers 2

    iput p1, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->unregisterReceivers()V

    return-void
.end method

.method static synthetic access$2000()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Lcom/att/iqi/IQIServiceBroker;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->maybeIsValidKeyCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    sput-boolean p0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    return p0
.end method

.method static synthetic access$500(Lcom/att/iqi/IQIServiceBroker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->setEnableLogs(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/att/iqi/IQIServiceBroker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->checkPkgValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/att/iqi/IQIServiceBroker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->appEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/att/iqi/IQIServiceBroker;)Z
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    return v0
.end method

.method private appEnabled()Z
    .registers 8

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v4, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_3f

    const-string v4, "IQIServiceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v6, :cond_33

    const-string v6, "enabled"

    goto :goto_35

    :cond_33
    const-string v6, "disabled"

    :goto_35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_3f} :catch_42
    .catchall {:try_start_a .. :try_end_3f} :catchall_40

    :cond_3f
    goto :goto_6b

    :catchall_40
    move-exception v1

    goto :goto_6f

    :catch_42
    move-exception v2

    :try_start_43
    iput-boolean v1, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    sget-boolean v1, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v1, :cond_6b

    const-string v1, "IQIServiceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find application information for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_43 .. :try_end_6c} :catchall_40

    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    return v1

    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_40

    throw v1
.end method

.method private checkPkgValidity()Z
    .registers 12

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_56

    const/16 v4, 0x40

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_56

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_56

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_22} :catch_5c
    .catchall {:try_start_b .. :try_end_22} :catchall_58

    move v7, v1

    move v1, v2

    :goto_24
    if-ge v1, v6, :cond_54

    :try_start_26
    aget-object v8, v5, v1

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    sget-boolean v9, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v9, :cond_3f

    const-string v9, "IQIServiceBroker"

    const-string v10, "Valid signature"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iput v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/4 v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_45
    sget-boolean v1, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v1, :cond_50

    const-string v1, "IQIServiceBroker"

    const-string v5, "Bad signature"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_50} :catch_52
    .catchall {:try_start_26 .. :try_end_50} :catchall_ca

    :cond_50
    :try_start_50
    monitor-exit p0

    return v2

    :catch_52
    move-exception v1

    goto :goto_5f

    :cond_54
    monitor-exit p0

    return v7

    :cond_56
    goto/16 :goto_c8

    :catchall_58
    move-exception v2

    move v7, v1

    move-object v1, v2

    goto :goto_cb

    :catch_5c
    move-exception v3

    move v7, v1

    move-object v1, v3

    :goto_5f
    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v3, :cond_85

    const-string v3, "IQIServiceBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find package information for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    iget v3, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_bc

    iget v3, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v3, :cond_ad

    const-string v3, "IQIServiceBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry check package, attempt # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c7

    :cond_bc
    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v3, :cond_c7

    const-string v3, "IQIServiceBroker"

    const-string v4, "Retried several times already, give up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_50 .. :try_end_c7} :catchall_ca

    :cond_c7
    :goto_c7
    move v1, v7

    :goto_c8
    :try_start_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_58

    return v2

    :catchall_ca
    move-exception v1

    :goto_cb
    :try_start_cb
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw v1
.end method

.method private getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 3

    invoke-static {p1}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v0

    return-object v0
.end method

.method private getOrConnectService()Lcom/att/iqi/IIQIService;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_45

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    nop

    :goto_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_42

    :try_start_23
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_45

    goto :goto_33

    :catch_27
    move-exception v4

    :try_start_28
    sget-boolean v5, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v5, :cond_33

    const-string v5, "IQIServiceBroker"

    const-string v6, "Connection wait interrupted"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v4

    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_1d

    :cond_42
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private getServiceComponent()Landroid/content/ComponentName;
    .registers 2

    sget-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method private maybeIsValidKeyCode(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "^#\\*47[\\d]+#$"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private notifyServiceState(Z)V
    .registers 8

    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_1b

    const-string v0, "IQIServiceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mLastServiceEnabled:Z

    if-eq p1, v0, :cond_2f

    if-eqz p1, :cond_28

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mInitialServiceConnect:Z

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->restoreCallbacks()V

    :cond_28
    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mInitialServiceConnect:Z

    :cond_2d
    iput-boolean p1, p0, Lcom/att/iqi/IQIServiceBroker;->mLastServiceEnabled:Z

    :cond_2f
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;

    monitor-enter v0

    :try_start_32
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/IServiceStateChangeCallback;
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_58

    :try_start_44
    invoke-interface {v2, p1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_58

    goto :goto_55

    :catch_48
    move-exception v3

    :try_start_49
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_55

    const-string v4, "IQIServiceBroker"

    const-string/jumbo v5, "notifyServiceState failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    :goto_55
    goto :goto_38

    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private registerPackageMonitor()V
    .registers 5

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$7;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$7;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method private registerReceivers(Z)V
    .registers 7

    if-eqz p1, :cond_13

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.att.iqi.permission.RECEIVE_IQI_STATE_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_13
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restoreCallbacks()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c9

    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_4d

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v5, v2

    :goto_1a
    if-ge v5, v4, :cond_3f

    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v6

    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    iget-object v8, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v8, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_3f
    iget-object v5, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_c6

    :try_start_4e
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_c9

    :try_start_51
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v3, v2

    :goto_58
    if-ge v3, v1, :cond_6c

    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v4

    iget-object v5, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {v4, v5}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_6c
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_51 .. :try_end_72} :catchall_c3

    :try_start_72
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_c9

    :try_start_75
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_7c
    if-ge v3, v1, :cond_be

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v5, v2

    :goto_8b
    if-ge v5, v4, :cond_b0

    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v6

    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    iget-object v8, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v8, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    :cond_b0
    iget-object v5, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_be
    monitor-exit v0

    goto :goto_d5

    :catchall_c0
    move-exception v1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_75 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw v1
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c3} :catch_c9

    :catchall_c3
    move-exception v1

    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw v1
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c6} :catch_c9

    :catchall_c6
    move-exception v1

    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw v1
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_c9} :catch_c9

    :catch_c9
    move-exception v0

    sget-boolean v1, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v1, :cond_d5

    const-string v1, "IQIServiceBroker"

    const-string v2, "Remote exception in restoreCallbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d5
    :goto_d5
    return-void
.end method

.method private setEnableLogs(Z)V
    .registers 8

    invoke-static {p1}, Lcom/att/iqi/IQIConcierge;->enableDebugLogs(Z)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/att/iqi/IQIServiceBroker;->IQI_DEBUG_FILE_PATH:Ljava/lang/String;

    const-string v2, "logify"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    const/16 v1, 0x31

    goto :goto_13

    :cond_11
    const/16 v1, 0x30

    :goto_13
    const/4 v2, 0x0

    :try_start_14
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v2, v3

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_26
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    nop

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    :goto_21
    goto :goto_3a

    :catch_22
    move-exception v3

    goto :goto_21

    :catchall_24
    move-exception v3

    goto :goto_3b

    :catch_26
    move-exception v3

    :try_start_27
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_34

    const-string v4, "IQIServiceBroker"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_24

    :cond_34
    if-eqz v2, :cond_3a

    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_22

    goto :goto_21

    :cond_3a
    :goto_3a
    return-void

    :goto_3b
    if-eqz v2, :cond_42

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    move-exception v4

    :cond_42
    :goto_42
    throw v3
.end method

.method private shouldConnect()Z
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private final tryConnecting()V
    .registers 7

    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "IQIServiceBroker"

    const-string v1, "Connecting to implementation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_1b

    const-string v0, "IQIServiceBroker"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    monitor-exit p0

    return-void

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_35

    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_33

    const-string v2, "IQIServiceBroker"

    const-string v3, "No implementation service found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    monitor-exit p0

    return-void

    :cond_35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/att/iqi/IQIBridgeLoader;->loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_c6

    :try_start_41
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_a8

    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_68

    const-string v2, "IQIServiceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to implementation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    iget v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_9d

    iget v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_8f

    const-string v2, "IQIServiceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry reconnecting, attempt # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a8

    :cond_9d
    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_a8

    const-string v2, "IQIServiceBroker"

    const-string v3, "Retried several times already, give up connecting"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_a8} :catch_a9
    .catchall {:try_start_41 .. :try_end_a8} :catchall_c6

    :cond_a8
    :goto_a8
    goto :goto_c4

    :catch_a9
    move-exception v2

    :try_start_aa
    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v3, :cond_c4

    const-string v3, "IQIServiceBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forbidden to bind to implementation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c4
    :goto_c4
    monitor-exit p0

    return-void

    :catchall_c6
    move-exception v0

    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_aa .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method private unregisterReceivers()V
    .registers 3

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private verifyDebugLogsState()V
    .registers 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/att/iqi/IQIServiceBroker;->IQI_DEBUG_FILE_PATH:Ljava/lang/String;

    const-string v2, "logify"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v2

    int-to-char v2, v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    sput-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    invoke-static {v3}, Lcom/att/iqi/IQIConcierge;->enableDebugLogs(Z)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_23} :catch_2c
    .catchall {:try_start_a .. :try_end_23} :catchall_2a

    nop

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    :goto_27
    goto :goto_40

    :catch_28
    move-exception v2

    goto :goto_27

    :catchall_2a
    move-exception v2

    goto :goto_41

    :catch_2c
    move-exception v2

    :try_start_2d
    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v3, :cond_3a

    const-string v3, "IQIServiceBroker"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_2a

    :cond_3a
    if-eqz v1, :cond_40

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_28

    goto :goto_27

    :cond_40
    :goto_40
    return-void

    :goto_41
    if-eqz v1, :cond_48

    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v3

    :cond_48
    :goto_48
    throw v2
.end method


# virtual methods
.method public final getBrokeredService()Lcom/att/iqi/IIQIService;
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getOrConnectService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_23

    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "IQIServiceBroker"

    const-string v1, "Third party apps ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/att/iqi/IQIConcierge;->init(Landroid/content/Context;)V

    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 4

    const-string v0, "iqi"

    new-instance v1, Lcom/att/iqi/IQIServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/att/iqi/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/IQIServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    return-void
.end method

.method public final tryDisconnecting()V
    .registers 3

    const-string v0, "IQIServiceBroker"

    const-string v1, "Disconnecting from implementation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-nez v0, :cond_15

    const-string v0, "IQIServiceBroker"

    const-string v1, "Already disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_15
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/att/iqi/IQIServiceBroker;->notifyServiceState(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method
