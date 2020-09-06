.class public Lcom/android/server/wifioffload/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final DATA_USAGE_THRESHOLD:I = 0x1

.field private static final DONT_SHOW_WIFI_POPUP_TIMER:J = 0x2932e00L

.field private static final MSG_CHECK_WIFIOFFLOADING_CONDITIONS_FOR_PACKAGE:I = 0x65

.field private static final MSG_START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x66

.field private static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "app.offload.datausage.limit"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:J = 0x3e8L


# instance fields
.field private mAirPlaneModeEnabled:Z

.field private mAppLaunchCount:I

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

.field private mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mIsTimerRunning:Z

.field private mIsWifiOffloadDialogIntentSent:Z

.field private mMessageHandler:Landroid/os/Handler;

.field private mMobileHotSpotEnabled:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviousSsidResult:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowWifiPopupEnabled:Z

.field private mStartTime:J

.field private mWifiConnectedToAP:Z

.field private mWifiEnabled:Z

.field private final mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

.field private final mblackListedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    iput v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifioffload/WifiOffloadService$1;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadService$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifioffload/WifiOffloadService$2;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadService$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifioffload/WifiOffloadService$3;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v0, "WifiOffloadService"

    const-string v2, "WifiOffloadService onCreate()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/wifioffload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    invoke-virtual {v0}, Lcom/android/server/wifioffload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_8f
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_a0

    move v3, v2

    goto :goto_a1

    :cond_a0
    move v3, v1

    :goto_a1
    iput-boolean v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_b3

    move v1, v2

    nop

    :cond_b3
    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z
    :try_end_b5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8f .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_ba
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_offload_network_notify"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->checkWifiOffloadConditions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->startWifiOffloadActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    return p1
.end method

