.class public Lcom/att/iqi/IQIServiceBrokerExt;
.super Ljava/lang/Object;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_IQI_STATE:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.att.iqi.action.SERVICE_STATE_CHANGED"

.field private static final ACTION_SUBMIT_METRIC:Ljava/lang/String; = "com.samsung.iqi.action.SUBMIT"

.field private static final EXTRA_IQI_STATE:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field public static final OPT_IN:I = 0x1

.field public static final OPT_NOT_SET:I = -0x1

.field public static final OPT_OUT:I = 0x0

.field public static final OPT_OUT_PERM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IQIServiceBrokerExt"


# instance fields
.field private DEBUG:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field mMetricReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mServiceRunning:Z

.field private mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

.field mServiceStateReceiver:Landroid/content/BroadcastReceiver;

.field private rbIqiState:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/att/iqi/IQIServiceBrokerExt$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;

    new-instance v0, Lcom/att/iqi/IQIServiceBrokerExt$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/att/iqi/IQIServiceBrokerExt$2;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/att/iqi/IQIServiceBrokerExt$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBrokerExt$3;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/IQIServiceBrokerExt$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBrokerExt$4;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mMetricReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/IQIServiceBrokerExt;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBrokerExt;->changeIqiState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/att/iqi/IQIServiceBrokerExt;)I
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBrokerExt;->getOpt()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/att/iqi/IQIServiceBrokerExt;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/att/iqi/IQIServiceBrokerExt;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/att/iqi/IQIServiceBrokerExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    return p1
.end method

.method static synthetic access$400(Z)V
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/IQIServiceBrokerExt;->submitSS2S(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/att/iqi/IQIServiceBrokerExt;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->rbIqiState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/att/iqi/IQIServiceBrokerExt;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeIqiState(Z)V
    .registers 6

    if-eqz p1, :cond_65

    const-string v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1e

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    const-string v1, "com.att.iqi.IQIServiceBroker"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    goto :goto_31

    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_31
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mMetricReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.iqi.action.SUBMIT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    if-nez v1, :cond_64

    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    if-nez v1, :cond_64

    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_58

    const-string v1, "IQIServiceBrokerExt"

    const-string v2, "changeIqiState: registerServiceStateChangeListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    new-instance v1, Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;-><init>(Lcom/att/iqi/IQIServiceBrokerExt;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    :cond_64
    goto :goto_98

    :cond_65
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mMetricReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_7d

    const-string v1, "IQIServiceBrokerExt"

    const-string v2, "changeIqiState: unregisterServiceStateChangeListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/att/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    :cond_85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_98
    return-void
.end method

.method private getOpt()I
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "att_iqi_report_diagnostic"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/att/iqi/IQIServiceBrokerExt;->setOpt(I)V

    :cond_10
    return v0
.end method

.method private setOpt(I)V
    .registers 4

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "att_iqi_report_diagnostic"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static submitSS2S(Z)V
    .registers 6

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v2, Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-direct {v2}, Lcom/att/iqi/lib/metrics/ss/SS2S;-><init>()V

    const/4 v3, 0x0

    xor-int/lit8 v4, p0, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/att/iqi/lib/metrics/ss/SS2S;->setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-virtual {v0, v2}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public startIqi()V
    .registers 6

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBrokerExt;->getOpt()I

    move-result v0

    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "IQIServiceBrokerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startIqi opt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    return-void

    :cond_23
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/imei/salesCodeChanged"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0, v1}, Lcom/att/iqi/IQIServiceBrokerExt;->setOpt(I)V

    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_3f

    const-string v1, "IQIServiceBrokerExt"

    const-string/jumbo v2, "opt out permenantly"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void

    :cond_40
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "att_iqi_report_diagnostic"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7a

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBrokerExt;->mMetricReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.iqi.action.SUBMIT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemServiceManager;

    const-string v2, "com.att.iqi.IQIServiceBroker"

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_7a
    return-void
.end method
