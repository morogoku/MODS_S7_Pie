.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TuiReceiver;,
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final ATTESTATION_BLOCK_PACKAGE_DIGESTS:B = 0x41t

.field private static final ATTESTATION_BLOCK_PACKAGE_DIGEST_COUNT:B = 0x40t

.field private static final ATTESTATION_BLOCK_PACKAGE_NAMES:B = 0x42t

.field private static final ATTESTATION_BLOCK_PACKAGE_VERSIONS:B = 0x43t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGESTS:B = 0x45t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGEST_COUNT:B = 0x44t

.field private static final ATTESTATION_BLOCK_UCM_PLUGIN_SIGNATURE:B = 0x47t

.field private static final ATTESTATION_BLOCK_UCM_VENDOR_ID:B = 0x46t

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final DEBUG:Z = true

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_CHIP_VENDOR:Ljava/lang/String; = "OBERTHUR"

.field private static final ESE_CHIP_VERSION:Ljava/lang/String; = "PEARL4.0"

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field public static final KNOX_ATTESTATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_ISV_APK_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_CERT_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_PACKAGE_NAME_MAX:I = 0x32

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mODEEnabled:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;

.field private timaThread:Landroid/os/HandlerThread;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TimaService;->mODEEnabled:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/android/server/TimaService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/TimaService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$2;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-direct {p0}, Lcom/android/server/TimaService;->registerTuiReceiver()V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TimaService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_c6

    new-instance v2, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    const-string v2, "CCM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/server/TimaService;->isESECOMMSupported()Z

    move-result v3

    if-ne v2, v3, :cond_6d

    const-string v2, "ESECOMM"

    invoke-virtual {p0, v2}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    :cond_6d
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-direct {p0}, Lcom/android/server/TimaService;->isLicenseActive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const-string/jumbo v2, "ro.crypto.state"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_restart_framework"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    const-string/jumbo v2, "vold.decrypt"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "trigger_reset_main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_b5
    invoke-direct {p0}, Lcom/android/server/TimaService;->handleBuildUpdate()V

    :cond_b8
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiverForKap()V

    const-string v2, "TimaService"

    const-string v3, "TIMA: Start TimaService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_c6
    const-string v2, "TimaService"

    const-string v3, "Failed getting looper for TimaServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ce
    const-string v1, "TimaService"

    const-string v2, "TIMA: Start TimaService, only available gettimaversion"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d5
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TimaService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TimaService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/TimaService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->notifyKapEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TimaService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->setKapBuildProp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/TimaService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/TimaService;->startAttestationBoot()V

    return-void
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private checkAttestationAccessPermission(I)Z
    .registers 10

    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAttestationAccessPermission : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    const-string v0, "TimaService"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e4

    array-length v2, v0

    if-nez v2, :cond_34

    goto/16 :goto_e4

    :cond_34
    :try_start_34
    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_b5

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-nez v4, :cond_49

    goto :goto_b5

    :cond_49
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caller SEInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v5, "platform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_82

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v6, "spay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_82

    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string v7, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_82
    const-string v4, "TimaService"

    const-string/jumbo v6, "request from platform signed app, so need to check license activation"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_8a} :catch_cc

    :try_start_8a
    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v6, "checkAttestationAccessPermission"

    invoke-direct {p0, v4, v6}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/SecurityException; {:try_start_8a .. :try_end_91} :catch_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8a .. :try_end_91} :catch_cc

    return v5

    :catch_92
    move-exception v4

    :try_start_93
    const-string v6, "TimaService"

    const-string v7, "Need to check license activation"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/TimaService;->isActivated(I)Z

    move-result v4
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_9e} :catch_cc

    if-eqz v4, :cond_b4

    :try_start_a0
    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string v7, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_a9} :catch_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_a9} :catch_cc

    nop

    return v5

    :catch_ab
    move-exception v4

    :try_start_ac
    const-string v5, "TimaService"

    const-string v6, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b4
    return v1

    :cond_b5
    :goto_b5
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get application info or seinfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ac .. :try_end_cb} :catch_cc

    return v1

    :catch_cc
    move-exception v2

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e4
    :goto_e4
    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get package name of callerUid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    const-string v0, "TimaService"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p1, v1, v2, v0, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    return v1

    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v1
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    nop

    :goto_9
    return-void
.end method

