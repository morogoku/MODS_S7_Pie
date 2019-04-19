.class public Lcom/android/server/location/GnssLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;,
        Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final AGPS_SUPL_VER_1_0:I = 0x1

.field private static final AGPS_SUPL_VER_2_0:I = 0x2

.field private static final AGPS_SUPL_VER_2_0_1:I = 0x5

.field private static final AGPS_SUPL_VER_2_0_1_AGNSS:I = 0x4

.field private static final AGPS_SUPL_VER_2_0_2:I = 0x6

.field private static final AGPS_SUPL_VER_2_0_AGNSS:I = 0x3

.field private static final ALARM_MINOR_SESSION_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_GPS_MINOR_SESSION_TIMEOUT"

.field private static final BARO_CAL_FILE:Ljava/lang/String; = "/efs/FactoryApp/baro_delta"

.field protected static final BATCHING_STARTED:I = 0x6

.field protected static final BATCHING_STOPPED:I = 0x7

.field private static final CANCEL_ALARM:I = 0x0

.field private static final CARD_STATUS_DISABLE:Ljava/lang/String; = "UNKNOWN"

.field private static final CARD_STATUS_EMPTY:Ljava/lang/String; = "ABSENT"

.field private static final CARD_STATUS_ENABLE:Ljava/lang/String; = "READY"

.field private static final CIQ_LC18_TIMEOUT:J = 0xe290L

.field private static final CIQ_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.att.iqi.action.SERVICE_STATE_CHANGED"

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final CTS_RESTRICT_MODE_FILE:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field private static final DEBUG:Z = true

.field protected static final DELETE_AIDING_DATA:I = 0x17

.field protected static final ENGINE_ONLY_MODE_CONTROL:I = 0x16

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field protected static final GEOFENCE_ADDED:I = 0x2

.field protected static final GEOFENCE_PAUSED:I = 0x4

.field protected static final GEOFENCE_REMOVED:I = 0x3

.field protected static final GEOFENCE_RESUMED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final KTT_SIM_OPEATOR:Ljava/lang/String; = "45008"

.field private static final LGU_SIM_OPEATOR:Ljava/lang/String; = "45006"

.field private static final MSG_FOR_GNSS_ASSERT:I = 0x12c

.field private static final MSG_FOR_SUPL_INFO:I = 0x190

.field private static final Num_Top_SV:I = 0x5

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROPERTIES_FILE_CMCC:Ljava/lang/String; = "/etc/gps_cmcc.conf"

.field protected static final SEC_GNSS_CONFIGURATION_UPDATE:I = 0x18

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field private static final SEC_SERVER_TYPE_AUTO_CONFIG:I = 0x0

.field private static final SET_ALARM:I = 0x1

.field private static final SKT_SIM_OPEATOR:Ljava/lang/String; = "45005"

.field protected static final START_NAVIGATING:I = 0x9

.field protected static final STOP_NAVIGATING:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider_ex"

.field protected static final TIMEOUT_FOR_MINOR_SESSION:I = 0x15

.field protected static final TYPE_BATCHING:I = 0x19

.field protected static final TYPE_GEOFENCE:I = 0x18

.field protected static final TYPE_NAVIGATING:I = 0x1d

.field protected static final TYPE_REQUIREMENTS:I = 0x1a

.field protected static final TYPE_WAKELOCK:I = 0x17

.field protected static final TYPE_XTRA:I = 0x1b

.field protected static final UPDATE_REQUIREMENTS:I = 0x8

.field private static final USE_SECGPS_CONF:Ljava/lang/String; = "USE_SECGPS_CONF"

.field protected static final WAKELOCK_CONTROL:I = 0x14

.field protected static final WAKELOCK_FROM_GLP:I = 0x0

.field protected static final WAKELOCK_FROM_GLP_SAMSUNG:I = 0x1

.field private static WAKELOCK_KEY:Ljava/lang/String;

.field private static mSecSalesCode:Ljava/lang/String;

.field private static simOperatorKOR:Ljava/lang/String;


# instance fields
.field private GLP_DEBUG:Z

.field private iqiMgr:Lcom/att/iqi/lib/IQIManager;

.field private isInitialized:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field private mAlarmMgr:Landroid/app/AlarmManager;

.field private mCiqTimeoutIntent:Landroid/app/PendingIntent;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mConstellationString:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private final mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mEngineCapabilities:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mGpsCscFeatureDump:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field mIzatServiceEnabled:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mLc18RequestedByIqservice:Z

.field private mLocalQuery:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mMinorSessionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPositionModeFromCSC:Ljava/lang/String;

.field private mProperties_cmcc:Ljava/util/Properties;

.field private mProperties_secgps:Ljava/util/Properties;

.field mSecFileObserver:Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;

.field private mServerTypeI:I

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplAddressForNSFLP:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplVersion:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private prevLppMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    const-string v0, "GnssLocationProvider_ex"

    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->WAKELOCK_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mServerTypeI:I

    const-string v3, "MSBASED"

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string/jumbo v3, "supl.google.com"

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string/jumbo v3, "supl.google.com"

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    const/16 v3, 0x1c6b

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocalQuery:Z

    const-string v1, "GnssLocationProvider_ex"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "Unknown"

    const-string v3, "GPS"

    const-string v4, "SBAS"

    const-string v5, "GLONASS"

    const-string v6, "QZSS"

    const-string v7, "BEIDOU"

    const-string v8, "GALILEO"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConstellationString:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isInitialized:Z

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    new-instance v0, Lcom/android/server/location/GnssLocationProvider_samsung$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mMinorSessionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecFileObserver:Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;

    new-instance v0, Lcom/android/server/location/GnssLocationProvider_samsung$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$3;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_ciq_stop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_ciq_start()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider_samsung;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider_samsung;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssLocationProvider_samsung;IILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private checkUDPSuplInit()V
    .registers 3

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "start UDP socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider_samsung$4;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$4;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private configurationUpdate_setLppSupport(I)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationUpdate_setLppSupport, LPP_PROFILE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LPP_PROFILE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_4c

    :cond_35
    const/16 v0, 0x18

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LPP_PROFILE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private configurationUpdate_suplServer(ILjava/lang/String;IIII)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGPS_TYPE=3\nSUPL_VERSION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_HOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_PORT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSUPL_SSL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSSL_VER="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSSL_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_47

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_4d

    :cond_47
    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :goto_4d
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendSuplHostNameToNsflp()V

    :cond_52
    return-void
.end method

.method private configurationUpdate_xtraEnable(I)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationUpdate_xtraEnable, XTRA_ENABLE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XTRA_ENABLE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_4c

    :cond_35
    const/16 v0, 0x18

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XTRA_ENABLE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private deleteSecGpsConf()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v1, "USE_SECGPS_CONF"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/gps/secgps.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "secgps.conf deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_21} :catch_22

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v1

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, " could not access secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_34

    const-string v1, "USE_SECGPS_CONF=0"

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_3c

    :cond_34
    const/16 v1, 0x18

    const/4 v2, 0x0

    const-string v3, "USE_SECGPS_CONF=0"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :goto_3c
    return-void
.end method

.method private extChnSelectPositionMode()I
    .registers 5

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extChnSelectPositionMode() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_35

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2c

    if-eqz v1, :cond_22

    goto :goto_2c

    :cond_22
    const-string v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_35

    :cond_2c
    :goto_2c
    const-string v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_35
    :goto_35
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_4d

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_4d

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_56

    :cond_4d
    const/4 v0, 0x0

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v0
.end method

.method private extCtcSelectPositionMode(ZZ)I
    .registers 14

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extCTCSelectPositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "locationModeState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const-string/jumbo v5, "gsm.network.type"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "LTE"

    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    const-string v8, "CTWAP"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    const-string v8, "CTLTE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    const-string v8, "CTNET"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    goto :goto_8c

    :cond_8a
    move v8, v3

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v8, v4

    :goto_8d
    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v9

    if-eqz v9, :cond_9e

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, "Roaming, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_9d
    goto :goto_104

    :cond_9e
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v4, :cond_b5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b5

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, "This is WIFI, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_9d

    :cond_b5
    if-eqz v8, :cond_ed

    if-eqz p2, :cond_e4

    if-eqz p1, :cond_cb

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_cb

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, "Start SingleShot : MS-Assisted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    goto :goto_9d

    :cond_cb
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_db

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, "Start Tracking Mode : MS-Based"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_9d

    :cond_db
    const-string v3, "GnssLocationProvider_ex"

    const-string v4, "Data connection, But no MS-A, Ms-B capabilities"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_9d

    :cond_e4
    const-string v3, "GnssLocationProvider_ex"

    const-string v4, "There is no Data Connection, Start Standalone GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_9d

    :cond_ed
    const-string v4, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It\'s not CTC AGPS APN : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_104
    return v3
.end method

