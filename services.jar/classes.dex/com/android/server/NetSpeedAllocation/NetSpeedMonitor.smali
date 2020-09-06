.class public Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
.super Ljava/lang/Object;
.source "NetSpeedMonitor.java"


# static fields
.field private static final DOWNLOADPROVIDER_COMPLETE:Ljava/lang/String; = "com.android.providers.downloads.complete"

.field private static final DOWNLOADPROVIDER_START:Ljava/lang/String; = "com.android.providers.downloads.start"

.field public static final TAG:Ljava/lang/String; = "NetSpeedMonitor"

.field private static final UID_STATE_TAG:Ljava/lang/String; = "mState"

.field private static final UID_TAG:Ljava/lang/String; = "mUid"


# instance fields
.field public VPNConnected:Z

.field public WifiConnected:Z

.field public mAvgPhySpeed:I

.field private mBGAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mBgTotalSpeed:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field public mEnable:Z

.field private mFGAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mFgProcessList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFgTotalSpeed:I

.field private mFgUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

.field private mLastTotalTrafs:J

.field private mLockFgAct:Ljava/lang/Object;

.field private mManager:Landroid/app/ActivityManager;

.field private mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

.field public mNetSpeedPolicy2:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;

.field public mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field public mStatsService:Landroid/net/INetworkStatsService;

.field private mTotalSpeed:I