.method private enforcePermission()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private getBlobVersion()I
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/android/server/TimaService;->isSVBEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v1, 0x9

    return v1

    :cond_b
    :try_start_b
    const-string v2, "23"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_20

    move v0, v2

    const/16 v2, 0x13

    if-lt v0, v2, :cond_19

    const/16 v1, 0x8

    return v1

    :cond_19
    const/16 v2, 0x11

    if-lt v0, v2, :cond_1f

    const/4 v1, 0x7

    return v1

    :cond_1f
    goto :goto_3e

    :catch_20
    move-exception v2

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get KnoxVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3e
    return v1
.end method

.method private getCollectorApkDigest(Ljava/lang/String;)[B
    .registers 9

    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculate APK Digest for package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_16
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/TimaService;->getDigestOfFile(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_5d

    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APK file MessageDigest: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ISV apkDigest size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_5d
    const-string v4, "TimaService"

    const-string v5, "ISV apkDigest is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_64} :catch_65

    :goto_64
    return-object v3

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCollectorBlob(I)[B
    .registers 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    iget-object v3, v1, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_15

    goto :goto_16

    :cond_15
    array-length v5, v3

    :goto_16
    move v4, v5

    const/16 v0, 0x3e8

    const/4 v5, 0x0

    if-ne v2, v0, :cond_2d

    const-string v0, "TimaService"

    const-string v6, "This call was from System UID app."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1b2

    return-object v0

    :cond_2d
    mul-int/lit8 v0, v4, 0x20

    const/16 v6, 0x8

    add-int v7, v6, v0

    new-array v8, v7, [B

    const/4 v0, 0x0

    add-int/lit8 v9, v0, 0x1

    const/16 v10, 0x40

    aput-byte v10, v8, v0

    add-int/lit8 v0, v9, 0x1

    aput-byte v5, v8, v9

    add-int/lit8 v9, v0, 0x1

    const/4 v10, 0x2

    aput-byte v10, v8, v0

    add-int/lit8 v0, v9, 0x1

    ushr-int/lit8 v10, v4, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v0, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v0

    add-int/lit8 v0, v9, 0x1

    const/16 v10, 0x41

    aput-byte v10, v8, v9

    add-int/lit8 v9, v0, 0x1

    mul-int/lit8 v10, v4, 0x20

    ushr-int/lit8 v6, v10, 0x8

    int-to-byte v6, v6

    aput-byte v6, v8, v0

    add-int/lit8 v0, v9, 0x1

    mul-int/lit8 v6, v4, 0x20

    int-to-byte v6, v6

    aput-byte v6, v8, v9

    move v6, v0

    move v0, v5

    :goto_69
    if-ge v0, v4, :cond_9f

    aget-object v9, v3, v0

    invoke-direct {v1, v9}, Lcom/android/server/TimaService;->getCollectorApkDigest(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_95

    array-length v10, v9

    invoke-static {v9, v5, v8, v6, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v10, v9

    add-int/2addr v6, v10

    const-string v10, "TimaService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ISV blob has been filled with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_95
    const-string v10, "TimaService"

    const-string v11, "ISV apkDigest is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    :cond_9f
    const-string v0, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ISV blob total size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v9, v0

    :try_start_bc
    invoke-virtual {v9, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_dc

    :catch_c0
    move-exception v0

    move-object v10, v0

    const-string v10, "TimaService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in getCollectorApkDigest : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_dc
    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/TimaService;->writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/TimaService;->writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    aget-object v0, v3, v5

    invoke-direct {v1, v9, v0, v4}, Lcom/android/server/TimaService;->writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v10, :cond_185

    const-string v0, "TimaService"

    const-string v11, "UCM ODE blob"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODESettingsConfiguration()Landroid/os/Bundle;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v0, :cond_17d

    const-string/jumbo v15, "odeEnabled"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    const/4 v5, 0x1

    if-ne v15, v5, :cond_161

    iput v5, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    const-string/jumbo v5, "id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_131

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v13, v11

    const/16 v15, 0x46

    invoke-virtual {v9, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    invoke-virtual {v9, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v15, v13

    invoke-virtual {v9, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v11, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_139

    :cond_131
    const-string v15, "TimaService"

    const-string/jumbo v2, "odeVendorId is null"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_139
    const-string/jumbo v2, "odeSignature"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v12

    if-eqz v12, :cond_158

    array-length v2, v12

    const/16 v14, 0x47

    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v14, v2, 0x8

    int-to-byte v14, v14

    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v14, v2

    invoke-virtual {v9, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v15, 0x0

    invoke-virtual {v9, v12, v15, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v14, v2

    goto :goto_160

    :cond_158
    const-string v2, "TimaService"

    const-string/jumbo v15, "odeSignature is null"

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_160
    goto :goto_164

    :cond_161
    const/4 v15, 0x0

    iput v15, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    :goto_164
    const-string v2, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ODESettingsConfiguration mODEEnabled : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_185

    :cond_17d
    const-string v2, "TimaService"

    const-string/jumbo v5, "odeData is null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_185
    :goto_185
    :try_start_185
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object v2, v0

    const-string v0, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TimaService.getCollectorBlob() returnBytes.length "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v2

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catchall {:try_start_185 .. :try_end_1a1} :catchall_1a9

    nop

    nop

    :try_start_1a3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a6} :catch_1a7

    goto :goto_1a8

    :catch_1a7
    move-exception v0

    :goto_1a8
    return-object v2

    :catchall_1a9
    move-exception v0

    move-object v2, v0

    :try_start_1ab
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1ae} :catch_1af

    goto :goto_1b0

    :catch_1af
    move-exception v0

    :goto_1b0
    throw v2

    nop

    :array_1b2
    .array-data 1
        0x40t
        0x0t
        0x2t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x44t
        0x0t
        0x2t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
    .end array-data
.end method

.method private getDigestOfBytes([B)[B
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    const-string v4, "SHA256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v5

    new-instance v5, Ljava/security/DigestInputStream;

    invoke-direct {v5, v3, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v0, v5

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    :goto_1c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3f

    nop

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_28} :catch_87
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_28} :catch_73
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_42
    .catchall {:try_start_4 .. :try_end_28} :catchall_40

    nop

    :try_start_29
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_2f

    :catch_2d
    move-exception v2

    goto :goto_38

    :goto_2f
    nop

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    nop

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_37} :catch_2d

    goto :goto_3d

    :goto_38
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    :goto_3d
    nop

    :goto_3e
    return-object v5

    :cond_3f
    goto :goto_1c

    :catchall_40
    move-exception v2

    goto :goto_9c

    :catch_42
    move-exception v4

    :try_start_43
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    if-eqz v0, :cond_4e

    :try_start_48
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_4e

    :catch_4c
    move-exception v4

    goto :goto_59

    :cond_4e
    :goto_4e
    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_53
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_58} :catch_4c

    goto :goto_5e

    :goto_59
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    :cond_5e
    :goto_5e
    goto :goto_9b

    :catch_5f
    move-exception v4

    :try_start_60
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_40

    if-eqz v0, :cond_68

    :try_start_65
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_68
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_6d
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_72} :catch_4c

    goto :goto_5e

    :catch_73
    move-exception v4

    :try_start_74
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_40

    if-eqz v0, :cond_7c

    :try_start_79
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_7c
    if-eqz v1, :cond_81

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_81
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_86} :catch_4c

    goto :goto_5e

    :catch_87
    move-exception v4

    :try_start_88
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_40

    if-eqz v0, :cond_90

    :try_start_8d
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_90
    if-eqz v1, :cond_95

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_95
    if-eqz v3, :cond_5e

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_9a} :catch_4c

    goto :goto_5e

    :goto_9b
    return-object v2

    :goto_9c
    nop

    if-eqz v0, :cond_a5

    :try_start_9f
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_a5

    :catch_a3
    move-exception v4

    goto :goto_b0

    :cond_a5
    :goto_a5
    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_aa
    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_af} :catch_a3

    goto :goto_b5

    :goto_b0
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_b5
    :goto_b5
    throw v2
.end method

.method private getDigestOfFile(Ljava/lang/String;)[B
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v2, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v0, v4

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_19
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_26} :catch_71
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_26} :catch_62
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_26} :catch_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_3b
    .catchall {:try_start_3 .. :try_end_26} :catchall_39

    nop

    :try_start_27
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_2d

    :catch_2b
    move-exception v1

    goto :goto_32

    :goto_2d
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_2b

    goto :goto_37

    :goto_32
    nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :goto_37
    nop

    :goto_38
    return-object v5

    :catchall_39
    move-exception v1

    goto :goto_81

    :catch_3b
    move-exception v3

    :try_start_3c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    if-eqz v0, :cond_47

    :try_start_41
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_47

    :catch_45
    move-exception v3

    goto :goto_4d

    :cond_47
    :goto_47
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4c} :catch_45

    goto :goto_52

    :goto_4d
    nop

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    :cond_52
    :goto_52
    goto :goto_80

    :catch_53
    move-exception v3

    :try_start_54
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_39

    if-eqz v0, :cond_5c

    :try_start_59
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_5c
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_61} :catch_45

    goto :goto_52

    :catch_62
    move-exception v3

    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_39

    if-eqz v0, :cond_6b

    :try_start_68
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_6b
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_45

    goto :goto_52

    :catch_71
    move-exception v3

    :try_start_72
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_39

    if-eqz v0, :cond_7a

    :try_start_77
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    :cond_7a
    if-eqz v2, :cond_52

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_45

    goto :goto_52

    :goto_80
    return-object v1

    :goto_81
    nop

    if-eqz v0, :cond_8a

    :try_start_84
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_8a

    :catch_88
    move-exception v3

    goto :goto_90

    :cond_8a
    :goto_8a
    if-eqz v2, :cond_95

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8f} :catch_88

    goto :goto_95

    :goto_90
    nop

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_95
    :goto_95
    throw v1
