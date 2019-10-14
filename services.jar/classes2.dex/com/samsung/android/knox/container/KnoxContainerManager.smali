.class public Lcom/samsung/android/knox/container/KnoxContainerManager;
.super Ljava/lang/Object;
.source "KnoxContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    }
.end annotation


# static fields
.field public static final ACTION_CONTAINER_ADMIN_LOCK:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

.field public static final ACTION_CONTAINER_CREATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_CREATION_STATUS"

.field public static final ACTION_CONTAINER_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

.field public static final ACTION_CONTAINER_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

.field public static final CONFIGURATION_TYPE_DO_BASIC:Ljava/lang/String; = "knox-do-basic"

.field public static final CONFIGURATION_TYPE_PO_BASIC:Ljava/lang/String; = "knox-po-basic"

.field public static final CONTAINER_ACTIVE:I = 0x5b

.field public static final CONTAINER_BROADCAST_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CONTAINER_BROADCAST"

.field public static final CONTAINER_CREATION_FAILED_SPECIFIC_ERROR_TYPE:Ljava/lang/String; = "specificErrorCode"

.field public static final CONTAINER_CREATION_IN_PROGRESS:I = 0x5d

.field public static final CONTAINER_CREATION_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final CONTAINER_CREATION_STATUS_CODE:Ljava/lang/String; = "code"

.field public static final CONTAINER_DOESNT_EXISTS:I = -0x1

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final CONTAINER_INACTIVE:I = 0x5a

.field public static final CONTAINER_LAYOUT_TYPE_CLASSIC:I = 0x2

.field public static final CONTAINER_LAYOUT_TYPE_FOLDER:I = 0x1

.field public static final CONTAINER_LOCKED:I = 0x5f

.field public static final CONTAINER_NEW_STATE:Ljava/lang/String; = "container_new_state"

.field public static final CONTAINER_OLD_STATE:Ljava/lang/String; = "container_old_state"

.field public static final CONTAINER_REMOVE_IN_PROGRESS:I = 0x5e

.field public static final ERROR_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_BYOD_NOT_ALLOWED:I = -0x3ff

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_CONTAINER_EXIST:I = -0x3fd

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_KIOSK_ON_OWNER_EXIST:I = -0x3fe

.field public static final ERROR_CONTAINER_TYPE_NOT_ALLOWED:I = -0x270f

.field public static final ERROR_CREATION_ALREADY_IN_PROGRESS:I = -0x3f8

.field public static final ERROR_CREATION_CANCELLED:I = -0x3f9

.field public static final ERROR_CREATION_FAILED_CONTAINER_MODE_EXIST:I = -0x3fc

.field public static final ERROR_CREATION_FAILED_DO_EXISTS:I = -0x4b1

.field public static final ERROR_CREATION_FAILED_EMERGENCY_MODE:I = -0x407

.field public static final ERROR_CREATION_FAILED_GENERATE_CMK:I = -0x40a

.field public static final ERROR_CREATION_FAILED_INVALID_KNOX_CONFIGURATION_TYPE:I = -0x406

.field public static final ERROR_CREATION_FAILED_INVALID_PARAM:I = -0x402

.field public static final ERROR_CREATION_FAILED_INVALID_PARAM_LIST:I = -0x405

.field public static final ERROR_CREATION_FAILED_INVALID_USER_INFO:I = -0x408

.field public static final ERROR_CREATION_FAILED_RESERVED_CONFIGURATION_TYPE_USED:I = -0x404

.field public static final ERROR_CREATION_FAILED_SUB_USER:I = -0x403

.field public static final ERROR_CREATION_FAILED_TIMA_DISABLED:I = -0x3fa

.field public static final ERROR_CREATION_FAILED_TIMA_PWD_KEY:I = -0x409

.field public static final ERROR_DOES_NOT_EXIST:I = -0x4b2

.field public static final ERROR_EC_MAX_LIMIT_REACHED:I = -0x40d

.field public static final ERROR_FILESYSTEM_ERROR:I = -0x3f3

.field private static final ERROR_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_INTEGRITY_CHECK_FAILED:I = -0x400

.field public static final ERROR_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_INVALID_PASSWORD_RESET_TOKEN:I = -0x401

.field public static final ERROR_KLMS_LICENCE_CHECK_ERROR:I = -0x3f7

.field public static final ERROR_MAX_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_NOT_CONTAINER_OWNER:I = -0x4b3

.field public static final ERROR_NO_ADMIN_APK:I = -0x3ec