.method private areAllPreConditionsPassed(Ljava/lang/StringBuilder;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method private calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J
    .registers 6

    invoke-direct {p0, p1, p3}, Lcom/android/server/wifioffload/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J

    move-result-wide v0

    return-wide v0
.end method

.method private checkNetworksAndShowAPDialog(Ljava/lang/StringBuilder;)V
    .registers 9

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_74

    :cond_15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_37

    invoke-direct {p0, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->isHiddenOrPoorNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    goto :goto_1e

    :cond_38
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v3, "WifiOffloadService"

    const-string v4, "All scanresults are hidden or ad-hoc networks"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_57

    goto :goto_5d

    :cond_57
    const-string v3, " scanresults are same \n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_5d
    :goto_5d
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_81

    :cond_74
    :goto_74
    const-string v1, "WifiOffloadService"

    const-string v2, "No networks. Start scanning."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void

    :cond_81
    :goto_81
    return-void
.end method

.method private checkWifiOffloadConditions(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    iput v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\npackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    :try_start_3c
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_4a} :catch_117

    move v2, v4

    nop

    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->isOffloadNeeded(Ljava/lang/String;ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->getAppLaunchCount(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v3

    if-nez v3, :cond_5d

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->insertDataUsage(Ljava/lang/String;)V

    goto/16 :goto_f4

    :cond_5d
    iget v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->updateAppLaunchCount(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->areAllPreConditionsPassed(Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_e0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWifiEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWifiConnectedToAP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mMobileHotSpotEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mAirPlaneModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mShowWifiPopupEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_f4

    :cond_e0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppDataUsageLimitExceeded(Ljava/lang/String;ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v5, :cond_f1

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->checkNetworksAndShowAPDialog(Ljava/lang/StringBuilder;)V

    :cond_f1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_f4
    :goto_f4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " dialogInvoked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    return-void

    :catch_117
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppLaunchCount(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packagename = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "app_datausage"

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifioffload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "launchcount"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_70

    :cond_3a
    if-eqz v0, :cond_3f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3f
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch count in DB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " launchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    return v1

    :catchall_70
    move-exception v1

    if-eqz v0, :cond_76

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v1
.end method

.method private getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    move-object v1, v3

    :cond_14
    if-eqz v1, :cond_5a

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, v1

    move-object v4, p2

    move v5, p1

    invoke-interface/range {v3 .. v8}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_20} :catch_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_22

    move-object v0, v3

    goto :goto_5a

    :catch_22
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getting history for uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError in getting UID history "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    nop

    :goto_5b
    if-eqz v1, :cond_7c

    :try_start_5d
    invoke-interface {v1}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_7c

    :catch_61
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ex in closing statsSession "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :cond_7c
    :goto_7c
    nop

    :goto_7d
    if-eqz v0, :cond_b7

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    if-eqz v2, :cond_b7

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataUsage for app with uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v7, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    return-wide v3

    :cond_b7
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private insertDataUsage(Ljava/lang/String;)V
    .registers 6

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertDataUsage for pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "launchcount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "app_datausage"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifioffload/WifiOffloadDB;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method private isAppDataUsageLimitExceeded(Ljava/lang/String;ILjava/lang/StringBuilder;)Z
    .registers 14

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_13e

    const/4 v0, -0x1

    if-ne v0, p2, :cond_9

    goto/16 :goto_13e

    :cond_9
    const/4 v0, 0x0

    const/high16 v1, 0x100000

    const-string v2, "app.offload.datausage.limit"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v1, v2

    const-string v2, " PROPERTY_DATA_USAGE_THREHOLD 1"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    nop

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-direct {p0, p2, p1, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n     wifiUsage: total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " perLaunch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v7, v7

    div-long v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage per launch count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v6, v6

    div-long v6, v4, v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_91

    const-string v6, "WifiOffloadService"

    const-string v7, "App\'s datausage exceeds the threshold so Offload"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v6, "\n"

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_110

    :cond_91
    const-string v6, "WifiOffloadService"

    const-string v7, "Data Usage does not reach threshold yet"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v6

    add-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " wifiAndMobileUsage: total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " perLaunch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v7, v7

    div-long v7, v4, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage per launch count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v6, v6

    div-long v6, v4, v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_110

    const-string v6, "WifiOffloadService"

    const-string v7, "DataUsage exceeds the threshold"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_110
    :goto_110
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " dataUsageExceeded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataUsageCrossed ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13e
    :goto_13e
    const/4 v0, 0x0

    return v0
.end method

.method private isAppInBackground(Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x1f4

    :try_start_11
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_35

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_31} :catch_37

    if-eqz v7, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    goto :goto_19

    :cond_36
    :goto_36
    goto :goto_3b

    :catch_37
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appinbg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isHiddenOrPoorNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v1, -0x55

    if-ge v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method private isOffloadNeeded(Ljava/lang/String;ILjava/lang/StringBuilder;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " package is in blacklist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_27

    xor-int/lit8 v1, v0, 0x1

    return v1

    :cond_27
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne p2, v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " its System uid ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    :cond_46
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " have no internet permission"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2

    :cond_6f
    const/4 v1, 0x1

    return v1
.end method

.method private isTimerRunning(Ljava/lang/StringBuilder;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 12hrstimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return v0
.end method

.method private startWifiOffloadActivity()V
    .registers 4

    const-string v0, "WifiOffloadService"

    const-string/jumbo v1, "startWifiOffloadActivity () "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wifioffload.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "WifiOffloadService"

    const-string v2, "There  is no associated handler for intent, Cann\'t resolve the activity "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAppLaunchCount(Ljava/lang/String;I)V
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "app_datausage"

    const/4 v5, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wifioffload/WifiOffloadDB;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_a

    const-string v0, "WifiOffloadService"

    const-string v1, "checkAppForWiFiOffloading package name is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppInBackground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3e
    return-void
.end method

.method public checkAppNeedsMoveToFront(I)V
    .registers 7

    const-string v0, "WifiOffloadService"

    const-string v1, "Move task to front..!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_d
    invoke-interface {v0, p1, v1, v2}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_2b

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "WifiOffloadService"

    const-string v1, "dump started"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiOffloadService"

    const-string v1, "check if the caller has DUMP permission"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiOffloadService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    const-string v0, "WifiOffloadService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V

    const-string v0, "WifiOffloadService"

    const-string v1, "dump finished"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startTimer()V
    .registers 3

    const-string v0, "WifiOffloadService"

    const-string v1, "12hrs Timer started "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return-void
.end method