.method private extension_CMCCxtraDownloadRequest()Z
    .registers 8

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    :cond_a
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_80

    const/4 v1, 0x1

    const-string v4, "GnssLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :pswitch_3b
    const/4 v1, 0x0

    const-string v4, "GnssLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :pswitch_45
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_61

    const/4 v4, 0x1

    const-string v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_61
    const/4 v4, 0x0

    const-string v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    move v1, v4

    goto :goto_76

    :cond_6c
    const/4 v1, 0x1

    const-string v4, "GnssLocationProvider_ex"

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_76
    if-eqz v1, :cond_7c

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_xtraEnable(I)V

    goto :goto_7f

    :cond_7c
    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_xtraEnable(I)V

    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3b
    .end packed-switch
.end method

.method private extension_hasCapability(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private generateBeep()V
    .registers 11

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "generateBeep Method call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/16 v2, 0xe

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateBeep: Volume Level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v6, :cond_58

    const/4 v7, 0x7

    if-gt v6, v7, :cond_58

    if-ne v6, v7, :cond_3e

    const/16 v6, 0x64

    goto :goto_40

    :cond_3e
    mul-int/lit8 v6, v6, 0xe

    :goto_40
    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateBeep: valid Volume:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_58
    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "Error getting current volume: Setting volume as max volume"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x64

    :goto_61
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v7, :cond_6d

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v7}, Landroid/media/ToneGenerator;->release()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    :cond_6d
    new-instance v7, Landroid/media/ToneGenerator;

    invoke-direct {v7, v5, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 v7, 0x1c

    const/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8}, Landroid/media/ToneGenerator;->startTone(II)Z

    return-void
.end method

.method private getCpAgpsProfile()I
    .registers 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_GPS_ConfigAgpsMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    return v2

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private getCscFeatureString()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_GPS_SupportPrivacyLock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_GPS_SupportGTP"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_GPS_ConfigSuplHost"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_GPS_ConfigSuplVersion"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_GPS_ConfigAgpsMode"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_GPS_ConfigLppProfile"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_GPS_ConfigAgnssProtocol"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_GPS_ConfigOperationMode"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n AGPS Setting  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n Privacy Lock  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    if-ne v1, v10, :cond_77

    const-string v11, "ON"

    goto :goto_79

    :cond_77
    const-string v11, "OFF"

    :goto_79
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n Support GTP  :  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v10, :cond_86

    const-string v10, "ON"

    goto :goto_88

    :cond_86
    const-string v10, "OFF"

    :goto_88
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n SUPL Address  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n SUPL version  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n AGPS_Mode  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n LPP Profile  :   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n AGNSS Protocol  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n Operation mode  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "GnssLocationProvider_ex"

    const-string v11, "CSC config is saved"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getGpsCurrentApn(Landroid/content/Context;)Ljava/lang/String;
    .registers 14

    const-string v0, ""

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "getGpsCurrentApn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_56

    const-string v1, "GnssLocationProvider_ex"

    const-string v3, "This model uses multisim."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "gsm.sim.state"

    const-string v3, "0,0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v2

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slot1 Card Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v2, "GnssLocationProvider_ex"

    const-string v4, "Slot1 is empty. No need to check apn. return APN null."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    return-object v2

    :cond_56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    if-eqz v10, :cond_68

    array-length v5, v10

    if-lez v5, :cond_68

    aget v4, v10, v2

    goto :goto_74

    :cond_68
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    const-string v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "subID is null or 0 length, so get DefaultSubId!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    move v11, v4

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSubId from simSlot1, SubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/location/GnssLocationProvider_samsung;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "apn"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_104

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getCurrentApn] cursor.count() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_cf
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_e4
    const-string v2, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentApn] get apn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_cf .. :try_end_fa} :catchall_ff

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    nop

    return-object v0

    :catchall_ff
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_104
    const-string v2, ""

    return-object v2
.end method

.method private getLppBitmask()I
    .registers 11

    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_GPS_ConfigLppProfile"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_86

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_28

    const-string v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "subscriptionInfoList.size() is 0. return prevLppMask."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    return v5

    :cond_28
    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_86

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SubscriptionId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", SimOperatorName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", SimOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Jio 4G"

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "JIO 4G operator"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v7, :cond_82

    const/4 v0, 0x2

    goto :goto_83

    :cond_82
    const/4 v0, 0x7

    :cond_83
    :goto_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_86
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v4, :cond_be

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8e

    move v0, v1

    :cond_8e
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v5

    if-eqz v5, :cond_9d

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "US market operator: LPP enable(ECID +OTDOA)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    goto :goto_be

    :cond_9d
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isCaMarket()Z

    move-result v5

    if-eqz v5, :cond_ac

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "US market operator: LPP enable(ECID Only)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    goto :goto_be

    :cond_ac
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_be

    if-ne v0, v4, :cond_be

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "No Operator LPP Disable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_be
    :goto_be
    return v0
.end method

.method private getSKAFEnable()Z
    .registers 4

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .registers 11

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "getSuplServerFromCSC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_1f} :catch_21

    return-void

    :cond_20
    goto :goto_29

    :catch_21
    move-exception v2

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/4 v3, 0x0

    :try_start_2f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_34} :catch_36

    move-object v3, v4

    :goto_35
    goto :goto_48

    :catch_36
    move-exception v4

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "could not access file /data/system/gps/cscgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :catch_3f
    move-exception v4

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :goto_48
    if-eqz v3, :cond_6f

    :try_start_4a
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4d} :catch_53
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6f

    :catchall_51
    move-exception v0

    goto :goto_6b

    :catch_53
    move-exception v0

    :try_start_54
    const-string v4, "GnssLocationProvider_ex"

    const-string v5, " could not load file : /data/system/gps/cscgps.confdue to IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_5f
    move-exception v0

    :try_start_60
    const-string v4, "GnssLocationProvider_ex"

    const-string v5, " could not load file : /data/system/gps/cscgps.confdue to IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_51

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_6b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_6f
    :goto_6f
    const-string v4, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9f

    :try_start_7d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_9f

    :catch_84
    move-exception v5

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string v6, "GnssLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e9

    const-string v5, "CSC_SUPL_OPMODE"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string v5, "CSC_SUPL_HOST"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string v5, "CSC_SUPL_VER"

    const-string v6, "1"

    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CSC_SUPL_PORT"

    const-string v7, "7276"

    invoke-virtual {v2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CSC_SUPL_SSL"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_cc
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_cc .. :try_end_de} :catch_df

    goto :goto_e9

    :catch_df
    move-exception v8

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string v0, "GnssLocationProvider_ex"

    const-string v9, "[NumberFormatException] failed to convert supl information"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    :goto_e9
    const-string v0, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getSuplServerFromNetworkInfo()Ljava/lang/String;
    .registers 11

    const/16 v0, 0x136

    const/16 v1, 0x96

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a4

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v6, :cond_be

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v6

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_6d

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_6d

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_6d

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_AIO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v6, v7, :cond_3e

    goto :goto_6d

    :cond_3e
    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_52

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_52

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_52

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_52

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMK:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v6, v7, :cond_a3

    :cond_52
    const-string/jumbo v2, "supl.geo.t-mobile.com"

    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSuplServerFromNetworkInfo :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_6d
    :goto_6d
    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v6, v7, :cond_79

    const/16 v7, 0x136

    if-ne v4, v7, :cond_79

    const/16 v7, 0x96

    if-eq v5, v7, :cond_87

    :cond_79
    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_AIO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v6, v7, :cond_87

    sget-object v7, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v6, v7, :cond_82

    goto :goto_87

    :cond_82
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    :cond_87
    :goto_87
    const-string/jumbo v2, "supl.google.com"

    :goto_8a
    if-eqz v2, :cond_a3

    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getSuplServerFromNetworkInfo :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    :goto_a3
    goto :goto_be

    :cond_a4
    const-string/jumbo v2, "supl.google.com"

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSuplServerFromNetworkInfo :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    :goto_be
    return-object v2
.end method