.end method

.method private getImei()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "INVALID IMEI"

    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, "INVALID IMEI"

    :cond_25
    return-object v0
.end method

.method private getKapState()Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    const-string/jumbo v2, "kapstate"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "knox_active_protection"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-eqz v5, :cond_3b

    const-string/jumbo v6, "kapstate"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_3c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3a

    move v0, v8

    nop

    :cond_3a
    move v1, v0

    :cond_3b
    goto :goto_58

    :catch_3c
    move-exception v0

    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKapState failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    const-string v0, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKapState ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getMac()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/TimaService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x112

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/TimaService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    const/4 v2, 0x0

    return-object v2

    :cond_22
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTimaStatus()Ljava/lang/String;
    .registers 3

    const-string v0, "TimaService"

    const-string v1, "TIMA: in getTimaStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .registers 6

    :try_start_0
    const-string/jumbo v0, "ro.build.date"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.kap.date"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldBuild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", license: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_65

    const-string v2, "TimaService"

    const-string/jumbo v4, "handleBuildUpdate - updated"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_59

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    :cond_59
    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v2, :cond_65

    invoke-direct {p0, v4, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    :cond_65
    goto :goto_6a

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6a
    return-void
.end method

.method private initCCMDatabase()Z
    .registers 8

    const-string v0, "TimaService"

    const-string v1, "TIMA: in initCCMDatabase"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_8
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/tz_ccm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    const-string v2, "TimaService"

    const-string v4, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v0, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_26
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v2, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v0, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_43
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/tz_ccm/key_db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "TimaService"

    const-string v6, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v4, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_57} :catch_58

    goto :goto_63

    :catch_58
    move-exception v1

    const-string v2, "TimaService"

    const-string v3, "Exception in initCCMDatabase"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_63
    return v0
