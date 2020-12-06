.class public Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
.super Ljava/lang/Object;
.source "UniversalCredentialManager.java"


# static fields
.field public static final ACTION_UCM_CONFIG_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

.field public static final ACTION_UCM_KEYGUARD_SET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

.field public static final ACTION_UCM_KEYGUARD_UNSET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

.field public static final ACTION_UCM_NOTIFY_EVENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

.field public static final ACTION_UCM_REFRESH_AGENT_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

.field public static final APPLET_FORM_FACTOR_ESE:Ljava/lang/String; = "eSE"

.field public static final APPLET_FORM_FACTOR_ESE1:Ljava/lang/String; = "eSE1"

.field public static final APPLET_FORM_FACTOR_SD:Ljava/lang/String; = "SD"

.field public static final APPLET_FORM_FACTOR_SD1:Ljava/lang/String; = "SD1"

.field public static final APPLET_FORM_FACTOR_SIM:Ljava/lang/String; = "SIM"

.field public static final APPLET_FORM_FACTOR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final APPLET_FORM_FACTOR_SIM2:Ljava/lang/String; = "SIM2"

.field public static final BUNDLE_CA_CERT_TYPE:Ljava/lang/String; = "cert_type"

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ALLOW_WIFI:Ljava/lang/String; = "allow_wifi"

.field public static final BUNDLE_EXTRA_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final BUNDLE_EXTRA_ENFORCE_LOCK_TYPE_DIRECT_SET:Ljava/lang/String; = "enforce_lock_type_direct_set"

.field public static final BUNDLE_EXTRA_ESE_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final BUNDLE_EXTRA_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final BUNDLE_EXTRA_ODE_CA_CERT:Ljava/lang/String; = "ode_ca_cert"

.field public static final BUNDLE_EXTRA_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final BUNDLE_EXTRA_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final BUNDLE_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final ERROR_UCM_ALIAS_ALREADY_EXIST:I = -0x14

.field public static final ERROR_UCM_ALIAS_EMPTY:I = -0x10

.field public static final ERROR_UCM_ALIAS_NOT_EXIST:I = -0xe

.field public static final ERROR_UCM_APP_SIGNATURE_INVALID:I = -0x12

.field public static final ERROR_UCM_CALLER_NOT_ALLOWED_TO_MANAGE_STORAGE:I = -0x17

.field public static final ERROR_UCM_CALLER_NOT_CONTAINER_OWNER:I = -0x18

.field public static final ERROR_UCM_FAILURE:I = -0x1

.field public static final ERROR_UCM_INSTALL_DELEGATION_NOT_ALLOWED:I = -0x1d

.field public static final ERROR_UCM_INVALID_ACCESS_TYPE:I = -0xf

.field public static final ERROR_UCM_INVALID_AUTH_TYPE:I = -0x11

.field public static final ERROR_UCM_INVALID_CERTIFICATE:I = -0x19

.field public static final ERROR_UCM_INVALID_EXEMPT_TYPE:I = -0x15

.field public static final ERROR_UCM_INVALID_STORAGE_OPTION:I = -0x13

.field public static final ERROR_UCM_KEYGUARD_CONFIGURED:I = -0x1a

.field public static final ERROR_UCM_MISSING_ARGUMENT:I = -0xb

.field public static final ERROR_UCM_PASSWORD_QUALITY_NOT_UNSPECIFIED:I = -0x1c

.field public static final ERROR_UCM_PASSWORD_UNSUPPORTED_STORAGE:I = -0x1b

.field public static final ERROR_UCM_STORAGE_ALREADY_CONFIGURED:I = -0xa

.field public static final ERROR_UCM_STORAGE_DELEGATION_NOT_ALLOWED:I = -0x1e

.field public static final ERROR_UCM_STORAGE_NOT_ENABLED:I = -0xc

.field public static final ERROR_UCM_STORAGE_NOT_MANAGEABLE:I = -0x16

.field public static final ERROR_UCM_STORAGE_NOT_VALID:I = -0xd

.field public static final EVENT_PLUGIN_LICENSE_EXPIRED:I = 0x2

.field public static final EVENT_PLUGIN_UNINSTALLED:I = 0x1

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final RESET_APPLET_FORM_FACTOR:Ljava/lang/String; = "reset"

.field public static final SCP_SD:Ljava/lang/String; = "SCP_SD"

.field private static TAG:Ljava/lang/String; = null

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_INSTALL:I = 0x6b

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_APPLET_ID:Ljava/lang/String; = "applet_id"

.field public static final UCM_APPLET_INSTALL_LOCATION:Ljava/lang/String; = "applet_location"

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_AUTH_TYPE_NONE:I = 0x69

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_STORAGE_OPTION_INSIDE:I = 0x65