.method public static getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    .registers 3

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_29a

    :pswitch_e
    goto :goto_2c

    :pswitch_f
    const-string v2, "45008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    goto :goto_2c

    :pswitch_19
    const-string v2, "45006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x2

    goto :goto_2c

    :pswitch_23
    const-string v2, "45005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    :cond_2c
    :goto_2c
    packed-switch v1, :pswitch_data_2a6

    goto :goto_39

    :pswitch_30
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :pswitch_33
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KTT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :pswitch_36
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_39
    :goto_39
    const-string v0, "TMB"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_46
    const-string v0, "TMK"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMK:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_53
    const-string v0, "TFN"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_60
    const-string v0, "TFO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_6d
    const-string v0, "ATT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_7a
    const-string v0, "AIO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_AIO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_87
    const-string v0, "TFA"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_94
    const-string v0, "XAA"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_a1
    const-string v0, "XAR"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_ae
    const-string v0, "VZW"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_VZW:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_bb
    const-string v0, "SPR"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_SPR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_c8
    const-string v0, "DCM"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_d5
    const-string v0, "KDI"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_e2
    const-string v0, "TLS"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    const-string v0, "KDO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    const-string v0, "PMB"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    const-string v0, "SPC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    goto/16 :goto_297

    :cond_10c
    const-string v0, "BMC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "VMC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "PCM"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "SOL"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "BWA"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    goto/16 :goto_294

    :cond_140
    const-string v0, "RWC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_291

    const-string v0, "FMC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_291

    const-string v0, "MTA"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_291

    const-string v0, "VTR"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_291

    const-string v0, "ESK"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_291

    const-string v0, "GLW"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    goto/16 :goto_291

    :cond_17e
    const-string v0, "XAC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_18b
    const-string v0, "SKT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string v0, "SKC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    const-string v0, "SKO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    goto/16 :goto_28e

    :cond_1ab
    const-string v0, "LGT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b

    const-string v0, "LUC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28b

    const-string v0, "LUO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    goto/16 :goto_28b

    :cond_1cb
    const-string v0, "KTT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string v0, "KTC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_288

    const-string v0, "KTO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    goto/16 :goto_288

    :cond_1eb
    const-string v0, "CHM"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_1f8
    const-string v0, "CTC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_205

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_205
    const-string v0, "CHU"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_212

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_212
    const-string v0, "CHN"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_285

    const-string v0, "CHC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    goto :goto_285

    :cond_227
    const-string v0, "MNX"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_234

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_234
    const-string v0, "IUS"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_241

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_241
    const-string v0, "UNE"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_24e
    const-string v0, "PNT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_25b
    const-string v0, "PET"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PET:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_268
    const-string v0, "SWC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_275
    const-string v0, "TUR"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_282

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_282
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_285
    :goto_285
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_288
    :goto_288
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KTT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_28b
    :goto_28b
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_28e
    :goto_28e
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_291
    :goto_291
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_294
    :goto_294
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :cond_297
    :goto_297
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    return-object v0

    :pswitch_data_29a
    .packed-switch 0x2f59814
        :pswitch_23
        :pswitch_19
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method private static isCaMarket()Z
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCaMarket : code/country_Code/contryISO_Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "BMC"

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "RWC"

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "TLS"

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "XAC"

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "Canada"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "CA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_73

    :cond_71
    const/4 v3, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v3, 0x1

    :goto_74
    move v0, v3

    const-string v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCaMarket : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isKORMarket()Z
    .registers 4

    const-string v0, "SKT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "SKC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "SKO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "LGT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "LUC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "LUO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "KTT"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "KTC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "KTO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "KOO"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_67

    :cond_65
    const/4 v0, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v0, 0x1

    :goto_68
    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKORMarket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSingleShotRequest(Lcom/android/internal/location/ProviderRequest;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v1, :cond_2c

    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2c

    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationRequest;

    invoke-virtual {v2}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v4

    if-eq v4, v3, :cond_2a

    return v0

    :cond_2a
    goto :goto_16

    :cond_2b
    return v3

    :cond_2c
    return v0
.end method

.method private static isUSAMarket()Z
    .registers 6

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code/country_Code/contryISO_Code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TMB"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "ATT"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "TFA"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "TFO"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "TFN"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "AIO"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "TMK"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "XAR"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "XAA"

    sget-object v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "USA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "US"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto :goto_a4

    :cond_a2
    const/4 v2, 0x0

    goto :goto_a5

    :cond_a4
    :goto_a4
    const/4 v2, 0x1

    :goto_a5
    const-string v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUSAMarket : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static isUSCDMAMarket()Z
    .registers 4

    const-string v0, "VZW"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "SPR"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "USC"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "BST"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "VMU"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "XAS"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "LRA"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "TFNVZW"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "ACG"

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v0, 0x1

    :goto_5e
    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUSCDMAMarket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isWifiOnlyModel()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%03d"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mcc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%03d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pub.3gppnetwork.org"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeAutoSuplUrl :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_80
    const/4 v2, 0x0

    return-object v2
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_ciq_start()Z
.end method

.method private native native_ciq_stop()Z
.end method

.method private native native_cleanup_extension()V
.end method

.method private native native_configuration_update_extension(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_init_extension()Z
.end method

.method private native native_is_gnss_configuration_supported_extension()Z
.end method

.method private static native native_is_supported_extension()Z
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendSuplHostNameToNsflp()V
    .registers 4

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send_supl_hostname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "supl_hostname"

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddressForNSFLP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x190

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    return-void
.end method

.method private setCMCCSuplServer(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setCMCCSuplServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ServerAddr"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerPort"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCMCCSuplServer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v3, "SUPL_HOST"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v3, "SUPL_PORT"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/etc/gps_cmcc.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_4d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_52} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_52} :catch_54

    move-object v3, v4

    :goto_53
    goto :goto_66

    :catch_54
    move-exception v4

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "Could not access GPS configuration file in save : /etc/gps_cmcc.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :catch_5d
    move-exception v4

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "Could not open GPS configuration file in save : /etc/gps_cmcc.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :goto_66
    if-eqz v3, :cond_8b

    :try_start_68
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v5, "Generated by GnssLocationProvider."

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6f} :catch_7e
    .catch Ljava/lang/ClassCastException; {:try_start_68 .. :try_end_6f} :catch_75
    .catchall {:try_start_68 .. :try_end_6f} :catchall_73

    :goto_6f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8b

    :catchall_73
    move-exception v4

    goto :goto_87

    :catch_75
    move-exception v4

    :try_start_76
    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "Could not store GPS configuration file : /etc/gps_cmcc.confdue to ClassCastException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :catch_7e
    move-exception v4

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "Could not store GPS configuration file : /etc/gps_cmcc.confdue to IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_73

    goto :goto_6f

    :goto_87
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    :cond_8b
    :goto_8b
    return-void
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .registers 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setCscParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    :try_start_1a
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x1

    :cond_27
    const-string v0, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isDeleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_3d} :catch_3e

    :cond_3d
    goto :goto_46

    :catch_3e
    move-exception v0

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    move v12, v1

    const/4 v0, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v12, :cond_b2

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    if-ne v1, v14, :cond_b2

    const-string v1, "MSBASED"

    iput-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    iput v13, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    const-string/jumbo v1, "supl.google.com"

    iput-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v1, 0x1c6b

    iput v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iput v14, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    iput v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mSuplAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  mSuplVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mSuplPort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mSuplSslMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_b2

    iget v2, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    iget-object v3, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iget v5, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    iget v7, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    :cond_b2
    iput v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string v0, "TRUE"

    const-string/jumbo v1, "is_empty"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CscParamIsEmpty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TRUE"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    return-void

    :cond_dc
    const-string/jumbo v0, "operation_mode"

    iget-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string/jumbo v0, "hslp_addr"

    iget-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string/jumbo v0, "hslp_port"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const-string/jumbo v0, "ssl"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const-string/jumbo v0, "ssl_cert"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const-string/jumbo v0, "supl_ver"

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    packed-switch v16, :pswitch_data_23e

    iput v13, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    goto :goto_126

    :pswitch_120
    iput v13, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    goto :goto_126

    :pswitch_123
    iput v14, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    nop

    :goto_126
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v13, v0

    const-string v0, "MSBASED"

    iget-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSuplVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSuplPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSuplSslMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_17d

    iget v2, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    iget-object v3, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iget v5, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v6, 0x0

    iget v7, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    :cond_17d
    iput v14, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string v0, "CSC_SUPL_OPMODE"

    iget-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CSC_SUPL_HOST"

    iget-object v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CSC_SUPL_VER"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CSC_SUPL_PORT"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CSC_SUPL_SSL"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1ae
    const-string v0, "CSC_SUPL_SUPLSERVERFROMCSC"

    iget v1, v8, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/gps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :try_start_1c1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1ca

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1ca
    .catch Ljava/lang/SecurityException; {:try_start_1c1 .. :try_end_1ca} :catch_1cb

    :cond_1ca
    goto :goto_1d3

    :catch_1cb
    move-exception v0

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, " could not make directory : /data/system/gps"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d3
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    :try_start_1db
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f6

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1e4} :catch_1ee
    .catch Ljava/lang/SecurityException; {:try_start_1db .. :try_end_1e4} :catch_1e5

    goto :goto_1f6

    :catch_1e5
    move-exception v0

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, " could not access file : /data/system/gps"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    :catch_1ee
    move-exception v0

    const-string v3, "GnssLocationProvider_ex"

    const-string v4, " could not create file : /data/system/gps"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f6
    :goto_1f6
    nop

    :goto_1f7
    const/4 v0, 0x0

    move-object v3, v0

    :try_start_1f9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_1fe} :catch_209
    .catch Ljava/lang/SecurityException; {:try_start_1f9 .. :try_end_1fe} :catch_200

    move-object v3, v0

    :goto_1ff
    goto :goto_212

    :catch_200
    move-exception v0

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_212

    :catch_209
    move-exception v0

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, " could not open file : /data/system/gps/cscgps.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    :goto_212
    if-eqz v3, :cond_23c

    :try_start_214
    const-string v0, "Saved CSC GPS Information"

    invoke-virtual {v13, v3, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "GnssLocationProvider_ex"

    const-string v4, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_220} :catch_22c
    .catch Ljava/lang/ClassCastException; {:try_start_214 .. :try_end_220} :catch_223
    .catchall {:try_start_214 .. :try_end_220} :catchall_221

    goto :goto_234

    :catchall_221
    move-exception v0

    goto :goto_238

    :catch_223
    move-exception v0

    :try_start_224
    const-string v4, "GnssLocationProvider_ex"

    const-string v5, " could not store properties : /data/system/gps/cscgps.confdue to ClassCastException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_234

    :catch_22c
    move-exception v0

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, " could not store properties : /data/system/gps/cscgps.confdue to IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_234
    .catchall {:try_start_224 .. :try_end_234} :catchall_221

    :goto_234
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_23c

    :goto_238
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_23c
    :goto_23c
    return-void

    nop

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_123
        :pswitch_120
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .registers 11

    if-eqz p1, :cond_17

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Docomo SUPL IOT test = true server = dcm-supl.com"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    const-string v4, "dcm-supl.com"

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xf

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_1e

    :cond_17
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Docomo SUPL IOT test = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method private setGnssChipProperty()V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/gps/chip.info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_26

    int-to-char v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5e

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_57

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_57

    const-string/jumbo v6, "sys.gps.chipvendor"

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sys.gps.chipinfo"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v5

    const/4 v8, 0x3

    if-lt v6, v8, :cond_5e

    const-string/jumbo v6, "sys.gps.swversion"

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_57
    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Invalid chipInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5e} :catch_6b
    .catchall {:try_start_1 .. :try_end_5e} :catchall_69

    :cond_5e
    :goto_5e
    if-eqz v0, :cond_79

    :try_start_60
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    :goto_63
    goto :goto_79

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    :catchall_69
    move-exception v1

    goto :goto_7a

    :catch_6b
    move-exception v1

    :try_start_6c
    const-string v2, "GnssLocationProvider_ex"

    const-string v3, "Could not open gpsInfo file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_69

    if-eqz v0, :cond_79

    :try_start_75
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_64

    goto :goto_63

    :cond_79
    :goto_79
    return-void

    :goto_7a
    if-eqz v0, :cond_84

    :try_start_7c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_84
    :goto_84
    throw v1