.field private mTotalSpeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public providerDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$1;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;-><init>(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgProcessList:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;-><init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;-><init>(Landroid/content/Context;Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    new-instance v0, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    iget-boolean v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->cscEnableDNBA:Z

    if-eqz v1, :cond_b0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.providers.downloads.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.providers.downloads.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_b0
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_b7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c0} :catch_c1

    goto :goto_cc

    :catch_c1
    move-exception v1

    const-string v2, "NetSpeedMonitor"

    const-string v3, "RemoteException - registerProcessObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_cc
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->isProcessStateTop(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgProcessList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->isVPNConnected()Z

    move-result v0

    return v0
.end method

.method private contain(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private getBackgroundApps(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_58

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_57

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->contain(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_57

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->isWhitelistNONetworkBandwidth(I)Z

    move-result v5

    if-nez v5, :cond_57

    new-instance v5, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    goto :goto_19

    :cond_58
    return-object v2
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v2, 0x0

    return-object v2

    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_42

    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, "NetSpeedMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageNameFromUid uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_42
    goto :goto_10

    :cond_43
    :goto_43
    return-object v0
.end method

.method private getTotalTraffic()J
    .registers 5

    const-wide/16 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->getTotalRxBytesBuffered()J

    move-result-wide v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_a

    move-wide v0, v2

    goto :goto_b

    :catch_a
    move-exception v2

    :goto_b
    const-wide/16 v2, 0x400

    div-long v2, v0, v2

    move-wide v0, v2

    return-wide v2
.end method

.method private getTraffic(I)J
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2, p1}, Landroid/net/INetworkStatsService;->getUidRxBytesBuffered(I)J

    move-result-wide v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_a

    move-wide v0, v2

    goto :goto_b

    :catch_a
    move-exception v2

    :goto_b
    const-wide/16 v2, 0x400

    div-long v2, v0, v2

    move-wide v0, v2

    return-wide v2
.end method

.method private isProcessStateTop(II)Z
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const-string v2, "NetSpeedMonitor"

    const-string/jumbo v3, "isProcessStateTop"

    invoke-static {v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p2, :cond_69

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_69

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_69

    const-string v2, "NetSpeedMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "process name ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_69
    goto :goto_1f

    :cond_6a
    const-string v2, "NetSpeedMonitor"

    const-string/jumbo v3, "isProcessStateTop return false"

    invoke-static {v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private isVPNConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private saveTrafList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setTrafs(J)I

    goto :goto_4

    :cond_1c
    return-void
.end method

.method private updateAVGPhySpeed(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "AvgPhySpeedHigh"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "AvgPhySpeedLow"

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    if-nez p1, :cond_11

    return-void

    :cond_11
    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    :cond_19
    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    const/4 v3, 0x5

    if-ge v0, v1, :cond_3b

    const-string v0, "NetSpeedMonitor"

    const-string/jumbo v1, "total speed is down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "AvgPhySpeedHigh"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    :cond_3a
    return-void

    :cond_3b
    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_4d

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mJP:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;

    const-string v1, "AvgPhySpeedLow"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4d

    return-void

    :cond_4d
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_5c
    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_74

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_74
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int v0, v2, v0

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_8b

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8b
    return-void
.end method

.method private updateBGAppsSpeed(I)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBgTotalSpeed:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_58

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setTrafs(J)I

    move-result v2

    div-int/2addr v2, p1

    if-nez v2, :cond_4d

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->canRemove()Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v3, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    const/16 v4, 0x11

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_47
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_55

    :cond_4d
    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setCurSpeed(I)V

    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBgTotalSpeed:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBgTotalSpeed:I

    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_58
    return-void
.end method


# virtual methods
.method public checkFGBGAppChange()I
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-ltz v2, :cond_7b

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    const-string v4, "NetSpeedMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    const-string v4, "NetSpeedMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fg switch to bg, app uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_7b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_81
    if-ltz v2, :cond_121

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getIndexOfList(Ljava/util/List;I)I

    move-result v4

    if-ltz v4, :cond_e2

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d0

    const-string v6, "NetSpeedMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bg switch to fg, app uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)Z

    move-result v6

    if-eqz v6, :cond_e1

    invoke-virtual {v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v0

    :cond_e1
    goto :goto_11d

    :cond_e2
    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-direct {p0, v5, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->contain(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_11d

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_11d

    invoke-direct {p0, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetSpeedMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fg app list add new app uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    new-instance v7, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-direct {v7, v3, v5}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11d
    :goto_11d
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_81

    :cond_121
    const/4 v2, 0x0

    move v3, v2

    :goto_123
    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_15d

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const-string v5, "NetSpeedMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fg app uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packagename "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    :cond_15d
    nop

    :goto_15e
    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_197

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const-string v4, "NetSpeedMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bg app uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packagename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15e

    :cond_197
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    const-string/jumbo v0, "dnba"

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    iget-boolean v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    :cond_24
    return-void

    :cond_25
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNBA feature enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DNBA solution log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "FgApp dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FgApp size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6a

    :cond_7e
    const-string/jumbo v0, "mFgUidList dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFgUidList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a5

    :cond_b5
    const-string/jumbo v0, "mFgProcessList dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    monitor-enter v0

    :try_start_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFgProcessList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgProcessList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_da
    .catchall {:try_start_be .. :try_end_da} :catchall_14c

    const-string v0, "BgApp dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BgApp size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ff
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ff

    :cond_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTotalSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvgPhySpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    invoke-virtual {v0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_14c
    move-exception v1

    :try_start_14d
    monitor-exit v0
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw v1
.end method

.method public getAvgPhySpeed()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mAvgPhySpeed:I

    return v0
.end method

.method public getBGAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    return-object v0
.end method

.method public getBgTotalSpeed()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBgTotalSpeed:I

    return v0
.end method

.method public getExtraspeed()I
    .registers 4

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    iget v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgTotalSpeed:I

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBgTotalSpeed:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFGAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    return-object v0
.end method

.method public getFgTotalSpeed()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgTotalSpeed:I

    return v0
.end method

.method public getForegroundUids()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public getIndexOfList(Ljava/util/List;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v1

    if-ne v1, p2, :cond_14

    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public getStatsService()Landroid/net/INetworkStatsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_11

    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    :cond_11
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method public getTotalSpeed()I
    .registers 2

    iget v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    return v0
.end method

.method public getUidForPackageName(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0xa200

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_10

    move-object v0, v1

    goto :goto_11

    :catch_10
    move-exception v1

    :goto_11
    if-eqz v0, :cond_16

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public getWhiteUidList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;

    iget-object v1, v1, Lcom/android/server/NetSpeedAllocation/NetSpeedWhiteList;->mWhitelistUnlimitNetwork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getUidForPackageName(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_26

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    goto :goto_d

    :cond_27
    return-object v0
.end method

.method public isWifiConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method public limitBgTotalSpeed(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy2;->limitAllBgSpeed(IZ)V

    return-void
.end method

.method public print()V
    .registers 5

    const-string v0, "NetSpeedMonitor"

    const-string v1, "FG App print"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const-string v2, "NetSpeedMonitor"

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_23
    const-string v0, "NetSpeedMonitor"

    const-string v1, "BG App print"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    const-string v2, "NetSpeedMonitor"

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_46
    const-string v0, "NetSpeedMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTotalSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reFillBGAppList()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getBackgroundApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->contain(Ljava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_29
    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveTrafList(Ljava/util/List;)V

    return-void
.end method

.method public saveAllAppsNetTraf()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mBGAppList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveTrafList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->saveTrafList(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLastTotalTrafs:J

    return-void
.end method

.method public updateFGAppsSpeed(I)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgTotalSpeed:I

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFGAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setTrafs(J)I

    move-result v2

    div-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->setCurSpeed(I)V

    iget v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgTotalSpeed:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mFgTotalSpeed:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_2d
    return-void
.end method

.method public updateFGBGAppsNetSpeed(IZ)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateFGAppsSpeed(I)V

    invoke-direct {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateBGAppsSpeed(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateTotalSpeed(I)V

    invoke-direct {p0, p2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->updateAVGPhySpeed(Z)V

    return-void
.end method

.method public updateTotalSpeed(I)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->getTotalTraffic()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLastTotalTrafs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mTotalSpeed:I

    iput-wide v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mLastTotalTrafs:J

    return-void
.end method