.end method

.method private isActivated(I)Z
    .registers 11

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    array-length v3, v1

    if-nez v3, :cond_18

    goto :goto_5f

    :cond_18
    move v3, v2

    :goto_19
    array-length v4, v1

    if-ge v3, v4, :cond_5e

    aget-object v4, v1, v3

    if-eqz v4, :cond_52

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_52

    :cond_27
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "LICENSE"

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_5b

    const-string v2, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is activated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_52
    :goto_52
    const-string v5, "TimaService"

    const-string/jumbo v6, "packageName is empty, so continue..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_5e
    return v2

    :cond_5f
    :goto_5f
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get package name of callerUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isESECOMMSupported()Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "NXP"

    const-string v2, "OBERTHUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "OBERTHUR"

    const-string v2, "OBERTHUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "GEMALTO"

    const-string v2, "OBERTHUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_1f
    const-string v1, "TimaService"

    const-string/jumbo v2, "ro.security.ese.cosname --> PEARL4.0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PEARL4.0"

    const-string v2, "PEARL4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "JCOP3.3"

    const-string v2, "PEARL4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "JCOP4.0"

    const-string v2, "PEARL4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "UT2.0"

    const-string v2, "PEARL4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "UT3.0"

    const-string v2, "PEARL4.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_59
    const-string v1, "TimaService"

    const-string v2, "ESECOMM is supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_61
    return v0
.end method

.method private declared-synchronized isKapOnInternal()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKapSupported()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.config.kap"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private isLicenseActive()Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    const-string/jumbo v2, "licensestate"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "knox_active_protection"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    if-eqz v5, :cond_3b

    const-string/jumbo v6, "licensestate"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_3c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3a

    move v0, v8

    nop

    :cond_3a
    move v1, v0

    :cond_3b
    goto :goto_58

    :catch_3c
    move-exception v0

    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLicenseActive failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    const-string v0, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLicenseActive ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_12

    move-object v0, v2

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    return v2

    :cond_11
    return v3

    :catch_12
    move-exception v2

    return v3
