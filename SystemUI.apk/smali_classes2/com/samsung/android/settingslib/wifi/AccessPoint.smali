.class public Lcom/samsung/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;,
        Lcom/samsung/android/settingslib/wifi/AccessPoint$Speed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

.field private static final DBG:Z

.field public static final ENABLE_DISC_BUTTON_APNLIST:Z

.field public static final ENABLE_MENU_AUTOJOIN:Z

.field public static final ENABLE_TENCENT_SECURITY_WIFI:Z

.field public static final ENABLE_WECHAT_WIFI:Z

.field public static final SUPPORT_WAPI:Z

.field private static final mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

.field private static final mSupportWpa3SaeKeyMgmt:Z

.field static final sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bssid:Ljava/lang/String;

.field private eapType:I

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mBadge:I

.field private mCarrierApEapType:I

.field private mCarrierName:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mFrequency:I

.field mId:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsActiveStateChanged:Z

.field private mIsAirplaneMode:Z

.field private mIsCarrierAp:Z

.field public mIsGigaAp:Z

.field public mIsGigaIcon:Z

.field private mIsLevelChanged:Z

.field private mIsRecommend:Z

.field private mIsScoredNetworkMetered:Z

.field private mIsTencentRiskAp:Z

.field private mIsUpdated:Z

.field private mIsWeChatAp:Z

.field private mIsWifiOnly:Z

.field private mKey:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private mPrevRssi:I

.field private mRankingScore:I

.field private mRssi:I

.field private final mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSecFlags:Ljava/util/BitSet;

.field private mSeen:J

.field private mSpeed:I

.field private mWeChatApBssid:Ljava/lang/String;

.field private mWeChatApStoreName:Ljava/lang/String;