.field public static final ERROR_NO_CONFIGURATION_TYPE:I = -0x3ed

.field private static final ERROR_NO_HANDLER_APK:I = -0x3ea

.field private static final ERROR_NO_NAME:I = -0x3e9

.field private static final ERROR_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_PLATFORM_VERSION_MISMATCH_IN_CONFIGURATION_TYPE:I = -0x3fb

.field public static final ERROR_POLICY_ENFORCEMENT_FAILED:I = -0x3f5

.field public static final ERROR_REMOVE_FAILED:I = -0x4b1

.field public static final ERROR_SDP_NOTSUPPORTED:I = -0x400

.field public static final ERROR_SECURE_FOLDER_MAX_LIMIT_REACHED:I = -0x40c

.field private static final ERROR_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field private static final ERROR_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final EXTRA_ADMIN_UID:Ljava/lang/String; = "com.samsung.knox.container.adminUid"

.field public static final EXTRA_CONFIG_TYPE:Ljava/lang/String; = "com.samsung.knox.container.configType"

.field public static final EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final EXTRA_IS_CL_TYPE:Ljava/lang/String; = "com.samsung.knox.container.isCLType"

.field public static final EXTRA_IS_MY_KNOX:Ljava/lang/String; = "com.samsung.knox.container.isMyKnox"

.field public static final EXTRA_PWD_RST_TOKEN:Ljava/lang/String; = "com.samsung.knox.container.pwdRstToken"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "com.samsung.knox.container.requestId"

.field public static final FEATURE_TYPE_MY_KNOX:Ljava/lang/String; = "MY_KNOX"

.field private static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field private static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field private static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field private static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field private static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field private static final FLAG_MIGRATION:I = 0x100

.field private static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field private static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final INTENT_BUNDLE:Ljava/lang/String; = "intent"

.field public static final INTENT_CONTAINER_CREATION_STATUS:Ljava/lang/String; = "com.samsung.knox.container.creation.status"

.field public static final MAX_CONTAINERS:I = 0x2

.field public static final PROV_STATE_BASE:I = 0x0

.field public static final PROV_STATE_CANCELLED:I = 0xc

.field public static final PROV_STATE_FAILED:I = 0xb

.field public static final PROV_STATE_FINISHED:I = 0xa

.field public static final PROV_STATE_IDLE:I = 0x0

.field public static final PROV_STATE_KNOXCORE_EXTENSION:I = 0x3

.field public static final PROV_STATE_MANAGED_PROVISIONING:I = 0x2

.field public static final PROV_STATE_REQUESTED:I = 0x1

.field public static final PROV_STATE_SILENT_PROVISIONING:I = 0x2

.field public static final REMOVE_CONTAINER_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KnoxContainerManager"

.field public static final TIMA_VALIDATION_SUCCESS_CODE:I = 0x0

.field public static final TZ_COMMON_CLOSE_COMMUNICATION_ERROR:I = -0x10002

.field public static final TZ_COMMON_COMMUNICATION_ERROR:I = -0x10001

.field public static final TZ_COMMON_INIT_ERROR:I = -0x1000a

.field public static final TZ_COMMON_INIT_ERROR_TAMPER_FUSE_FAIL:I = -0x1000c

.field public static final TZ_COMMON_INIT_MSR_MISMATCH:I = -0x1000d

.field public static final TZ_COMMON_INIT_MSR_MODIFIED:I = -0x1000e

.field public static final TZ_COMMON_INIT_UNINITIALIZED_SECURE_MEM:I = -0x1000b

.field public static final TZ_COMMON_INTERNAL_ERROR:I = -0x10005

.field public static final TZ_COMMON_NULL_POINTER_EXCEPTION:I = -0x10006

.field public static final TZ_COMMON_RESPONSE_REQUEST_MISMATCH:I = -0x10003

.field public static final TZ_COMMON_UNDEFINED_ERROR:I = -0x10007

.field public static final TZ_KEYSTORE_ERROR:I = -0x1

.field public static final TZ_KEYSTORE_INIT_FAILED:I = -0x2

.field private static mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;


# instance fields
.field private volatile mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

.field private volatile mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

.field private volatile mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

.field private volatile mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

.field private volatile mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

.field private volatile mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

.field private volatile mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

.field private volatile mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private volatile mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

.field private volatile mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

.field private mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

.field private mDLPManagerPolicyCreated:Z

.field private volatile mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

.field private volatile mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

.field private volatile mDeviceInventory:Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