.field public static final UCM_STORAGE_OPTION_OUTSIDE:I = 0x66

.field public static final UCM_SUCCESS:I = 0x0

.field public static final UCM_SUCCESS_KEYGUARD_ALREADY_CONFIGURED:I = 0xa

.field public static final WIFI_VIRTUAL_PACKAGE:Ljava/lang/String; = "com.samsung.knox.virtual.wifi"

.field private static mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UniversalCredentialManager"

    sput-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UniversalCredentialStorageManager API ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .registers 8

    const-class v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_53

    monitor-exit v0

    return-object v3

    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_43

    sget-object v4, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUCMManager : Invalid user request userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_53

    monitor-exit v0

    return-object v3

    :cond_43
    :try_start_43
    new-instance v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_53

    monitor-exit v0

    return-object v3

    :catchall_53
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;I)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .registers 8

    const-class v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "getUCMManager : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4b

    monitor-exit v0

    return-object v3

    :cond_1d
    :try_start_1d
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->isValidUser(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3b

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUCMManager : Invalid user request userId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_4b

    monitor-exit v0

    return-object v3

    :cond_3b
    :try_start_3b
    new-instance v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_4b

    monitor-exit v0

    return-object v2

    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v1, :cond_13

    const-string v1, "knox_ucsm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    :cond_13
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isValidUser(Landroid/content/Context;I)Z
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidUser userId-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    const/4 v0, 0x1

    goto :goto_2d

    :cond_1b
    :try_start_1b
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_2d

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_2e

    if-eqz v2, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    :goto_2d
    goto :goto_45

    :catch_2e
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in isValidUser-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidUser status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public addPackagesToExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.addPackagesToExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.addPackagesToExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackagesToExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.addPackagesToExemptList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API addPackagesToExemptList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public addPackagesToWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.addPackagesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.addPackagesToWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackagesToWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.addPackagesToWhiteList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API addPackagesToWhiteList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.addPackagesToWhiteListInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.addPackagesToWhiteListInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "addPackagesToWhiteListInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_39

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_39
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.addPackagesToWhiteListInternal getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API addPackagesToWhiteListInternal -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return v2
.end method

.method public clearWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.clearWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.clearWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "clearWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.clearWhiteList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API clearWhiteList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.configureCredentialStorageForODESettings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "IUniversalCredentialStorageManager.configureCredentialStorageForODESettings is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_e
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v0

    return v0

    :cond_1d
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.configureCredentialStorageForODESettings getUCMService is null...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at UniversalCredentialStorageManager API configureCredentialStorageForODESettings-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    const/4 v0, -0x1

    return v0
.end method

.method public configureCredentialStoragePlugin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.configureCredentialStoragePlugin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.configureCredentialStoragePlugin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "configureCredentialStoragePlugin : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.configureCredentialStoragePlugin getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API configureCredentialStoragePlugin -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public deleteCACertificate(Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.deleteCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.deleteCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.deleteCACertificate getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API deleteCACertificate -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public deleteCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.deleteCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.deleteCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.deleteCertificate getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API deleteCertificate -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.deleteCertificateInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.deleteCertificateInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "deleteCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_34
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.deleteCertificateInternal getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API deleteCertificateInternal -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return v2
.end method

.method public enableCredentialStorageForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.enableCredentialStorageForLockType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.enableCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "enableCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.enableCredentialStorageForLockType getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API enableCredentialStorageForLockType -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.enforceCredentialStorageAsLockType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.enforceCredentialStorageAsLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "enforceCredentialStorageAsLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.enforceCredentialStorageAsLockType getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API enforceCredentialStorageAsLockType -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public getAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getAliases"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getAliases is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getAliases getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getAliases -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public getAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getAuthType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getAuthType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/16 v2, 0x69

    if-gez v1, :cond_29

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_29
    :try_start_29
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_38

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v1

    return v1

    :cond_38
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getStorageOption getAuthType is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getAuthType -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return v2
.end method

.method public getAvailableCredentialStorages()[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getAvailableCredentialStorages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "IUniversalCredentialStorageManager.getAvailableCredentialStorages is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getAvailableCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getAvailableCredentialStorages getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getAvailableCredentialStorages-Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getCACertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getCACertificate getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getCACertificate -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public getCACertificateAliases(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getCACertificateAliases"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getCACertificateAliases is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getCACertificateAliases : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getCACertificateAliases getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getCACertificateAliases -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getCredentialStoragePluginConfiguration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getCredentialStoragePluginConfiguration is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getCredentialStoragePluginConfiguration : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getCredentialStoragePluginConfiguration getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getCredentialStoragePluginConfiguration -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v2
.end method

.method public getCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getCredentialStorageProperty"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getCredentialStorageProperty is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getStorageOption getCredentialStorageProperty is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getCredentialStorageProperty -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v2
.end method

.method public getCredentialStorages(Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getCredentialStorages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getCredentialStorages is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getCredentialStorages : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getCredentialStorages getUCMService"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getCredentialStorages -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public getDefaultInstallStorage()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getDefaultInstallStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getDefaultInstallStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getDefaultInstallStorage getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getDefaultInstallStorage -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public getEnforcedCredentialStorageForLockType()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getEnforcedCredentialStorageForLockType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getEnforcedCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getEnforcedCredentialStorageForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    return-object v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getEnforcedCredentialStorageForLockType getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getEnforcedCredentialStorageForLockType - Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v2
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "IUniversalCredentialManager.getODESettingsConfiguration is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_16
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialManager.getODESettingsConfiguration getUCMService is null...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at UniversalCredentialManager API getODESettingsConfiguration-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getPackagesFromExemptList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getPackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getPackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getPackagesFromExemptList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getPackagesFromExemptList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v2
.end method

.method public getPackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getPackagesFromWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getPackagesFromWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getPackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getPackagesFromWhiteList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getPackagesFromWhiteList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v2
.end method

.method public getSupportedAlgorithms(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.getSupportedAlgorithms"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.getSupportedAlgorithms is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "getSupportedAlgorithms : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getSupportedAlgorithms getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API getSupportedAlgorithms -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return-object v2
.end method

.method public installCACertificate([BLjava/lang/String;Landroid/os/Bundle;)I
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.installCACertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.installCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "installCACertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.installCACertificate getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API installCACertificate -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public installCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 16

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.installCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.installCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "installCertificate : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_3b

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v4, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_3b
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.installCertificate getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API installCertificate -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return v2
.end method

.method public installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I
    .registers 20

    move-object v1, p0

    iget-object v0, v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "UniversalCredentialStorageManager.installCertificateInternal"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v2, "UniversalCredentialStorageManager.installCertificateInternal is called...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v3, -0x1

    if-gez v0, :cond_28

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "installCertificateInternal : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    if-eqz v0, :cond_40

    sget-object v4, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I

    move-result v0

    return v0

    :cond_40
    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "UniversalCredentialStorageManager.installCertificateInternal getUCMService is null...."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception v0

    sget-object v4, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed at UniversalCredentialStorageManager API installCertificateInternal -Exception "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return v3
.end method

.method public isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.isCredentialStorageEnabledForLockType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.isCredentialStorageEnabledForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "isCredentialStorageEnabledForLockType : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.isCredentialStorageEnabledForLockType getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API isCredentialStorageEnabledForLockType - Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method

.method public isCredentialStorageLocked(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.isCredentialStorageLocked"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.isCredentialStorageLocked is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "isCredentialStorageLocked : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.getStorageOption isCredentialStorageLocked is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API isCredentialStorageLocked -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public isCredentialStorageManaged(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.isCredentialStorageManaged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.isCredentialStorageManaged is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "isCredentialStorageManaged : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.isCredentialStorageManaged getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API isCredentialStorageManaged -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method

.method public lockCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.lockCredentialStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.lockCredentialStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_27

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "lockCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    :try_start_27
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_36

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    return v1

    :cond_36
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.lockCredentialStorage getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API lockCredentialStorage -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    return v2
.end method

.method public manageCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.manageCredentialStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.manageCredentialStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "manageCredentialStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.manageCredentialStorage getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API manageCredentialStorage -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method

.method public removePackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.removePackagesFromExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.removePackagesFromExemptList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removePackagesFromExemptList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.removePackagesFromExemptList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API removePackagesFromExemptList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method

.method public removePackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.removePackagesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.removePackagesFromWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "removePackagesFromWhiteList : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.removePackagesFromWhiteList getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API removePackagesFromWhiteList -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method

.method public setAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.setAuthType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.setAuthType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setAuthType : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.setAuthType getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API setAuthType -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method

.method public setCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.setCredentialStorageProperty"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.setCredentialStorageProperty is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setPackageSetting : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.setCredentialStorageProperty getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API setCredentialStorageProperty -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return-object v2
.end method

.method public setDefaultInstallStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialStorageManager.setDefaultInstallStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v1, "UniversalCredentialStorageManager.setDefaultInstallStorage is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_6:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_28

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setDefaultInstallStorage : support above KNOX_ENTERPRISE_SDK_VERSION_2_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_28
    :try_start_28
    invoke-static {}, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v1

    if-eqz v1, :cond_37

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mUCMService:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    iget-object v3, p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v1

    return v1

    :cond_37
    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v3, "UniversalCredentialStorageManager.setDefaultInstallStorage getUCMService is null...."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at UniversalCredentialStorageManager API setDefaultInstallStorage -Exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    return v2
.end method