.end method

.method private setKoreanOperatorsSuplSetting()I
    .registers 11

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "setKoreanOperatorsSuplSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, " SKT GPS mode : SUPL 2.0.1 AGNSS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    const-string/jumbo v0, "sys.sktgps"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_22
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_3b

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, " KT GPS mode : SUPL2.0 AGNSS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_53

    :cond_3b
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v2, "setKoreanOperatorsSuplSetting() : Google SUPL 2.0 AGNSS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_xtraEnable(I)V

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0xf

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    :goto_53
    return v1
.end method

.method private setLppSupport(ZI)V
    .registers 8

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLppSupport("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    if-nez p1, :cond_2b

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extension()Z

    move-result v0

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_init_extension "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz v0, :cond_57

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_54

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v1

    if-eqz v1, :cond_54

    const/16 v1, 0x18

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LPP_PROFILE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nAGPS_MODE=7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    goto :goto_57

    :cond_54
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_setLppSupport(I)V

    :cond_57
    :goto_57
    if-nez p1, :cond_64

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extension()V

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void
.end method

.method private setSKAFEnable(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v1, "USE_SECGPS_CONF"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_2e

    aget-object v5, v1, v4

    if-eqz v5, :cond_2b

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2e
    :try_start_2e
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/gps"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3e
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/gps/secgps.conf"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_55

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "/data/system/gps/secgps.conf file doesn\'t exist./data/system/gps/secgps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_62

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v5, v3}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_62
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_67} :catch_a5

    :try_start_67
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v7, "SECGPS Configuration"

    invoke-virtual {v6, v5, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_75} :catch_81
    .catch Ljava/lang/ClassCastException; {:try_start_67 .. :try_end_75} :catch_81
    .catchall {:try_start_67 .. :try_end_75} :catchall_7f

    :try_start_75
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_8c

    :catch_79
    move-exception v6

    :try_start_7a
    const-string v7, "GnssLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_a5

    goto :goto_92

    :catchall_7f
    move-exception v6

    goto :goto_97

    :catch_81
    move-exception v6

    :try_start_82
    const-string v7, "GnssLocationProvider_ex"

    const-string v8, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_7f

    :try_start_89
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    :goto_8c
    goto :goto_96

    :catch_8d
    move-exception v6

    :try_start_8e
    const-string v7, "GnssLocationProvider_ex"

    const-string v8, " could not close file : /data/system/gps/secgps.conf"

    :goto_92
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_95} :catch_a5

    nop

    :goto_96
    goto :goto_a9

    :goto_97
    nop

    :try_start_98
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a4

    :catch_9c
    move-exception v7

    :try_start_9d
    const-string v8, "GnssLocationProvider_ex"

    const-string v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a4
    throw v6
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a5} :catch_a5

    :catch_a5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_a9
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_ae
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string v5, "SECGPS Configuration"

    invoke-virtual {v4, v2, v5}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b5} :catch_b6

    goto :goto_be

    :catch_b6
    move-exception v4

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "could not store to writer"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v4, :cond_ca

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_d3

    :cond_ca
    const/16 v4, 0x18

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :goto_d3
    return-void
.end method

.method private setSimOperator_KOR()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/server/location/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    const-string v6, "GnssLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SubscriptionId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", SimOperatorName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", SimOperator = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/location/GnssLocationProvider_samsung;->simOperatorKOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_5e
    return-void
.end method

.method private setSktSuplVer()V
    .registers 10

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "AGPS_SUPL_VER_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "wpde.nate.com"

    const/4 v3, 0x4

    const/16 v5, 0x1c6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method checkConnectEmergency()Z
    .registers 9

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "checkConnectEmergency"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    move v2, v1

    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_76

    aget-object v3, v0, v2

    if-nez v3, :cond_19

    goto :goto_73

    :cond_19
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_73

    :cond_24
    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", Capability : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_73

    const/4 v1, 0x1

    return v1

    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_76
    return v1
.end method

.method checkSecTestMode()Z
    .registers 5

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/gps/secgps.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, "SEC Test Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_21} :catch_23

    return v1

    :cond_22
    goto :goto_2b

    :catch_23
    move-exception v1

    const-string v2, "GnssLocationProvider_ex"

    const-string v3, "Could not access GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method protected extension_changeChnNlpAccuracy(Landroid/location/Location;)V
    .registers 4

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_28

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_28

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_28

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_28

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_47

    :cond_28
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    invoke-virtual {p1, v1}, Landroid/location/Location;->setAccuracy(F)V

    :cond_3f
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extension_changeChnNlpAccuracy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void
.end method

.method extension_checkSmsSuplInit()V
    .registers 3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_10

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_17

    :cond_10
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_29

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method extension_checkWapPushMsg(Z)Z
    .registers 5

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extension_checkWapPushMsg(), mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KTT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_AIO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMK:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_SPR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_UNE:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PET:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_9a

    goto :goto_9c

    :cond_9a
    const/4 v0, 0x0

    goto :goto_9d

    :cond_9c
    :goto_9c
    const/4 v0, 0x1

    :goto_9d
    return v0
.end method