.field private volatile mDualDARPolicy:Lcom/samsung/android/knox/ddar/DualDARPolicy;

.field private volatile mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

.field private volatile mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

.field private volatile mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

.field private mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

.field private volatile mEnterpriseBillingPolicyCreated:Z

.field private volatile mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

.field private volatile mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

.field private volatile mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private volatile mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

.field private volatile mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

.field private mNAPCreated:Z

.field private mNap:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field private volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

.field private volatile mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private volatile mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDLPManagerPolicyCreated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    :try_start_a
    iget v0, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->checkContainerType(II)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_38

    if-eqz v0, :cond_1a

    nop

    iput-object p2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    return-void

    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container with Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/NoSuchFieldException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container with Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not exists. / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    if-nez p2, :cond_1a

    const-string v2, "KnoxContainerManager"

    const-string/jumbo v3, "type object is NULL!!, returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    if-nez p0, :cond_24

    const-string v2, "KnoxContainerManager"

    const-string v3, "Context is NULL!!, returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_24
    :try_start_24
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->dumpState()V

    invoke-static {p0, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processNewTypeObject(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/knox/container/KnoxConfigurationType;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_38} :catch_3a

    move v0, v2

    goto :goto_4b

    :catch_3a
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API addContainer:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KnoxContainerManager"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return v0
.end method

.method public static addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.addConfigurationType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z

    move-result v0

    return v0
.end method

.method public static cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->cancelCreateContainer(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move v0, v2

    goto :goto_30

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API cancelCreateContainer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return v0
.end method

.method private checkContainerType(II)Z
    .registers 14

    const-string v0, ":"

    const-string v1, ","

    const-string/jumbo v2, "persist.sys.knox.userinfo"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_1b
    array-length v6, v4

    if-ge v5, v6, :cond_43

    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_40

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_40

    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v7, p1, :cond_40

    and-int v10, p2, v9

    if-lez v10, :cond_40

    return v8

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_43
    return v3
.end method

.method public static checkProvisioningPreCondition(Ljava/lang/String;I)I
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v1, "KnoxContainerManager"

    const-string v2, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3f6

    return v1

    :cond_10
    :try_start_10
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->checkProvisioningPreCondition(Ljava/lang/String;I)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v1

    const-string v2, "KnoxContainerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed at KnoxContainerManager API getProvisioningCondition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;)I
    .registers 10

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    if-nez p1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/CreationParams;->getPasswordResetToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_53

    :cond_20
    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/CreationParams;->getAdminPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    or-int/lit8 v3, v3, 0x40

    goto :goto_2c

    :cond_2a
    or-int/lit8 v3, v3, 0x28

    :goto_2c
    :try_start_2c
    invoke-interface {v1, p0, p1, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v4

    move v0, v4

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v4
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_37

    move v0, v4

    goto :goto_52

    :catch_37
    move-exception v4

    const-string v5, "KnoxContainerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed at KnoxContainerManager API createContainer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return v0

    :cond_53
    :goto_53
    const/16 v3, -0x401

    return v3
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 10

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string v3, "KnoxContainerManager"

    const-string v4, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    const/16 v4, 0x46

    :try_start_1b
    invoke-interface {v1, p0, v3, v4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v4

    move v0, v4

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v4
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_26

    move v0, v4

    goto :goto_41

    :catch_26
    move-exception v4

    const-string v5, "KnoxContainerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed at KnoxContainerManager API createContainer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return v0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 11

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string v3, "KnoxContainerManager"

    const-string v4, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/container/CreationParams;->setAdminPackageName(Ljava/lang/String;)V

    const/16 v4, 0x1e

    :try_start_22
    invoke-interface {v1, p0, v3, v4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v4

    move v0, v4

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v4
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2d

    move v0, v4

    goto :goto_48

    :catch_2d
    move-exception v4

    const-string v5, "KnoxContainerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed at KnoxContainerManager API createContainer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return v0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/IEnterpriseContainerCallback;)I
    .registers 11

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string v3, "KnoxContainerManager"

    const-string v4, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    new-instance v3, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v3}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    const/16 v4, 0x46

    :try_start_1b
    invoke-interface {v1, p0, v3, v4, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerWithCallback(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;ILcom/samsung/android/knox/IEnterpriseContainerCallback;)I

    move-result v4

    move v0, v4

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v4
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_26

    move v0, v4

    goto :goto_41

    :catch_26
    move-exception v4

    const-string v5, "KnoxContainerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed at KnoxContainerManager API createContainer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return v0
.end method

.method public static createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    new-instance v2, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/samsung/android/knox/container/CreationParams;->setAdminPackageName(Ljava/lang/String;)V

    const/16 v3, 0x2e

    const-string/jumbo v4, "secure-folder"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    or-int/lit16 v3, v3, 0x2000

    :cond_28
    :try_start_28
    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v4

    move v0, v4

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v4
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_33

    move v0, v4

    goto :goto_4e

    :catch_33
    move-exception v4

    const-string v5, "KnoxContainerManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed at KnoxContainerManager API createContainer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return v0
.end method

.method public static createContainer(Lcom/samsung/android/knox/container/CreationParams;)I
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;)I

    move-result v0

    return v0
.end method

.method public static createContainer(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static createContainer(Ljava/lang/String;Landroid/net/Uri;)I
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static createContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.createContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static createContainerForMigration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 9

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    new-instance v2, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    const/16 v3, 0x146

    :try_start_1a
    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v3

    move v0, v3

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v3
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_25

    move v0, v3

    goto :goto_40

    :catch_25
    move-exception v3

    const-string v4, "KnoxContainerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed at KnoxContainerManager API createContainerForMigration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return v0
.end method

.method public static createContainerForMigration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 10

    const/16 v0, -0x3f6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    new-instance v2, Lcom/samsung/android/knox/container/CreationParams;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/CreationParams;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/container/CreationParams;->setConfigurationName(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/container/CreationParams;->setAdminPackageName(Ljava/lang/String;)V

    const/16 v3, 0x11e

    :try_start_21
    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainer(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/CreationParams;I)I

    move-result v3

    move v0, v3

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->processCreateReturn(I)I

    move-result v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2c

    move v0, v3

    goto :goto_47

    :catch_2c
    move-exception v3

    const-string v4, "KnoxContainerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed at KnoxContainerManager API createContainerForMigration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return v0
.end method

.method public static createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/16 v1, -0x3f6

    if-nez v0, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    :try_start_10
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v2

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API createContainerInternal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->createContainerMarkSuccess(Lcom/samsung/android/knox/container/ContainerCreationParams;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move v0, v2

    goto :goto_30

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API createContainerMarkSuccess "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return v0
.end method

.method public static doSelfUninstall()V
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v1, "KnoxContainerManager"

    const-string v2, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->doSelfUninstall()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2d

    :catch_12
    move-exception v1

    const-string v2, "KnoxContainerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed at KnoxContainerManager API getContainers :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public static getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    const-string v3, "KnoxContainerManager"

    const-string v4, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_10
    :try_start_10
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationType(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16

    move-object v0, v3

    goto :goto_31

    :catch_16
    move-exception v3

    const-string v4, "KnoxContainerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed at KnoxContainerManager API getConfigurationType by id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object v2

    :cond_41
    return-object v2
.end method

.method public static getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    const-string v3, "KnoxContainerManager"

    const-string v4, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_10
    :try_start_10
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16

    move-object v0, v3

    goto :goto_39

    :catch_16
    move-exception v3

    const-string v4, "KnoxContainerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed at KnoxContainerManager API getContainer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    if-eqz v0, :cond_49

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_49

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    return-object v2

    :cond_49
    return-object v2
.end method

.method public static getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypeByName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigurationTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_f
    :try_start_f
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getConfigurationTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move-object v0, v2

    goto :goto_30

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API getConfigurationType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-object v0
.end method

.method public static getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_f
    :try_start_f
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getContainerCreationParams(I)Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API getConfigurationType by id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static declared-synchronized getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/container/KnoxContainerManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v1, :cond_14

    const-string/jumbo v1, "mum_container_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    :cond_14
    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContainers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_f
    :try_start_f
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getContainers(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move-object v0, v2

    goto :goto_30

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API getContainers :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-object v0
.end method

.method public static getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_f
    :try_start_f
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API getCustomResource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getDefaultConfigurationTypes()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move-object v0, v2

    goto :goto_30

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API getConfigurationType by id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-object v0
.end method

.method public static getProvisioningState()Landroid/os/Bundle;
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v1, "KnoxContainerManager"

    const-string v2, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1

    :cond_13
    :try_start_13
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getProvisioningState()Landroid/os/Bundle;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v1

    :catch_18
    move-exception v1

    const-string v2, "KnoxContainerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed at KnoxContainerManager API getProvisioningState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v1
.end method

.method public static isEmergencyModeSupported()Z
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :try_start_f
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v2

    :catch_14
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API isEmergencyModeSupported "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static processCreateReturn(I)I
    .registers 2

    const/16 v0, -0x3f5

    if-eq p0, v0, :cond_f

    const/16 v0, -0x3f2

    if-eq p0, v0, :cond_f

    packed-switch p0, :pswitch_data_12

    packed-switch p0, :pswitch_data_1a

    return p0

    :cond_f
    :pswitch_f
    const/16 v0, -0x3f6

    return v0

    :pswitch_data_12
    .packed-switch -0x3ef
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_1a
    .packed-switch -0x3eb
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private static processNewTypeObject(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)V
    .registers 9

    const-string v0, "KnoxContainerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Images before copy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxContainerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Images value conditions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_60

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    move v2, v4

    goto :goto_61

    :cond_60
    move v2, v3

    :goto_61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    move v2, v4

    goto :goto_7e

    :cond_7d
    move v2, v3

    :goto_7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    move v2, v4

    goto :goto_9b

    :cond_9a
    move v2, v3

    :goto_9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b7

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    move v3, v4

    nop

    :cond_b7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_df

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v0

    const-string v2, "icon"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e0

    :cond_df
    move-object v0, v1

    :goto_e0
    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_fd

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fd

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon"

    invoke-static {p0, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_fe

    :cond_fd
    move-object v2, v1

    :goto_fe
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    instance-of v3, p1, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    if-eqz v3, :cond_150

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxContainerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder header icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_134

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_134

    const-string v1, "icon"

    invoke-static {p0, v3, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    :cond_134
    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder header icon after copy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/container/LightweightConfigurationType;

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    :cond_150
    const-string v1, "KnoxContainerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Images after copy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static processRemoveReturn(I)I
    .registers 2

    const/16 v0, -0x4b1

    if-eq p0, v0, :cond_5

    return p0

    :cond_5
    const/16 v0, -0x3f6

    return v0
.end method

.method public static removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    if-nez p1, :cond_1a

    const-string v2, "KnoxContainerManager"

    const-string/jumbo v3, "type string is NULL!!, returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1e} :catch_20

    move v0, v2

    goto :goto_31

    :catch_20
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API removeConfigurationType:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KnoxContainerManager"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return v0
.end method

.method public static removeConfigurationType(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.removeConfigurationType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->removeConfigurationType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeContainer(I)I
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "KnoxContainerManager.removeContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->removeContainer(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public static removeContainer(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 7

    const/16 v0, -0x4b1

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_10
    :try_start_10
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeContainer(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16

    move v0, v2

    goto :goto_31

    :catch_16
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API removeContainer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return v0
.end method

.method public static removeContainerInternal(I)I
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/16 v1, -0x3f6

    if-nez v0, :cond_10

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    :try_start_10
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeContainerInternal(I)I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v2

    :catch_15
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API removeContainerInternal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static updateProvisioningState(Landroid/os/Bundle;)Z
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :try_start_f
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->updateProvisioningState(Landroid/os/Bundle;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v2

    :catch_14
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API updateProvisioningState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public activateDevicePermissions(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->activateDevicePermissions(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public enforceMultifactorAuthentication(Z)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.enforceMultifactorAuthentication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void
.end method

.method public getAPMPolicy()Lcom/samsung/android/knox/devicesecurity/APMPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    if-ne v0, v1, :cond_16

    new-instance v1, Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/devicesecurity/APMPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAPMPolicy:Lcom/samsung/android/knox/devicesecurity/APMPolicy;

    return-object v1
.end method

.method public getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAdvancedRestrictionPolicy:Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/application/ApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mApplicationPolicy:Lcom/samsung/android/knox/application/ApplicationPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getAuditLogPolicy()Lcom/samsung/android/knox/log/AuditLog;
    .registers 5

    const-string v0, "23"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    if-nez v1, :cond_24

    monitor-enter p0

    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    move-object v1, v2

    if-nez v1, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/knox/log/AuditLog;->createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;

    move-result-object v2

    move-object v1, v2

    iput-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v2

    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mAuditLogPolicy:Lcom/samsung/android/knox/log/AuditLog;

    return-object v2

    :cond_27
    const-string v1, "KnoxContainerManager"

    const-string v2, "KnoxContainerManager.getAuditLogPolicy() : This device doesn\'t support this API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/container/BasePasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBasePasswordPolicy:Lcom/samsung/android/knox/container/BasePasswordPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/lockscreen/BootBanner;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/lockscreen/BootBanner;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBootBanner:Lcom/samsung/android/knox/lockscreen/BootBanner;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getBrowserPolicy()Lcom/samsung/android/knox/browser/BrowserPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/browser/BrowserPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/browser/BrowserPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mBrowserPolicy:Lcom/samsung/android/knox/browser/BrowserPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificatePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getCertificateProvisioning()Lcom/samsung/android/knox/keystore/CertificateProvisioning;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/CertificateProvisioning;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mCertificateProvisioning:Lcom/samsung/android/knox/keystore/CertificateProvisioning;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getClientCertificateManagerPolicy()Lcom/samsung/android/knox/keystore/ClientCertificateManager;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mClientCertificateManagerPolicy:Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContainerConfigurationPolicy:Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getDLPManagerPolicy()Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .registers 4

    const-class v0, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDLPManagerPolicyCreated:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDLPManagerPolicyCreated:Z

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    return-object v0

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getDateTimePolicy()Lcom/samsung/android/knox/datetime/DateTimePolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/datetime/DateTimePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/datetime/DateTimePolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDateTimePolicy:Lcom/samsung/android/knox/datetime/DateTimePolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getDeviceAccountPolicy()Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDeviceAccountPolicy:Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getDualDARPolicy()Lcom/samsung/android/knox/ddar/DualDARPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mDualDARPolicy:Lcom/samsung/android/knox/ddar/DualDARPolicy;

    return-object v0
.end method

.method public getEmailAccountPolicy()Lcom/samsung/android/knox/accounts/EmailAccountPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailAccountPolicy:Lcom/samsung/android/knox/accounts/EmailAccountPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getEmailPolicy()Lcom/samsung/android/knox/accounts/EmailPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/EmailPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/EmailPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEmailPolicy:Lcom/samsung/android/knox/accounts/EmailPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getEnterpriseBillingPolicy()Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
    .registers 5

    iget-boolean v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v0, :cond_34

    const-class v0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    if-nez v1, :cond_2f

    new-instance v1, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicyCreated:Z

    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEnterpriseBillingPolicy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    return-object v0
.end method

.method public getEnterpriseCertEnrollPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;->getInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getExchangeAccountPolicy()Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mEasAccountPolicy:Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/firewall/Firewall;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mFirewall:Lcom/samsung/android/knox/net/firewall/Firewall;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getGeofencing()Lcom/samsung/android/knox/location/Geofencing;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    if-nez v0, :cond_1a

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    move-object v0, v1

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/location/Geofencing;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/location/Geofencing;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mGeofencing:Lcom/samsung/android/knox/location/Geofencing;

    :cond_15
    monitor-exit p0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    if-nez v0, :cond_1a

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    move-object v0, v1

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    :cond_15
    monitor-exit p0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public getKnoxCustomBadgePolicy()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_27

    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getKnoxCustomBadgePolicy()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception v1

    const-string v2, "KnoxContainerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed at KnoxContainerManager API getKnoxCustomBadgePolicy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_27
    nop

    :goto_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLDAPAccountPolicy()Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLDAPAccountPolicy:Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/location/LocationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/location/LocationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getNetworkAnalytics()Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .registers 4

    const-class v0, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNap:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNAPCreated:Z

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mNap:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    return-object v0

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/container/RCPPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/container/RCPPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRCPPolicy:Lcom/samsung/android/knox/container/RCPPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public getStatus()I
    .registers 7

    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "KnoxMUMContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_3e

    :catch_17
    move-exception v2

    const-string v3, "KnoxContainerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at KnoxContainerManager API getStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v5, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return v0
.end method

.method public getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    if-nez v0, :cond_19

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-object v0, v1

    if-nez v0, :cond_14

    new-instance v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mWifiPolicy:Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1

    :cond_19
    :goto_19
    return-object v0
.end method

.method public isMultifactorAuthenticationEnforced()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public lock()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.lock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1f

    move v0, v2

    goto :goto_27

    :catch_1f
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API lock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return v0
.end method

.method public lock(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.lock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->lockContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API lock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public registerBroadcastReceiverIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.registerBroadcastReceiverIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->registerBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API registerBroadcastReceiverIntent "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public unlock()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.unlock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->unlockContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public unregisterBroadcastReceiverIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KnoxContainerManager.unregisterBroadcastReceiverIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "KnoxContainerManager"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/KnoxContainerManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->unregisterBroadcastReceiverIntent(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    const-string v3, "KnoxContainerManager"

    const-string v4, "Failed at KnoxContainerManager API unregisterBroadcastReceiverIntent "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method