.end method

.method private isSVBEnabled()Z
    .registers 5

    const-string/jumbo v0, "ro.boot.svb.ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "svbVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SVB1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    return v1

    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method private isZeroModel()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.config.kap_default_on"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .registers 7

    const-string/jumbo v0, "persist.sys.kap.status"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.klmsagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v2

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_64

    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_64
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    :cond_6d
    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v2

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_a2

    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_a2
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method private notifyTLCServiceStart(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_14

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    return v0

    :cond_14
    :goto_14
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_5
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerBroadcastReceiverForKap()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerTuiReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/TimaService$TuiReceiver;

    invoke-direct {v1}, Lcom/android/server/TimaService$TuiReceiver;-><init>()V

    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restartTLCService(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TimaService;->notifyTLCServiceStart(Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized setKapBuildProp()V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string/jumbo v1, "in setKapBuildProp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    const-string/jumbo v1, "persist.sys.kap.date"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "persist.sys.kap.date"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TimaService"

    const-string v1, "KAP_SAVED_BUILD_FINGERPRINT is set to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startAttestationBoot()V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TimaService"

    const-string/jumbo v2, "in startAttestationBoot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3d

    const/16 v1, 0x20

    new-array v2, v1, [B

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v1, :cond_2c

    int-to-byte v6, v5

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_2c
    invoke-virtual {p0, v2, v3}, Lcom/android/server/TimaService;->attestation([BI)[B

    move-result-object v1

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/TimaService;->mODEEnabled:I

    if-nez v1, :cond_3c

    const-string v4, "TimaService"

    const-string v5, "Blob from TIMA is invalid"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    goto :goto_45

    :cond_3d
    const-string v1, "TimaService"

    const-string/jumbo v2, "startAttestationBoot - disabled attestation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    :goto_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static native timaAttestation([B[B[BI[BI)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method

.method private declared-synchronized timaSetLicenseStatusInternal(Z)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/TimaService;->timaSetLicenseStatus(Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init(Z)I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private updateKapState(ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_e

    move v3, p1

    goto :goto_35

    :cond_e
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/dev/knox_kap"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    nop

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    nop

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_35

    const-string v5, "11"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    :cond_34
    const/4 v3, 0x1

    :cond_35
    :goto_35
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateKapState - isKapOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isUserSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_67

    const-string/jumbo v5, "kapstate"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_72

    :cond_67
    const-string/jumbo v5, "kapstate"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_72
    const-string/jumbo v5, "knox_active_protection"

    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_78} :catch_85
    .catchall {:try_start_2 .. :try_end_78} :catchall_83

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_7d
    if-eqz v0, :cond_a9

    :goto_7f
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_a9

    :catchall_83
    move-exception v2

    goto :goto_aa

    :catch_85
    move-exception v2

    :try_start_86
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateKapState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_83

    if-eqz v1, :cond_a6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_a6
    if-eqz v0, :cond_a9

    goto :goto_7f

    :cond_a9
    :goto_a9
    return-void

    :goto_aa
    if-eqz v1, :cond_af

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_af
    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    :cond_b4
    throw v2
.end method

.method private updateLicenseState(Z)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_1a

    const-string/jumbo v2, "licensestate"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_25

    :cond_1a
    const-string/jumbo v2, "licensestate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_25
    const-string/jumbo v2, "knox_active_protection"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_48

    :catch_2c
    move-exception v0

    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLicenseState failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void
.end method

.method private validateRequest(II)Z
    .registers 5

    const/4 v0, 0x1

    const v1, 0xc350

    if-eq p1, v1, :cond_b

    const v1, 0xc351

    if-ne p1, v1, :cond_13

    :cond_b
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_14

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_14

    :cond_13
    const/4 v0, 0x0

    :cond_14
    return v0
.end method

.method private writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V
    .registers 11

    const-string v0, "TimaService"

    const-string v1, "TimaService.writeCertificateDigests()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x44

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_2d

    const-string v0, "TimaService"

    const-string/jumbo v3, "failed to get signatures"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    array-length v3, v2

    const/16 v4, 0xa

    if-le v3, v4, :cond_33

    goto :goto_34

    :cond_33
    array-length v4, v2

    :goto_34
    move v3, v4

    if-nez p3, :cond_38

    const/4 v3, 0x0

    :cond_38
    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x20

    mul-int/2addr v4, v3

    const/16 v5, 0x45

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    nop

    :goto_55
    if-ge v0, v3, :cond_79

    aget-object v5, v2, v0

    if-nez v5, :cond_64

    const-string v5, "TimaService"

    const-string/jumbo v6, "signature is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_64
    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/TimaService;->getDigestOfBytes([B)[B

    move-result-object v5

    if-eqz v5, :cond_73

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_73} :catch_78
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_73} :catch_76

    :cond_73
    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :catch_76
    move-exception v0

    goto :goto_7a

    :catch_78
    move-exception v0

    :cond_79
    nop

    :goto_7a
    return-void
.end method

.method private writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 11

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TimaService.writePackageNames()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, p3, :cond_3f

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_2a

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_33

    :cond_2a
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_33
    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_3c

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v2

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() wrote \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() totalLengthOfPackages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() tempBaos.toByteArray().length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b0} :catch_b1

    goto :goto_b2

    :catch_b1
    move-exception v0

    :goto_b2
    return-void
.end method

.method private writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 12

    const-string v0, "TimaService"

    const-string v1, "TimaService.writePackageVersions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x43

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    mul-int/lit8 v0, p3, 0x4

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    if-ge v2, p3, :cond_63

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimaService.writePackageVersions() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " versionCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_60} :catch_64

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_63
    goto :goto_65

    :catch_64
    move-exception v0

    :goto_65
    return-void
.end method


# virtual methods
.method public declared-synchronized DCMSelfCheck()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_14

    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    :cond_26
    monitor-exit p0

    return v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_14

    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    :cond_26
    monitor-exit p0

    return v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    if-nez p2, :cond_e

    goto :goto_22

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b

    monitor-exit p0

    return-object v0

    :cond_20
    monitor-exit p0

    return-object v0

    :cond_22
    :goto_22
    :try_start_22
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    if-nez p1, :cond_15

    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_29

    monitor-exit p0

    return-wide v0

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_29

    monitor-exit p0

    return-wide v0

    :cond_27
    monitor-exit p0

    return-wide v0

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_init(Z)I
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_init(Z)I

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p4, :cond_10

    goto :goto_24

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2d

    monitor-exit p0

    return v0

    :cond_22
    monitor-exit p0

    return v0

    :cond_24
    :goto_24
    :try_start_24
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return v0

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_14

    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_3b

    monitor-exit p0

    return-object v0

    :cond_39
    monitor-exit p0

    return-object v0

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_14

    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    :cond_26
    monitor-exit p0

    return v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_14

    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    :cond_26
    monitor-exit p0

    return v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    if-nez p2, :cond_e

    goto :goto_22

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b

    monitor-exit p0

    return-object v0

    :cond_20
    monitor-exit p0

    return-object v0

    :cond_22
    :goto_22
    :try_start_22
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    if-nez p1, :cond_15

    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_29

    monitor-exit p0

    return-wide v0

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_29

    monitor-exit p0

    return-wide v0

    :cond_27
    monitor-exit p0

    return-wide v0

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_init()I
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    monitor-exit p0

    return v0

    :cond_1a
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p4, :cond_10

    goto :goto_24

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2d

    monitor-exit p0

    return v0

    :cond_22
    monitor-exit p0

    return v0

    :cond_24
    :goto_24
    :try_start_24
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return v0

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_saw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_14

    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_3b

    monitor-exit p0

    return-object v0

    :cond_39
    monitor-exit p0

    return-object v0

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized attestation([BI)[B
    .registers 14

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMA: attestation for callerUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    const-string v0, "TimaService"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_c2

    monitor-exit p0

    return-object v1

    :cond_25
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p2, :cond_33

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v2, "attestation"

    invoke-direct {p0, v0, v2}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_3b

    :cond_33
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->checkAttestationAccessPermission(I)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_c2

    if-nez v0, :cond_3b

    monitor-exit p0

    return-object v1

    :cond_3b
    :goto_3b
    :try_start_3b
    const-string v0, "TimaService"

    const-string v2, "TimaService.attestation()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_aa

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_58
    .catchall {:try_start_3b .. :try_end_58} :catchall_c2

    :try_start_58
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->getCollectorBlob(I)[B

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/TimaService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/TimaService;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    iget v8, p0, Lcom/android/server/TimaService;->mODEEnabled:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6e} :catch_85
    .catchall {:try_start_58 .. :try_end_6e} :catchall_83

    :try_start_6e
    invoke-direct {p0}, Lcom/android/server/TimaService;->getBlobVersion()I

    move-result v10

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/TimaService;->timaAttestation([B[B[BI[BI)[B

    move-result-object v2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_7f
    .catchall {:try_start_6e .. :try_end_77} :catchall_7c

    :try_start_77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_c2

    monitor-exit p0

    return-object v2

    :catchall_7c
    move-exception v1

    move v2, v8

    goto :goto_a6

    :catch_7f
    move-exception v2

    move-object v5, v2

    move v2, v8

    goto :goto_86

    :catchall_83
    move-exception v1

    goto :goto_a6

    :catch_85
    move-exception v5

    :goto_86
    :try_start_86
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in attestation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_86 .. :try_end_a0} :catchall_83

    nop

    :try_start_a1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_c2

    monitor-exit p0

    return-object v1

    :goto_a6
    :try_start_a6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_aa
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA: attestation is not support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_a6 .. :try_end_c0} :catchall_c2

    monitor-exit p0

    return-object v1

    :catchall_c2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    :cond_2e
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "tima"

    const-string v5, "ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_54

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move p1, v1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/TimaService;->ccm_register_for_default_cert(II)J

    move-result-wide v1
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_8e

    long-to-int v1, v1

    monitor-exit p0

    return v1

    :cond_54
    :try_start_54
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName [ccmRegisterForDefaultCertificate] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tima"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8b
    .catchall {:try_start_54 .. :try_end_8b} :catchall_8e

    :cond_8b
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: checkEvent, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: checkHistory, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public displayEvent(Ljava/lang/String;)V
    .registers 15

    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMA MEASUREMENT Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    :cond_19
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    if-lt v0, v1, :cond_28

    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    invoke-interface {v0, p1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    const-string v0, "TimaService"

    const-string v1, "Reporting violation to ISL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_38} :catch_39

    :cond_38
    goto :goto_41

    :catch_39
    move-exception v0

    const-string v1, "TimaService"

    const-string v2, "Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    const-string v0, " "

    :try_start_43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4f} :catch_51

    move-object v0, v1

    goto :goto_5a

    :catch_51
    move-exception v1

    const-string v2, "TimaService"

    const-string/jumbo v3, "toLocalString() exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    sget-object v1, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "TIMA_STATUS="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_24c

    if-ne v3, v4, :cond_86

    goto/16 :goto_24c

    :cond_86
    const-string v5, "0"

    const-string v6, "TIMA_STATUS="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    const-string v2, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA MEASUREMENT success status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b0
    const-string v5, "1"

    const-string v6, "TIMA_STATUS="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    const-string v2, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA Internal Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_da
    const-string v5, "MSG="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const-string v3, ""

    if-eq v5, v4, :cond_235

    if-ne v2, v4, :cond_ec

    goto/16 :goto_235

    :cond_ec
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "MSG="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "lkm_modified"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10f

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_13e

    :cond_10f
    const-string/jumbo v6, "seandroid_off"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_13e

    :cond_11f
    const-string/jumbo v6, "kern_modified"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12f

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_13e

    :cond_12f
    const-string/jumbo v6, "kern_metadata_modified"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22d

    const-string v6, "TIMA_STATUS="

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_13e
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    :try_start_14f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string/jumbo v9, "mkdir -p /data/misc/tima"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_159} :catch_15a

    goto :goto_162

    :catch_15a
    move-exception v8

    const-string v9, "TimaService"

    const-string v10, "Failed to create /data/misc/tima"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_162
    :try_start_162
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "chmod 701 /data/misc/tima"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_16b} :catch_16c

    goto :goto_174

    :catch_16c
    move-exception v8

    const-string v9, "TimaService"

    const-string v10, "Failed to change permissions of /data/misc/tima"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_174
    :try_start_174
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/misc/tima"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_18d

    array-length v10, v9

    const/4 v11, 0x0

    :goto_183
    if-ge v11, v10, :cond_18d

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_18a} :catch_18e

    add-int/lit8 v11, v11, 0x1

    goto :goto_183

    :cond_18d
    goto :goto_192

    :catch_18e
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/misc/tima/tima.log."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_1a3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 640 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1bb} :catch_1bc

    goto :goto_1d3

    :catch_1bc
    move-exception v9

    const-string v10, "TimaService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to change permissions of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d3
    sget-boolean v9, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v9, :cond_1e0

    const-string v9, "TimaService"

    const-string/jumbo v10, "displayEvent(): iBootCompleted==false"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e0
    const-string v9, "com.samsung.android.securitylogagent"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "TIMA_LOG_FILE"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v10, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v11, "com.samsung.android.sm"

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v9}, Lcom/android/server/TimaService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_218

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v12, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_22c

    :cond_218
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.android.settings"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v12, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_22c
    return-void

    :cond_22d
    const-string v6, "TimaService"

    const-string v7, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_235
    :goto_235
    const-string v4, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TIMA MEASUREMENT invalid result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24c
    :goto_24c
    const-string v2, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA MEASUREMENT invalid status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized dumpLog()[B
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: timaDumpLog is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized encryptPassword(Ljava/lang/String;)[C
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string/jumbo v1, "encryptPassword- not support in legacy TKS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeviceID()[B
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    monitor-exit p0

    return-object v1

    :cond_1f
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "0"

    const-string v1, "TimaService"

    const-string v2, "TIMA: in getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_15
    const-string v1, "F0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "TimaService"

    const-string v2, "Fake Tima enabled, -T option is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "3.0"

    move-object v0, v1

    goto :goto_3a

    :cond_28
    const-string v1, "F3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "TimaService"

    const-string v2, "Fake Tima enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "3.0"
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3c

    move-object v0, v1

    :cond_3a
    :goto_3a
    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTuiVersion()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .registers 11

    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", licenseStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_e0

    goto/16 :goto_bd

    :pswitch_2b
    const-string/jumbo v5, "ro.build.date"

    const-string v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.kap.date"

    const-string v7, "NONE"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_6e

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-direct {p0, v3}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    iget-boolean v7, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v7, :cond_58

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v7

    if-nez v7, :cond_54

    invoke-direct {p0, v4, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    :cond_54
    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    goto :goto_88

    :cond_58
    const-string/jumbo v4, "security.knox_kap_mode"

    const-string v7, "NONE"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-direct {p0, v3}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    :cond_6d
    goto :goto_88

    :cond_6e
    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    iget-boolean v7, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v7, :cond_85

    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v7

    move v2, v7

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v7

    if-nez v7, :cond_85

    invoke-virtual {p0, v2, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    :cond_85
    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    :goto_88
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v3, :cond_bd

    const-string/jumbo v3, "persist.sys.kap.date"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    :pswitch_95
    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v3

    if-nez v3, :cond_bd

    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v3

    move v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_bd

    :pswitch_ac
    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-direct {p0, v3}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v5

    if-nez v5, :cond_bd

    invoke-direct {p0, v4, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    :cond_bd
    :goto_bd
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_c0} :catch_c1

    goto :goto_dd

    :catch_c1
    move-exception v0

    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleLicenseStatus exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_dd
    return-void

    nop

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_95
        :pswitch_2b
    .end packed-switch
.end method

.method public isKapEnforced()Z
    .registers 4

    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", iBootCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/TimaService;->iBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsBuildUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    return v1

    :cond_33
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v0, :cond_3c

    sget-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized keystoreInit()I
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .registers 4

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .registers 3

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .registers 6

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .registers 7

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized loadTlcServer(Ljava/lang/String;)I
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: in loadTlcServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    const-string v4, "TimaService"

    const-string v5, "TIMA3: tlc_server already loaded"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_af

    monitor-exit p0

    return v3

    :cond_36
    if-eqz v0, :cond_74

    :try_start_38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/bin/tlc_server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_6c} :catch_6d
    .catchall {:try_start_38 .. :try_end_6c} :catchall_af

    goto :goto_aa

    :catch_6d
    move-exception v3

    :try_start_6e
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persist.security.tlc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start tlc_server for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " done : setprop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_6e .. :try_end_aa} :catchall_af

    :goto_aa
    monitor-exit p0

    return v3

    :cond_ac
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    :catchall_af
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadTui()I
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setKapMode(ZZ)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_8f

    :try_start_6
    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKapMode - isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", notifyKapState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_3e

    const-string/jumbo v2, "security.knox_kap_mode"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.kap.status"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_3e
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "persist.sys.kap.status"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_4e
    const-string/jumbo v2, "persist.sys.kap.status"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    const-string/jumbo v2, "security.knox_kap_mode"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    if-nez p2, :cond_69

    const-string/jumbo v2, "persist.sys.kap.status"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    if-eqz p2, :cond_6e

    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    :cond_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_71} :catch_72

    goto :goto_8e

    :catch_72
    move-exception v0

    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKapMode exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8e
    goto :goto_96

    :cond_8f
    const-string v0, "TimaService"

    const-string v1, "No Permission : setKapMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    return-void
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .registers 4

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiGetCerts()[B
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .registers 6

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .registers 7

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .registers 4

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized unloadTui()I
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .registers 3

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