.field private mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->SUPPORT_WAPI:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->CONFIG_WIFI_NOTIFICATION_STYLE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDiscButtonApnList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_DISC_BUTTON_APNLIST:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_MENU_AUTOJOIN:Z

    const-string v0, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    const-string v0, "TencentSecurityWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Wifi_ConfigSecureSvcIntegration"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_TENCENT_SECURITY_WIFI:Z

    const-string v0, "0"

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSupportWpa3SaeKeyMgmt:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPrevRssi:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mBadge:I

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsAirplaneMode:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const-string v4, "wifi-only"

    const-string v5, "ro.carrier"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "yes"

    const-string v5, "ro.radio.noril"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWifiOnly:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->initWithScanResult(Landroid/net/wifi/ScanResult;)V

    sget-object v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPrevRssi:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mBadge:I

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsAirplaneMode:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const-string v4, "wifi-only"

    const-string v5, "ro.carrier"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "yes"

    const-string v5, "ro.radio.noril"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWifiOnly:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    sget-object v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPrevRssi:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mBadge:I

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsAirplaneMode:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPasspointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const-string v4, "wifi-only"

    const-string v5, "ro.carrier"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "yes"

    const-string v5, "ro.radio.noril"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWifiOnly:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->copyFrom(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    return-void
.end method

.method private appendEapType(Landroid/net/wifi/ScanResult;)I
    .locals 7

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getEapType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    if-eqz v2, :cond_8

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x5

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-ne v0, v6, :cond_7

    :cond_2
    return v1

    :pswitch_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-ne v0, v5, :cond_7

    :cond_3
    return v1

    :pswitch_2
    if-eq v0, v6, :cond_4

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    return v1

    :pswitch_4
    return v3

    :cond_4
    :pswitch_5
    return v6

    :pswitch_6
    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    if-ne v0, v6, :cond_7

    :cond_5
    return v1

    :pswitch_7
    if-eq v0, v4, :cond_6

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    return v1

    :pswitch_9
    return v3

    :cond_6
    :pswitch_a
    return v5

    :pswitch_b
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_c
    return v1

    :pswitch_d
    return v6

    :pswitch_e
    return v5

    :cond_7
    :goto_0
    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    return v1

    :cond_8
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private appendPskType(Landroid/net/wifi/ScanResult;)I
    .locals 6

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    return v0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    if-eq v0, v1, :cond_5

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_5

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v0, 0x5

    :cond_5
    :goto_0
    return v0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private evictOldScanResults()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-wide v4, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private generateAverageSpeedForSsid()I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v0, "SettingsLib.AccessPoint"

    const-string v4, "Generating fallbackspeed for %s using cache: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v7, v8}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v7

    :cond_2
    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    div-int v5, v4, v0

    :goto_1
    sget-boolean v6, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "SettingsLib.AccessPoint"

    const-string v7, "%s generated fallback speed is: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result v1

    return v1
.end method

.method private static getCountryCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CountryISO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private getEapType()I
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/4 v1, 0x5

    return v1

    :cond_2
    return v2

    :cond_3
    if-eqz v3, :cond_4

    const/4 v1, 0x4

    return v1

    :cond_4
    return v1
.end method

.method private static getEapType(Landroid/net/wifi/ScanResult;)I
    .locals 6

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "-EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "FT/EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "CCKM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    return v3

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x5

    return v3

    :cond_1
    if-eqz v1, :cond_2

    const/4 v3, 0x3

    return v3

    :cond_2
    const/4 v3, 0x1

    return v3

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    const/4 v3, 0x6

    return v3

    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x4

    return v3

    :cond_5
    if-eqz v1, :cond_6

    const/4 v3, 0x2

    return v3

    :cond_6
    const-string v3, "SettingsLib.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received abnormal flag string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method private getPrevLevel()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPrevRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPrevRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 6

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSupportWpa3SaeKeyMgmt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "FT/PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x5

    return v3

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    return v3

    :cond_2
    if-eqz v1, :cond_3

    const/4 v3, 0x2

    return v3

    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x4

    return v3

    :cond_5
    const-string v3, "SettingsLib.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received abnormal flag string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x3

    return v0

    :cond_6
    :goto_1
    const/4 v0, 0x2

    return v0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x18

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    return v2
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    const/16 v4, 0x12

    const/16 v5, 0x9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v3, v4, v7, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    const-string v8, "SettingsLib.AccessPoint"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSettingsSummary: ssid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", getNetworkSelectionDisableReason "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v8

    if-eq v8, v5, :cond_3

    if-eq v8, v4, :cond_2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v4, v5, v7, v8}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_failed_to_obtain_IP:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :pswitch_4
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    goto/16 :goto_3

    :cond_4
    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v3, v4, v7, v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v8, :cond_6

    iget-boolean v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->connected_via_carrier:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_1

    :cond_7
    nop

    move v5, v7

    :goto_1
    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLandroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "REMOVED"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWifiOnly:Z

    if-eqz v5, :cond_9

    :cond_8
    const/4 v3, 0x0

    :cond_9
    if-eqz v3, :cond_a

    iget-object v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSnsEverQualityTested(Landroid/content/Context;)Z

    move-result v5

    iget-object v8, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isValidated(Landroid/content/Context;)Z

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSnsCurrentMode(Landroid/content/Context;)I

    move-result v9

    if-nez v8, :cond_a

    if-nez v5, :cond_a

    const/4 v10, 0x3

    if-gt v9, v10, :cond_a

    const/4 v4, 0x1

    :cond_a
    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v8, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v5, v8, :cond_b

    iget v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    if-nez v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v8, :cond_b

    if-nez v4, :cond_b

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settingslib/R$string;->wifi_open_network_summary:I

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    goto/16 :goto_3

    :cond_c
    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v8

    if-eq v8, v5, :cond_f

    if-eq v8, v4, :cond_e

    packed-switch v8, :pswitch_data_2

    packed-switch v8, :pswitch_data_3

    goto :goto_2

    :pswitch_5
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_captive_portal:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_7
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_8
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_failed_to_obtain_IP:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_9
    if-eqz v1, :cond_d

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v4, :cond_d

    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    :pswitch_a
    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_2
    goto/16 :goto_3

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->available_via_passpoint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_11
    iget v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_12

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_disabled_by_recommendation_provider:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_13
    iget-boolean v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->available_via_carrier:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_15
    if-eqz v1, :cond_17

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_16
    sget-object v3, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->DCM:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    sget-object v4, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mOpBranding:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-ne v3, v4, :cond_17

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_19

    iget-boolean v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_18
    if-eqz v1, :cond_19

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->semAutoReconnect:I

    if-nez v3, :cond_19

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_4
    sget-boolean v3, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v3, :cond_1c

    iget-boolean v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    if-eqz v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1c

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1b

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_risk_ap_warning:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    sget v3, Lcom/samsung/android/settingslib/wifi/WifiTracker;->sVerboseLogging:I

    if-lez v3, :cond_22

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-nez v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-lez v3, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v10

    sub-long v10, v3, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    rem-long v14, v10, v12

    div-long v16, v10, v12

    rem-long v6, v16, v12

    div-long v16, v6, v12

    rem-long v12, v16, v12

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v12, v8

    if-lez v5, :cond_1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "h "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "m "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "s "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    if-eqz v1, :cond_22

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    const/4 v4, 0x0

    :goto_5
    const/16 v5, 0x13

    if-ge v4, v5, :cond_22

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    if-eqz v5, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_22
    if-eqz v1, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/wifi/WifiUtils;->isMeteredOverridden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v3, :cond_24

    :cond_23
    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/settingslib/wifi/WifiUtils;->getMeteredLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_25
    iget-boolean v3, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    if-eqz v3, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static getSnsCurrentMode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x12f

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getSnsEverQualityTested(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x130

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method private static getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->speed_label_very_fast:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lcom/android/settingslib/R$string;->speed_label_fast:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget v0, Lcom/android/settingslib/R$string;->speed_label_okay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    sget v0, Lcom/android/settingslib/R$string;->speed_label_slow:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLandroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_3

    if-nez p1, :cond_3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    if-eqz p3, :cond_3

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    sget v6, Lcom/android/settingslib/R$string;->connected_via_network_scorer:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    sget v3, Lcom/android/settingslib/R$string;->connected_via_network_scorer_default:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    const-string v0, "connectivity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v0, :cond_14

    const-string v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v8

    :goto_0
    nop

    :goto_1
    move-object v9, v0

    move-object v10, v8

    if-eqz v7, :cond_5

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Landroid/net/wifi/IWifiManager;->getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v8

    nop

    :goto_3
    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSnsCurrentMode(Landroid/content/Context;)I

    move-result v8

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSnsEverQualityTested(Landroid/content/Context;)Z

    move-result v10

    const-string v11, "wifi-only"

    const-string v12, "ro.carrier"

    const-string v3, "Unknown"

    invoke-static {v12, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "yes"

    const-string v11, "ro.radio.noril"

    const-string v12, "no"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v3, v4

    :goto_5
    const/4 v11, 0x1

    const-string v12, "REMOVED"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v4, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v6, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    const/4 v11, 0x0

    :cond_9
    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isValidated(Landroid/content/Context;)Z

    move-result v4

    if-eqz v11, :cond_f

    if-nez v4, :cond_e

    if-eqz v10, :cond_d

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v6

    if-nez v6, :cond_a

    sget v6, Lcom/android/settingslib/R$string;->wifi_sign_in_to_the_network:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_a
    const/4 v6, 0x1

    if-ne v8, v6, :cond_b

    sget v6, Lcom/android/settingslib/R$string;->wifi_internet_may_not_be_available:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_b
    const/4 v6, 0x2

    if-eq v8, v6, :cond_c

    const/4 v6, 0x3

    if-ne v8, v6, :cond_e

    :cond_c
    sget v6, Lcom/android/settingslib/R$string;->wifi_reconnecting:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_d
    const/4 v6, 0x3

    if-gt v8, v6, :cond_e

    sget v6, Lcom/android/settingslib/R$string;->wifi_connected_checking_quality:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_e
    move-object v13, v0

    move v14, v3

    goto :goto_6

    :cond_f
    if-eqz v9, :cond_11

    const/16 v6, 0x11

    invoke-virtual {v9, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v12, "network_available_sign_in"

    move-object v13, v0

    const-string v0, "string"

    move v14, v3

    const-string v3, "android"

    invoke-virtual {v6, v12, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_10
    move-object v13, v0

    move v14, v3

    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "cn"

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "hk"

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget v0, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    move-object v13, v0

    move v14, v3

    :cond_12
    :goto_6
    if-nez p1, :cond_14

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget v0, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_13
    if-eqz p3, :cond_14

    sget v0, Lcom/android/settingslib/R$string;->connected_via_wfa:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    if-nez v2, :cond_15

    const-string v0, "SettingsLib.AccessPoint"

    const-string v3, "state is null, returning empty summary"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_16

    sget v3, Lcom/android/settingslib/R$array;->wifi_status:I

    goto :goto_7

    :cond_16
    sget v3, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    :goto_7
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v2, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    :cond_17
    if-ltz v3, :cond_1b

    array-length v4, v0

    if-ge v3, v4, :cond_1b

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_18

    goto :goto_8

    :cond_18
    const/4 v4, 0x3

    if-eq v3, v4, :cond_19

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1a

    :cond_19
    const/4 v3, 0x2

    :cond_1a
    const-string v4, "SettingsLib.AccessPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSummary - index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v4, v0, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1b
    :goto_8
    const-string v4, "SettingsLib.AccessPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSummary - out of index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    return-object v4
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v7, " rssi="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " score="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget v7, v7, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tx=%.1f,"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v10, v10, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%.1f,"

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v12, v10, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%.1f "

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v12, v10, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "rx=%.1f"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v9, v9, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget v7, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    sget v8, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    iget-object v14, v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    move-wide/from16 v16, v5

    const/16 v5, 0x170c

    const/16 v6, 0x1324

    if-lt v0, v6, :cond_2

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    if-gt v0, v5, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v5, 0x960

    if-lt v0, v5, :cond_3

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v5, 0x9c4

    if-gt v0, v5, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    :goto_1
    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    if-lt v0, v6, :cond_7

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v5, 0x170c

    if-gt v0, v5, :cond_7

    iget v0, v15, Landroid/net/wifi/ScanResult;->level:I

    if-le v0, v7, :cond_4

    iget v7, v15, Landroid/net/wifi/ScanResult;->level:I

    :cond_4
    const/4 v0, 0x4

    if-ge v13, v0, :cond_b

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    :cond_5
    const-string v0, " \n{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v15, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v5, 0x960

    if-lt v0, v5, :cond_b

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v5, 0x9c4

    if-gt v0, v5, :cond_b

    iget v0, v15, Landroid/net/wifi/ScanResult;->level:I

    if-le v0, v8, :cond_8

    iget v8, v15, Landroid/net/wifi/ScanResult;->level:I

    :cond_8
    const/4 v0, 0x4

    if-ge v12, v0, :cond_b

    if-nez v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    :cond_9
    const-string v0, " \n{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v15, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v15, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    :cond_b
    :goto_2
    nop

    move-wide/from16 v5, v16

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_c
    move-wide/from16 v16, v5

    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v10, :cond_e

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-gt v12, v0, :cond_d

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    const-string v0, "max="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_e

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_3
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v9, :cond_10

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-gt v13, v0, :cond_f

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_f
    const-string v0, "max="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_10

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_4
    if-lez v11, :cond_11

    const-string v0, "!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initWithScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 4

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mFrequency:I

    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/ScanResult;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getEapType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    :cond_1
    :goto_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    iget-boolean v1, p1, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    iget v1, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "SettingsLib.AccessPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithScanResult ssid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "capa:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " obj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SEC80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SEC21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    return-void
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidated(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x133

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method static synthetic lambda$updateScores$0(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V
    .locals 2

    invoke-virtual {p3}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getUpdatedTimestampMillis()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static roundToClosestSpeedEnum(I)I
    .locals 2

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x7

    if-ge p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    const/16 v0, 0xa

    return v0

    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    const/16 v0, 0x14

    return v0

    :cond_3
    const/16 v0, 0x1e

    return v0
.end method

.method private setInfoIfTencentRiskAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {v0}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;-><init>()V

    nop

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->isRiskAp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    :cond_0
    return-void
.end method

.method private setInfoIfWeChatAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->getInstance()Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoIfWeChatAP, this is WeChat AP, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") storeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->getStoreNameIfWeChatAp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoIfWeChatAP, this is WeChat AP, ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " storeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x106

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "netId"

    iget v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "isWeChatAp"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_4
    return-void
.end method

.method private setupKeyMgmts(Landroid/net/wifi/ScanResult;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "SAE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private setupKeyMgmts(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method private updateKey()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    return-void
.end method

.method private updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v5, v3, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v6, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    nop

    :cond_4
    return v1
.end method

.method private updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v8, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-direct {v8, v4, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;-><init>(Landroid/net/ScoredNetwork;J)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->update(Landroid/net/ScoredNetwork;J)V

    :goto_1
    goto :goto_0

    :cond_2
    sub-long v2, v0, p2

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settingslib/wifi/-$$Lambda$AccessPoint$tmjDxQi4sZvIOnJqcup34goFBpo;

    invoke-direct {v5, v2, v3, v4}, Lcom/samsung/android/settingslib/wifi/-$$Lambda$AccessPoint$tmjDxQi4sZvIOnJqcup34goFBpo;-><init>(JLjava/util/Iterator;)V

    invoke-interface {v4, v5}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    move-result v5

    return v5
.end method

.method private updateSeen()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-wide v4, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    iget-wide v0, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    :cond_0
    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    return-void
.end method

.method private updateSpeed()Z
    .locals 8

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->generateAverageSpeedForSsid()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "SettingsLib.AccessPoint"

    const-string v5, "%s: Set speed to %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v7, v6, v2

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    return-void
.end method

.method public clearNetworkInfoExcept(Landroid/net/wifi/WifiInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SettingsLib.AccessPoint"

    const-string v2, "cleared network info too"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    :cond_0
    return-void
.end method

.method public clearUpdateFlag()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mPrevRssi:I

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    return-void
.end method

.method public clearWeChatApInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    return-void
.end method

.method public compareSpeedTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I
    .locals 3
    .param p1    # Lcom/samsung/android/settingslib/wifi/AccessPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I
    .locals 5
    .param p1    # Lcom/samsung/android/settingslib/wifi/AccessPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, -0x3e7

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const-string v1, "SettingsLib.AccessPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "compareTo netid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWifiOnly:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSorted()Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSorted()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v4

    if-eq v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v4

    if-eq v1, v4, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getRankingScore()I

    move-result v4

    if-le v1, v4, :cond_b

    goto :goto_0

    :cond_b
    move v2, v3

    :goto_0
    return v2

    :cond_c
    iget v1, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result p1

    return p1
.end method

.method copyFrom(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    invoke-direct {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->evictOldScanResults()V

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iget-wide v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSeen:J

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mId:I

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mBadge:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mBadge:I

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaAp:Z

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsGigaIcon:Z

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsTencentRiskAp:Z

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsAirplaneMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsAirplaneMode:Z

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApBssid:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mWeChatApStoreName:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    iget-boolean v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->semSamsungSpecificFlags:Ljava/util/BitSet;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isRecommended()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->semIsRecommended:Z

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mFrequency:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method getRankingScore()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRankingScore:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    return v0
.end method

.method getSpeed()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    return v0
.end method

.method getSpeedLabel()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWifiOnly:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSpeedLabel(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsLib.AccessPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :: getSpeedLabel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TtsSpan$TelephoneBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    const/16 v1, 0x13

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x17

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLevelChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    return v0
.end method

.method public isMetered()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOllehGigaAp()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[VHT]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[VSI]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public isPasspoint()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReachable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecommended()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "ollehWiFi "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "olleh GiGA WiFi "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KT WiFi "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KT GiGA WiFi "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "T wifi zone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "iptime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "iptime5G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    move v1, v2

    return v1

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is vendor AP. Do not recommend. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public isSaved()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSorted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedSecurityType()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSupportWpa3SaeKeyMgmt:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    return v1
.end method

.method public isUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    return v0
.end method

.method public isVendorAp()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->semIsVendorSpecificSsid:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWeChatAp()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<unknown ssid>"

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->semFrequency:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mFrequency:I

    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->updateKey()V

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getEapType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    :cond_1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->semSamsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSecFlags:Ljava/util/BitSet;

    return-void
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const/4 v0, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType(Z)I

    move-result v5

    if-ne v4, v5, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    move v0, v4

    iget v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    if-eq v4, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Ljava/util/ArrayList;)Z

    move-result v3

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v4, v5, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method public matches(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method securityToString(III)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "WEP"

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    const-string v0, "PSK"

    return-object v0

    :pswitch_0
    const-string v0, "SAE"

    return-object v0

    :pswitch_1
    const-string v0, "FT_WPA2"

    return-object v0

    :pswitch_2
    const-string v0, "FT"

    return-object v0

    :pswitch_3
    const-string v0, "WPA_WPA2"

    return-object v0

    :pswitch_4
    const-string v0, "WPA2"

    return-object v0

    :pswitch_5
    const-string v0, "WPA"

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    packed-switch p3, :pswitch_data_1

    const-string v0, "EAP"

    return-object v0

    :pswitch_6
    const-string v0, "EAP_FT_CCKM_WPA"

    return-object v0

    :pswitch_7
    const-string v0, "EAP_FT_CCKM"

    return-object v0

    :pswitch_8
    const-string v0, "EAP_CCKM_WPA"

    return-object v0

    :pswitch_9
    const-string v0, "EAP_CCKM"

    return-object v0

    :pswitch_a
    const-string v0, "EAP_FT_WPA"

    return-object v0

    :pswitch_b
    const-string v0, "EAP_FT"

    return-object v0

    :cond_2
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public setListener(Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    return-void
.end method

.method setRssi(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    return-void
.end method

.method public setSorted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    return-void
.end method

.method setUnreachable()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "connectable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    iget v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    iget v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->securityToString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isLevelChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "(changed)"

    goto :goto_0

    :cond_6
    const-string v1, "(unchanged)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    if-eqz v1, :cond_7

    const-string v1, ",speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsRecommend:Z

    if-eqz v1, :cond_8

    const-string v1, "(isrecommend)"

    goto :goto_1

    :cond_8
    const-string v1, " "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "passpoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->networkId:I

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mFrequency:I

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mScanResultCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->updateSeen()V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    const/16 v0, -0x7f

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    if-ge v0, v1, :cond_4

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - mIsUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRssi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    :cond_4
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_WECHAT_WIFI:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setInfoIfWeChatAP(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :cond_5
    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ENABLE_TENCENT_SECURITY_WIFI:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setInfoIfTencentRiskAP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    if-nez v2, :cond_7

    if-lez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getPrevLevel()I

    move-result v2

    if-eq v1, v2, :cond_7

    const-string v2, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update - mIsLevelChanged true - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsLevelChanged:Z

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_7
    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->appendPskType(Landroid/net/wifi/ScanResult;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->pskType:I

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->appendEapType(Landroid/net/wifi/ScanResult;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->eapType:I

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->setupKeyMgmts(Landroid/net/wifi/ScanResult;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_c
    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsUpdated:Z

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    move v0, v5

    iget v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    if-eq v5, v6, :cond_1

    const/16 v5, -0x7f

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    if-eq v5, v6, :cond_1

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v5, :cond_2

    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    if-eq v5, v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object p3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-eq v1, v5, :cond_5

    iput-boolean v4, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    goto :goto_3

    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mIsActiveStateChanged:Z

    :goto_3
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v3, p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v3, p0}, Lcom/samsung/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    :cond_6
    return v0
.end method

.method update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z

    move-result v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