.method extension_checkWapSuplInit(Landroid/net/ConnectivityManager;)V
    .registers 11

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_10

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_99

    :cond_10
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "agps_function_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GnssLocationProvider_ex"

    const-string v3, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v3, 0x0

    if-eqz v1, :cond_58

    const v4, 0x1000001a

    const-string v5, "New message notification LCD on"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    :cond_58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    if-eqz v3, :cond_67

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_67
    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_8f

    if-eqz p1, :cond_87

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    if-eqz v4, :cond_86

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_86
    goto :goto_99

    :cond_87
    const-string v2, "GnssLocationProvider_ex"

    const-string v4, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c8

    const-string v2, "GnssLocationProvider_ex"

    const-string v4, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    :goto_99
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_ab

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KTT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_c7

    const/4 v3, 0x3

    const-string v4, "221.148.242.107"

    const/16 v5, 0x1c6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    return-void

    :cond_c8
    const-string v2, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected extension_dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getCscFeatureString()V

    const-string v0, "============ GPS CSC Feature State ============"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mGpsCscFeatureDump:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method extension_getCellInfoPLMN([I)Z
    .registers 13

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extension_getCellInfoMnc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    :cond_1a
    const/4 v2, 0x0

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v6

    if-eqz v6, :cond_a3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-le v3, v4, :cond_42

    const-string v4, "GnssLocationProvider_ex"

    const-string/jumbo v6, "more than one registered CellInfo.  Can\'t tell which is active."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_42
    const/4 v6, 0x0

    const/4 v7, 0x0

    instance-of v8, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_58

    move-object v8, v5

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v7

    goto :goto_7f

    :cond_58
    instance-of v8, v5, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_6c

    move-object v8, v5

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v7

    goto :goto_7f

    :cond_6c
    instance-of v8, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_7f

    move-object v8, v5

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v6

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v7

    :cond_7f
    :goto_7f
    const-string v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "extension_getCellInfoMnc : mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v6, p1, v2

    aput v7, p1, v4

    return v4

    :cond_a3
    goto :goto_23

    :cond_a4
    const-string v4, "GnssLocationProvider_ex"

    const-string/jumbo v5, "extension_getCellInfoMnc return fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .registers 8

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_17

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_21

    :cond_17
    const-string v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_21
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_4a

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "register EmergencyNetworkConnectivityCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mEmergencyNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v2, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v1, :cond_53

    const-string v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_53
    const-string v1, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.location.ALARM_GPS_MINOR_SESSION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method extension_mBroadcastReceiver(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .registers 37

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    const/16 v25, 0x0

    if-nez v14, :cond_13

    return-object v11

    :cond_13
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_23

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5d

    :cond_23
    const-string v0, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setCMCCSuplServer(Landroid/content/Intent;)V

    goto :goto_5d

    :cond_2f
    const-string v0, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v1, "SUPL_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v2, "SUPL_PORT"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ServerAddr"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ServerPort"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5d
    :goto_5d
    const-string v0, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    or-int/lit8 v25, v25, 0x1

    const-string/jumbo v0, "packet_data"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "packet_data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "packet_length"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "packet_length"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v32, v11

    move-object/from16 v33, v14

    move/from16 v0, v25

    goto/16 :goto_18f

    :cond_91
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    const-string/jumbo v0, "ss"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_STATE_CHANGED received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getLppBitmask()I

    move-result v1

    iget v2, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    if-eq v1, v2, :cond_ce

    iput v1, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    move/from16 v12, p2

    invoke-direct {v15, v12, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    goto :goto_d0

    :cond_ce
    move/from16 v12, p2

    :goto_d0
    iget-boolean v2, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_f5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v3

    if-nez v3, :cond_e1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isCaMarket()Z

    move-result v3

    if-eqz v3, :cond_e5

    :cond_e1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_set_supl_server()V

    const/4 v2, 0x1

    :cond_e5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isKORMarket()Z

    move-result v3

    if-eqz v3, :cond_ef

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSimOperator_KOR()V

    const/4 v2, 0x1

    :cond_ef
    if-eqz v2, :cond_f4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendExtraConfigurationString()V

    :cond_f4
    goto :goto_12f

    :cond_f5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_GPS_ConfigLppeCp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_10f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_GPS_ConfigLppeCp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-gtz v2, :cond_129

    :cond_10f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_GPS_ConfigLppeUp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_12f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_GPS_ConfigLppeUp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_12f

    :cond_129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setBaroCalValue()V

    goto :goto_12f

    :cond_12d
    move/from16 v12, p2

    :cond_12f
    :goto_12f
    move-object/from16 v32, v11

    move-object/from16 v33, v14

    goto :goto_18d

    :cond_134
    move/from16 v12, p2

    const-string v0, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    const-string v0, "com.att.iqi.extra.SERVICE_RUNNING"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->initializeMinorSession()V

    :cond_14a
    goto :goto_12f

    :cond_14b
    const-string v0, "com.android.internal.location.ALARM_GPS_MINOR_SESSION_TIMEOUT"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    iget-boolean v0, v15, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    if-eqz v0, :cond_189

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    move-object v0, v15

    move-object/from16 v32, v11

    move-wide/from16 v11, v16

    move-object/from16 v33, v14

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    move-wide/from16 v17, v22

    move-wide/from16 v19, v26

    move-wide/from16 v21, v28

    move-wide/from16 v23, v30

    invoke-virtual/range {v0 .. v24}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_reportCiqData(BBBBDDDDDDDDDD)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_ciq_stop()Z

    goto :goto_18d

    :cond_189
    move-object/from16 v32, v11

    move-object/from16 v33, v14

    :goto_18d
    move/from16 v0, v25

    :goto_18f
    const-string/jumbo v1, "result_mask"

    move-object/from16 v2, v32

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2
.end method

.method extension_nativeInitForSuplNI(Z)V
    .registers 4

    if-nez p1, :cond_d

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "navive_init() is called to set callbacks for SUPL-NI when mEnabled is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extension()Z

    :cond_d
    return-void
.end method

.method extension_printSvStatus([I[FI)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_a
    if-ge v1, p3, :cond_70

    aget v5, p2, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6d

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v1

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConstellationString:[Ljava/lang/String;

    aget v6, p1, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p2, v1

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v1

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_50

    move v5, v3

    goto :goto_51

    :cond_50
    const/4 v5, 0x1

    :goto_51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v5, v4, 0x6

    const/4 v6, 0x5

    if-ne v5, v6, :cond_63

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    add-int/lit8 v4, v4, 0x1

    aget v5, p1, v1

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_6d

    add-int/lit8 v2, v2, 0x1

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_70
    const-string v1, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SV Count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "      (PRN, Constellation, SNR, Used)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9e

    const-string v1, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    return-void
.end method

.method extension_reloadMakeAutoSuplUrl(Z)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_12

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mServerTypeI:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    :cond_12
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mServerTypeI:I

    if-nez v0, :cond_93

    :cond_16
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_93

    if-eqz p1, :cond_93

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    :cond_30
    goto :goto_93

    :cond_31
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_AIO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_XAA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMK:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFA:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_79

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TFN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_93

    :cond_79
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_93

    if-eqz p1, :cond_93

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromNetworkInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    :cond_93
    :goto_93
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PNT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v2, :cond_a3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->PER_PET:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v2, :cond_bd

    :cond_a3
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_bd

    if-eqz p1, :cond_bd

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    const/4 v3, 0x2

    const/16 v5, 0x1c6b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xf

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    :cond_bd
    return-void
.end method

.method public extension_reportCiqData(BBBBDDDDDDDDDD)Z
    .registers 42

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->hasIqi()Z

    move-result v1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-nez v1, :cond_24

    iget-boolean v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "GnssLocationProvider_ex"

    const-string v4, "CIQ has been disabled!!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iput-boolean v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3

    :cond_24
    new-instance v1, Lcom/att/iqi/lib/metrics/lc/LC18;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;-><init>()V

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->clear()V

    iget-boolean v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_37

    invoke-virtual {v1, v5}, Lcom/att/iqi/lib/metrics/lc/LC18;->setRequestType(B)Lcom/att/iqi/lib/metrics/lc/LC18;

    move/from16 v4, p1

    goto :goto_3c

    :cond_37
    move/from16 v4, p1

    invoke-virtual {v1, v4}, Lcom/att/iqi/lib/metrics/lc/LC18;->setRequestType(B)Lcom/att/iqi/lib/metrics/lc/LC18;

    :goto_3c
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/att/iqi/lib/metrics/lc/LC18;->setSource(B)Lcom/att/iqi/lib/metrics/lc/LC18;

    move/from16 v6, p2

    invoke-virtual {v1, v6}, Lcom/att/iqi/lib/metrics/lc/LC18;->setResult(B)Lcom/att/iqi/lib/metrics/lc/LC18;

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Lcom/att/iqi/lib/metrics/lc/LC18;->setFieldsValid(B)Lcom/att/iqi/lib/metrics/lc/LC18;

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double v10, p5, v8

    double-to-int v10, v10

    invoke-virtual {v1, v10}, Lcom/att/iqi/lib/metrics/lc/LC18;->setLatitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    mul-double v12, p7, v8

    double-to-int v12, v12

    invoke-virtual {v1, v12}, Lcom/att/iqi/lib/metrics/lc/LC18;->setLongitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v5, p9, v12

    double-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/att/iqi/lib/metrics/lc/LC18;->setAltitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    mul-double v2, p11, v12

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/att/iqi/lib/metrics/lc/LC18;->setVelocityHorizontal(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    mul-double v8, p13, v12

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Lcom/att/iqi/lib/metrics/lc/LC18;->setVelocityVertical(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double v12, p15, v14

    double-to-int v12, v12

    invoke-virtual {v1, v12}, Lcom/att/iqi/lib/metrics/lc/LC18;->setHeading(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    mul-double v2, p17, v14

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/att/iqi/lib/metrics/lc/LC18;->setUncertaintyAngle(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double v4, p19, v14

    double-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/att/iqi/lib/metrics/lc/LC18;->setUncertaintyAint(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    mul-double v2, p21, v14

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/att/iqi/lib/metrics/lc/LC18;->setUncertaintyPerpendicular(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    mul-double v4, p23, v14

    double-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/att/iqi/lib/metrics/lc/LC18;->setUncertaintyAltitude(I)Lcom/att/iqi/lib/metrics/lc/LC18;

    iget-boolean v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    if-eqz v4, :cond_20a

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION REQUEST TYPE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getRequestType()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION RESULT TYPE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getResult()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION SOURCE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getSource()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION FIELD VALIDITY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getFieldsValid()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION LATITUDE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getLatitude()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION LONGITUDE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getLongitude()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION ALTITUDE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getAltitude()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION VELOCITY HORIZONTAL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getVelocityHorizontal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION VELOCITY VERTICAL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getVelocityVertical()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION HEADING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getHeading()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION UNCERTAINITY ANGLE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getUncertaintyAngle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION UNCERTAINITY ALONG = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getUncertaintyAint()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION UNCERTAINITY PERPRNDICULAR = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getUncertaintyPerpendicular()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CIQ LC18 SUBMISSION UNCERTAINITY ALTITUDE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/att/iqi/lib/metrics/lc/LC18;->getUncertaintyAltitude()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20a
    iget-boolean v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    if-eqz v4, :cond_228

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "Minor session is completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/16 v6, 0x15

    invoke-static {v4, v6, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_ciq_stop()Z

    iput-boolean v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLc18RequestedByIqservice:Z

    :cond_228
    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->iqiMgr:Lcom/att/iqi/lib/IQIManager;

    if-eqz v4, :cond_253

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->iqiMgr:Lcom/att/iqi/lib/IQIManager;

    sget-object v5, Lcom/att/iqi/lib/metrics/lc/LC18;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v4

    if-eqz v4, :cond_247

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->iqiMgr:Lcom/att/iqi/lib/IQIManager;

    invoke-virtual {v4, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    iget-boolean v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    if-eqz v4, :cond_25f

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "LC18 SUBMISSION ENDS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25f

    :cond_247
    iget-boolean v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    if-eqz v4, :cond_25f

    const-string v4, "GnssLocationProvider_ex"

    const-string v5, "IQIManager doesn\'t allow LC18 to be submited."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25f

    :cond_253
    iget-boolean v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    if-eqz v4, :cond_25f

    const-string v4, "GnssLocationProvider_ex"

    const-string/jumbo v5, "iqiMgr(LC18) is not generated..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25f
    :goto_25f
    const/4 v4, 0x1

    return v4
.end method

.method extension_reportGeofenceAddStatus(II)V
    .registers 7

    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    const/16 v1, 0x18

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->getBundle(III)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    return-void
.end method

.method extension_reportGeofencePauseStatus(II)V
    .registers 7

    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    const/16 v1, 0x18

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->getBundle(III)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    return-void
.end method

.method extension_reportGeofenceRemoveStatus(II)V
    .registers 7

    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    const/16 v1, 0x18

    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->getBundle(III)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    return-void
.end method

.method extension_reportGeofenceResumeStatus(II)V
    .registers 7

    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v1

    const-string v2, "GnssLocationProvider_ex"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_1b
    const/16 v1, 0x18

    const/4 v2, 0x5

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->getBundle(III)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    return-void
.end method

.method extension_reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 31

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    if-eqz p2, :cond_54

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const/4 v11, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    or-int/lit8 v11, v11, 0x2

    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasBearing()Z

    move-result v12

    if-eqz v12, :cond_3c

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getBearing()F

    move-result v9

    or-int/lit8 v11, v11, 0x8

    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v12

    if-eqz v12, :cond_48

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    or-int/lit8 v11, v11, 0x10

    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getSpeed()F

    move-result v8

    or-int/lit8 v11, v11, 0x4

    :cond_54
    move-wide/from16 v26, v4

    move-wide v3, v2

    move-wide v1, v0

    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v5

    if-eqz v5, :cond_85

    move-object v12, v5

    move/from16 v13, p1

    move v14, v11

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v6

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-wide/from16 v24, v26

    :try_start_76
    invoke-interface/range {v12 .. v25}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_85

    :catch_7a
    move-exception v0

    move-object v12, v0

    const-string v12, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    :goto_85
    return-void
.end method

.method extension_reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 37

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    or-int/lit8 v5, v5, 0x2

    :cond_24
    move-wide/from16 v24, v1

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getBearing()F

    move-result v1

    or-int/lit8 v5, v5, 0x8

    move/from16 v26, v1

    goto :goto_37

    :cond_35
    move/from16 v26, v3

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    or-int/lit8 v5, v5, 0x10

    move/from16 v27, v1

    goto :goto_48

    :cond_46
    move/from16 v27, v4

    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    or-int/lit8 v1, v5, 0x4

    move/from16 v29, v0

    move/from16 v28, v1

    goto :goto_5d

    :cond_59
    move/from16 v29, v0

    move/from16 v28, v5

    :goto_5d
    const-string/jumbo v0, "sec_location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v30

    if-eqz v30, :cond_96

    const/16 v0, 0x2710

    move/from16 v13, p1

    if-le v13, v0, :cond_96

    move-object/from16 v1, v30

    move v2, v13

    move/from16 v3, v28

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v24

    move/from16 v10, v29

    move/from16 v11, v26

    move/from16 v12, v27

    move-wide/from16 v13, v22

    move/from16 v15, p3

    move-wide/from16 v16, p4

    :try_start_87
    invoke-interface/range {v1 .. v17}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_96

    :catch_8b
    move-exception v0

    move-object v1, v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :goto_96
    return-void
.end method

.method protected extension_secGnssConfigurationUpdate(Ljava/lang/String;)V
    .registers 4

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extension_secGnssConfigurationUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    return-void
.end method

.method public extension_sendEngineOnlyMode(I)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extension_sendEngineOnlyMode, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENGINE_ONLY_MODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_4d

    :cond_36
    const/16 v0, 0x18

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENGINE_ONLY_MODE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .registers 10

    const-string/jumbo v0, "set_csc_parameters"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    return v1

    :cond_e
    const-string v0, "com.skt.intent.action.AGPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    const-string/jumbo v0, "opType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cmdType"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string/jumbo v2, "msAssisted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string/jumbo v2, "msBased"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    :cond_3f
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    goto :goto_57

    :cond_43
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    const-string/jumbo v2, "sys.sktgps"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    :goto_57
    return v1

    :cond_58
    const-string/jumbo v0, "setOllehServer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string/jumbo v0, "host"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "port"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const-string v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "host :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " port ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_99
    const-string/jumbo v0, "setNativeServer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v3, "setNativeServer"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    return v1

    :cond_ad
    const-string v0, "activateGPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "activateGPS is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_bd
    const-string v0, "deactivateGPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "deactivateGPS is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_cd
    const-string v0, "activateNLP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "activateNLP is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_dd
    const-string v0, "deactivateNLP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "deactivateNLP is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ed
    const-string v0, "activateAGPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "activateAGPS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assisted_gps_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_108
    const-string v0, "deactivateAGPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    const-string v0, "GnssLocationProvider_ex"

    const-string v3, "deactivateAGPS"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "assisted_gps_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_123
    const-string/jumbo v0, "setMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    const-string v0, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode ktPositionMode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14f
    const-string/jumbo v0, "getMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    const-string v0, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMode ktPositionMode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mode"

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return v1

    :cond_17a
    const-string/jumbo v0, "set_use_udp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    const-string v0, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_use_udp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use_udp"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "use_udp"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1b4

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    if-nez v0, :cond_1b6

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    goto :goto_1b6

    :cond_1b4
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    :cond_1b6
    :goto_1b6
    return v1

    :cond_1b7
    const-string/jumbo v0, "set_dcm_iot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const-string v0, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_dcm_iot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dcm_iot"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dcm_iot"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setDcmSuplIot(Z)V

    return v1

    :cond_1e7
    const-string/jumbo v0, "request_running"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mStarted:Z

    return v0

    :cond_1f3
    const-string/jumbo v0, "set_lpp_support"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    const-string/jumbo v0, "set_lpp"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    return v1

    :cond_207
    const-string/jumbo v0, "setSecGpsConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v2, "setSecGpsConf"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    return v1

    :cond_21c
    const-string v0, "deleteSecGpsConf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    const-string v0, "GnssLocationProvider_ex"

    const-string v2, "deleteSecGpsConf"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->deleteSecGpsConf()V

    return v1

    :cond_22f
    const-string/jumbo v0, "supl_hostname_to_nsflp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendSuplHostNameToNsflp()V

    return v1

    :cond_23c
    const-string/jumbo v0, "gnss_configuration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26f

    const-string/jumbo v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-eqz v0, :cond_26e

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_26e

    const-string v0, "config_string"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26d

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    :cond_26d
    return v1

    :cond_26e
    return v2

    :cond_26f
    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extension_sendExtraCommand: unknown command "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method extension_sendGpsTime(JJ)V
    .registers 10

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_83

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_sync_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gps clock sync: CLOCK_SYNC_ENABLED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clock_sync_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "gps:timestamp(Ms) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "currentTimeMillis:(Ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-lez v0, :cond_83

    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_83

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "[GPS Time for DRM] reportLocation call setAndBroadcastGPSSetTimeForDRM"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.GPS_SET_TIME"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p3, p4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_83
    return-void
.end method

.method extension_setStartNavigatingModes(IZLcom/android/internal/location/ProviderRequest;)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_supported_extension()Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "HIDL service may have been died. reset it."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extension()Z

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 p1, 0x0

    return p1

    :cond_1f
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSCDMAMarket()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_38

    const/4 p1, 0x1

    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "LTE. mPositionMode is set to MSBASED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_38
    const/4 p1, 0x0

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "not LTE. mPositionMode is changed to STANDALONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isKORMarket()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setKoreanOperatorsSuplSetting()I

    move-result p1

    :cond_4b
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_6b

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_6b

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_6b

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_85

    :cond_6b
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHN startNavigating mPositionMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->isWifiOnlyModel()Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_94
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_ba

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->isSingleShotRequest(Lcom/android/internal/location/ProviderRequest;)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->extCtcSelectPositionMode(ZZ)I

    move-result p1

    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHN_CTC startNavigating mPositionMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_ca

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_11f

    :cond_ca
    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->isSingleShotRequest(Lcom/android/internal/location/ProviderRequest;)Z

    move-result v0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_105

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gps_noti_sound_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e9

    const/4 v4, 0x1

    nop

    :cond_e9
    move v1, v4

    const-string v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS noti sound enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_105

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->generateBeep()V

    :cond_105
    if-eqz v0, :cond_11f

    const/4 p1, 0x2

    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_133

    const/4 p1, 0x0

    const-string v1, "GnssLocationProvider_ex"

    const-string v2, "SIM card absent. force set position_mode to standalone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_133
    return p1
.end method

.method extension_set_supl_server()V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromCSC()V

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplVersion:I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_f7

    :cond_19
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v0, :cond_f7

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$5;->$SwitchMap$com$android$server$location$GnssLocationProvider_samsung$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f8

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_f7

    :pswitch_3b
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f7

    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_f7

    :pswitch_4f
    const/4 v1, 0x2

    const-string/jumbo v2, "supl.iusacell.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_f7

    :pswitch_5f
    const/4 v1, 0x1

    const-string v2, "221.176.0.55"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_f7

    :pswitch_6e
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_f7

    :pswitch_73
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto/16 :goto_f7

    :pswitch_82
    const/4 v1, 0x2

    const-string/jumbo v2, "location2.kddi.ne.jp"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_f7

    :pswitch_91
    const-string v0, "dcm_supl_iot"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set supl server for JPN_DCM, iot value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const/4 v1, 0x3

    const-string v2, "dcm-supl.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_f7

    :cond_c6
    const/4 v1, 0x3

    const-string/jumbo v2, "supl.google.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_f7

    :pswitch_d5
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromNetworkInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f7

    const/4 v1, 0x2

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    goto :goto_f7

    :pswitch_e8
    const/4 v1, 0x2

    const-string/jumbo v2, "supl.geo.t-mobile.com"

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->configurationUpdate_suplServer(ILjava/lang/String;IIII)V

    nop

    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
        :pswitch_d5
        :pswitch_d5
        :pswitch_91
        :pswitch_82
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_73
        :pswitch_6e
        :pswitch_5f
        :pswitch_5f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method extension_set_xtra_downloaded_time()V
    .registers 5

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isKORMarket()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2e

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2e

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2e

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2e

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_50

    :cond_2e
    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extension_set_xtra_downloaded_time()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "persist.sys.xtra_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.angryGps.XtraSettings"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_50
    return-void
.end method

.method extension_stopNavigating()V
    .registers 4

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$5;->$SwitchMap$com$android$server$location$GnssLocationProvider_samsung$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_43

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1a

    goto :goto_57

    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_57

    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_29
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.sktgps"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_43
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_57

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "release ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    :cond_57
    :goto_57
    return-void
.end method

.method protected getBundle(III)Landroid/os/Bundle;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMobileDataEnabled()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-nez v0, :cond_17

    return v0

    :cond_17
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2f

    move v1, v2

    nop

    :cond_2f
    move v0, v1

    :cond_30
    const-string v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method handleWakelockControl(II)V
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x17

    packed-switch p1, :pswitch_data_38

    const-string v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "wakelock status is neither 0 nor 1."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :pswitch_f
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mStarted:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->getBundle(III)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    goto :goto_35

    :cond_20
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Location request has been removed. Skip to get wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :pswitch_28
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->getBundle(III)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendInfoToNsflp(ILandroid/os/Bundle;)V

    nop

    :goto_35
    return-void

    nop

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_28
        :pswitch_f
    .end packed-switch
.end method

.method hasIqi()Z
    .registers 2

    const-string/jumbo v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method init_GnssLocationPrivider_samsung(Landroid/content/Context;)V
    .registers 16

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mAlarmMgr:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_GPS_MINOR_SESSION_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mCiqTimeoutIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->WAKELOCK_KEY:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v1, "qcom"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    if-eqz v1, :cond_8e

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_97

    :cond_8e
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecSalesCode:Ljava/lang/String;

    :cond_97
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_a5
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_aa} :catch_b5
    .catch Ljava/lang/SecurityException; {:try_start_a5 .. :try_end_aa} :catch_ac

    move-object v5, v6

    :goto_ab
    goto :goto_be

    :catch_ac
    move-exception v6

    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "Could not access GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    :catch_b5
    move-exception v6

    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "Could not open GPS configuration file /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :goto_be
    if-eqz v5, :cond_df

    :try_start_c0
    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c0 .. :try_end_c3} :catch_c9
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c7

    :goto_c3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_df

    :catchall_c7
    move-exception v3

    goto :goto_db

    :catch_c9
    move-exception v6

    :try_start_ca
    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "Could not load GPS configuration file /data/system/gps/secgps.confdue to IllegalArgumentException"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    :catch_d2
    move-exception v6

    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "Could not load GPS configuration file /data/system/gps/secgps.confdue to IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_ca .. :try_end_da} :catchall_c7

    goto :goto_c3

    :goto_db
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_df
    :goto_df
    const-string v6, "SERVER_TYPE"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_106

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mServerTypeI:I

    const-string v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto Config in AngryGPS : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mServerTypeI:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    :cond_106
    const-string v7, "GnssLocationProvider_ex"

    const-string v8, "No params for SERVER_TYPE in AngryGPS."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10d
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v7, v8, :cond_190

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    new-instance v7, Ljava/io/File;

    const-string v8, "/etc/gps_cmcc.conf"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    :try_start_124
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_129
    .catch Ljava/io/FileNotFoundException; {:try_start_124 .. :try_end_129} :catch_134
    .catch Ljava/lang/SecurityException; {:try_start_124 .. :try_end_129} :catch_12b

    move-object v4, v8

    :goto_12a
    goto :goto_13d

    :catch_12b
    move-exception v8

    const-string v9, "GnssLocationProvider_ex"

    const-string v10, "Could not access GPS configuration file /etc/gps_cmcc.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    :catch_134
    move-exception v8

    const-string v9, "GnssLocationProvider_ex"

    const-string v10, "Could not find GPS configuration file /etc/gps_cmcc.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    :goto_13d
    if-eqz v4, :cond_160

    :try_start_13f
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    invoke-virtual {v8, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_144} :catch_153
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13f .. :try_end_144} :catch_14a
    .catchall {:try_start_13f .. :try_end_144} :catchall_148

    :goto_144
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_160

    :catchall_148
    move-exception v3

    goto :goto_15c

    :catch_14a
    move-exception v8

    :try_start_14b
    const-string v9, "GnssLocationProvider_ex"

    const-string v10, "Could not load GPS configuration file /etc/gps_cmcc.confdue to IllegalArgumentException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    :catch_153
    move-exception v8

    const-string v9, "GnssLocationProvider_ex"

    const-string v10, "Could not load GPS configuration file /etc/gps_cmcc.confdue to IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catchall {:try_start_14b .. :try_end_15b} :catchall_148

    goto :goto_144

    :goto_15c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_160
    :goto_160
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_cmcc:Ljava/util/Properties;

    const-string v10, "SUPL_PORT"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_190

    if-eqz v9, :cond_190

    :try_start_174
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/lang/NumberFormatException; {:try_start_174 .. :try_end_177} :catch_178

    goto :goto_190

    :catch_178
    move-exception v10

    const-string v11, "GnssLocationProvider_ex"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to parse SUPL_PORT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_190
    :goto_190
    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v4, :cond_198

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setGnssChipProperty()V

    goto :goto_1b3

    :cond_198
    new-instance v4, Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;

    const-string v7, "/sys/class/sensors/ssc_core/operation_mode"

    const/4 v8, 0x2

    invoke-direct {v4, p0, v7, v8}, Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecFileObserver:Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecFileObserver:Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;

    if-eqz v4, :cond_1ac

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSecFileObserver:Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;

    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider_samsung$SecFileObserver;->startWatching()V

    goto :goto_1b3

    :cond_1ac
    const-string v4, "GnssLocationProvider_ex"

    const-string v7, "CTS restrict mode : fail. mFileObserver is null"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b3
    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isInitialized:Z

    return-void
.end method

.method public initializeMinorSession()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->hasIqi()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->GLP_DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Register LC18 MetricQueryCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->iqiMgr:Lcom/att/iqi/lib/IQIManager;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->iqiMgr:Lcom/att/iqi/lib/IQIManager;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->iqiMgr:Lcom/att/iqi/lib/IQIManager;

    sget-object v1, Lcom/att/iqi/lib/metrics/lc/LC18;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v2, Lcom/android/server/location/GnssLocationProvider_samsung$2;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$2;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/lib/IQIManager;->registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V

    goto :goto_30

    :cond_29
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "Can\'t get instance for IQIManager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public notifyHidlDeath()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extension()Z

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extension()V

    :cond_c
    return-void
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provideSuplFqdn :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v2, :cond_1a9

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a9

    iget-object v3, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_b8

    move-object v7, v4

    move v4, v5

    :goto_33
    array-length v8, v3

    if-ge v4, v8, :cond_b9

    aget-object v8, v3, v4

    if-nez v8, :cond_3c

    goto/16 :goto_b4

    :cond_3c
    iget-object v8, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v9, v3, v4

    invoke-virtual {v8, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-nez v8, :cond_47

    goto :goto_b4

    :cond_47
    const-string v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", Capability : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v12, v3, v4

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_b4

    aget-object v7, v3, v4

    const/4 v0, 0x1

    goto :goto_b9

    :cond_98
    iget-object v9, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_b4

    aget-object v7, v3, v4

    :cond_b4
    :goto_b4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    :cond_b8
    move-object v7, v4

    :cond_b9
    :goto_b9
    move v4, v0

    if-nez v7, :cond_c5

    const-string v0, "GnssLocationProvider_ex"

    const-string v5, "No default network is currently active."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a8

    :cond_c5
    :try_start_c5
    invoke-virtual {v7, v2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/net/InetAddress;

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v0

    move v12, v10

    move v10, v9

    move v9, v5

    :goto_d2
    if-ge v9, v11, :cond_11f

    aget-object v13, v0, v9

    instance-of v14, v13, Ljava/net/Inet6Address;

    if-eqz v14, :cond_fa

    if-nez v12, :cond_11b

    const/4 v12, 0x1

    const-string v14, "GnssLocationProvider_ex"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got IPv6 InetAddress : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v13, v8, v5

    goto :goto_11b

    :cond_fa
    if-nez v10, :cond_11b

    const/4 v6, 0x1

    const-string v10, "GnssLocationProvider_ex"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got IPv4 InetAddress : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    aput-object v13, v8, v10

    move v10, v6

    :cond_11b
    :goto_11b
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto :goto_d2

    :cond_11f
    const/4 v6, 0x0

    if-eqz v10, :cond_126

    const/4 v9, 0x1

    aget-object v9, v8, v9

    move-object v6, v9

    :cond_126
    if-eqz v12, :cond_12b

    aget-object v5, v8, v5

    move-object v6, v5

    :cond_12b
    const-string v5, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DNS resolve result : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_149

    if-eqz v12, :cond_19c

    :cond_149
    const/4 v5, 0x0

    if-eqz v4, :cond_156

    iget-object v9, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/16 v11, 0xf

    invoke-virtual {v9, v11, v6}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v9

    move v5, v9

    goto :goto_15e

    :cond_156
    iget-object v9, v1, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v11, 0x3

    invoke-virtual {v9, v11, v6}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v9

    move v5, v9

    :goto_15e
    if-nez v5, :cond_17b

    const-string v9, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error requesting route to host: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_195

    :cond_17b
    const-string v9, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Successfully requested route to host: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_195
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    :try_end_19c
    .catch Ljava/net/UnknownHostException; {:try_start_c5 .. :try_end_19c} :catch_19d

    :cond_19c
    goto :goto_1a8

    :catch_19d
    move-exception v0

    const-string v5, "GnssLocationProvider_ex"

    const-string v6, "UnknownHostException occured"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_1a8
    move v0, v4

    :cond_1a9
    return-void
.end method

.method public reportVendorExtraAssertMessage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method_reportVendorExtraAssertMessage, message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_supported_extension()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "HIDL service may have been died by GNSS Assert. reset it."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extension()Z

    :cond_2d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "assert_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x12c

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    return-void
.end method

.method sendExtraConfigurationString()V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_is_gnss_configuration_supported_extension()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$5;->$SwitchMap$com$android$server$location$GnssLocationProvider_samsung$Vendor:[I

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2ee

    :pswitch_1b
    goto/16 :goto_266

    :pswitch_1d
    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_VER_SKT_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_3b
    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_VER_SKT_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_59
    const-string v1, "SUPL_USE_APN"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_FW_DNS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_70
    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "600"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_LOG_ENABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_LOG_PATH"

    const-string v2, "/data/AGPSLog.txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_GPS_ICON"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NO_DATA_STANDALONE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_9c
    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_VER_SKT_NI"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_ba
    const-string v1, "CP_LPP_GUARD_TIME_SEC"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "7200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v2, "TLSv1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VENDOR_LBS_SERVER_ENABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RTI_ENABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EE_SYNC_THRESHOLD_DAYS"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WARM_STANDBY2"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ENABLE_BEIDOU"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ENABLE_GALILEO"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_125
    const-string v1, "USE_NI_SLP_ADDRESS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_APN"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_FW_DNS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v2, "SSLv23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_151
    const-string v1, "SUPL_UT1_SEC"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_UT2_SEC"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_UT3_SEC"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TCP_CONNETION_TIMEOUT"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NTT_DOCOMO"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_266

    :pswitch_176
    const-string v1, "CP_LPP_GUARD_TIME_SEC"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "7200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v2, "TLSv1_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_APN"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_FW_DNS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VENDOR_LBS_SERVER_ENABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RTI_ENABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EE_SYNC_THRESHOLD_DAYS"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WARM_STANDBY2"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ENABLE_BEIDOU"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ENABLE_GALILEO"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_266

    :pswitch_1ee
    const-string v1, "CP_LPP_GUARD_TIME_SEC"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REAIDING_INTERVAL_SEC"

    const-string v2, "7200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AUTO_SUPL_VERSION_FOR_NI"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_SSL_METHOD"

    const-string v2, "TLSv1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_APN"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_USE_FW_DNS"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_HMAC_HASH"

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_NI_ALLOW_GPS_OFF"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_ECID_CAPABLE"

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_LPP_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUPL_OTDOA_CAPABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VENDOR_LBS_SERVER_ENABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RTI_ENABLE"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EE_SYNC_THRESHOLD_DAYS"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WARM_STANDBY2"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ENABLE_BEIDOU"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ENABLE_GALILEO"

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_266
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v1

    if-nez v1, :cond_27f

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isCaMarket()Z

    move-result v1

    if-nez v1, :cond_27f

    const-string v1, "CP_AGPS_ENABLE_PROFILE"

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getCpAgpsProfile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "GLDUMP_LOGGING_ENCRYPTION_KEY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2bf

    const-string v4, "GnssLocationProvider_ex"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2bf
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28c

    :cond_2d6
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v2, :cond_2e2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_2ec

    :cond_2e2
    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :goto_2ec
    return-void

    nop

    :pswitch_data_2ee
    .packed-switch 0x1
        :pswitch_1ee
        :pswitch_1ee
        :pswitch_1ee
        :pswitch_1ee
        :pswitch_1b
        :pswitch_176
        :pswitch_176
        :pswitch_151
        :pswitch_125
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_ba
        :pswitch_9c
        :pswitch_70
        :pswitch_1b
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_1b
        :pswitch_3b
        :pswitch_1d
    .end packed-switch
.end method

.method protected sendInfoToNsflp(ILandroid/os/Bundle;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isInitialized:Z

    if-eqz v0, :cond_17

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    :cond_16
    goto :goto_1e

    :cond_17
    const-string v0, "GnssLocationProvider_ex"

    const-string v1, "GnssLocationPrivider_samsung is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public setAlarmMessage(I)V
    .registers 8

    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for minor session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_3a

    goto :goto_38

    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mAlarmMgr:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xe290

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mCiqTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_38

    :pswitch_30
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mAlarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mCiqTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    nop

    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_1f
    .end packed-switch
.end method

.method public setBaroCalValue()V
    .registers 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/FactoryApp/baro_delta"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_10} :catch_12

    move-object v1, v5

    :goto_11
    goto :goto_24

    :catch_12
    move-exception v5

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not access Baro Cal file /efs/FactoryApp/baro_delta"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :catch_1b
    move-exception v5

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not open Baro Cal File /efs/FactoryApp/baro_delta"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :goto_24
    if-eqz v1, :cond_53

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    :try_start_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_36} :catch_3d
    .catchall {:try_start_32 .. :try_end_36} :catchall_3b

    move-object v4, v5

    :goto_37
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_53

    :catchall_3b
    move-exception v5

    goto :goto_4f

    :catch_3d
    move-exception v5

    :try_start_3e
    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not load Baro Cal file /efs/FactoryApp/baro_deltadue to IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_46
    move-exception v5

    const-string v6, "GnssLocationProvider_ex"

    const-string v7, "Could not load Baro Cal file /efs/FactoryApp/baro_deltadue to IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_3b

    goto :goto_37

    :goto_4f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :cond_53
    :goto_53
    if-eqz v4, :cond_9c

    const-string v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readBaroCalValue(), baro_delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIzatServiceEnabled:Z

    if-nez v5, :cond_85

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BARO_CAL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_configuration_update_extension(Ljava/lang/String;)V

    goto :goto_9c

    :cond_85
    const/16 v5, 0x18

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BARO_CAL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V

    :cond_9c
    :goto_9c
    return-void
.end method
