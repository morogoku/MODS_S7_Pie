.class public Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
.super Ljava/lang/Object;
.source "ContainerConfigurationPolicy.java"


# static fields
.field public static final ERROR_INTERNAL_ERROR:I = -0x2

.field public static final ERROR_INVALID_KEY:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final FIDO_REQUEST_URI:Ljava/lang/String; = "fido_request_uri"

.field public static final FIDO_RESPONSE_URI:Ljava/lang/String; = "fido_response_uri"

.field public static final KEY_IMAGE:Ljava/lang/String; = "key-image"

.field public static final KEY_NAME:Ljava/lang/String; = "key-name"

.field public static final OPTION_CALLER_INFO:Ljava/lang/String; = "option_callerinfo"

.field public static final RES_TYPE_BADGE:I = 0x1

.field public static final RES_TYPE_NAME_ICON:I = 0x3

.field public static final RES_TYPE_PROFILE_NAME:I = 0x4

.field public static final RES_TYPE_PROFILE_SWITCH_ICON:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field private static mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;


# instance fields
.field private mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ContainerConfigurationPolicy"

    sput-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private checkBluetoothAndNFCAPICallerPermission()Z
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth And NFC caller permission check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Required version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_4:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_39

    const/4 v2, 0x1

    return v2

    :cond_39
    const/4 v2, 0x0

    return v2
.end method

.method private checkContactsSharingAPICallerPermission()Z
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Knox Phone Book Access Profile permission check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Required version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_39

    const/4 v2, 0x1

    return v2

    :cond_39
    const/4 v2, 0x0

    return v2
.end method

.method private checkExternalSDCardAPICallerPermission()Z
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "External SDCard API caller permission check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Required version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_39

    const/4 v2, 0x1

    return v2

    :cond_39
    const/4 v2, 0x0

    return v2
.end method

.method private checkUsbHostModeAPICallerPermission()Z
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Usb Host Mode permission check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Required version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_5:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_39

    const/4 v2, 0x1

    return v2

    :cond_39
    const/4 v2, 0x0

    return v2
.end method

.method private getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_10

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private getDPMService()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_10

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method static declared-synchronized getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v1, :cond_14

    const-string/jumbo v1, "mum_container_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    :cond_14
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    if-nez v0, :cond_11

    const-string/jumbo v0, "remoteinjection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mRemoteControlService:Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    return-object v0
.end method

.method static declared-synchronized getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v1, :cond_14

    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_14
    sget-object v1, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addCrossProfileIntentFilter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "23"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilterMDM(Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at ContainerConfigurationPolicy API addCrossProfileIntentFilter()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public addHomeShortcutToPersonal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addHomeShortcutToPersonal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addHomeShortcutToPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at Application PolicyService API addHomeShortcutToPersonal "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public addNetworkSSID(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2f

    :cond_15
    if-nez v0, :cond_1f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_26

    return v2

    :catch_26
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API addNetworkSSID"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_2f
    :goto_2f
    return v1
.end method

.method public addPackageToExternalStorageSBABlackList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addPackageToExternalStorageSBABlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_2e

    if-nez v2, :cond_2d

    const/4 v1, 0x1

    nop

    :cond_2d
    return v1

    :catch_2e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageSBABlackList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public addPackageToExternalStorageWhiteList(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addPackageToExternalStorageWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    const-string v2, ""

    if-eqz p2, :cond_3d

    array-length v3, p2

    if-lez v3, :cond_3d

    array-length v3, p2

    new-array v3, v3, [Ljava/lang/String;

    move v4, v1

    :goto_28
    array-length v5, p2

    if-ge v4, v5, :cond_36

    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_36
    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_3d
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v4, p1, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v3
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_48} :catch_4d

    if-nez v3, :cond_4c

    const/4 v1, 0x1

    nop

    :cond_4c
    return v1

    :catch_4d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API addPackageToExternalStorageWhiteList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.addPackageToInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_29

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    move v0, v2

    goto :goto_31

    :catch_29
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API addPackageToInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return v0
.end method

.method public allowLayoutSwitching(Z)Z
    .registers 8

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowLayoutSwitching: allowSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.allowLayoutSwitching"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->allowLayoutSwitching(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_36

    move v1, v3

    nop

    return v1

    :catch_36
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "PolicyService API allowLayoutSwitching "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public allowRemoteControl(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.allowRemoteControl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Remote Control Service is not yet ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1f

    move v0, v2

    goto :goto_27

    :catch_1f
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API allowRemoteControl "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return v0
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearCrossProfileIntentFilters"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "23"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFiltersMDM(Landroid/content/ComponentName;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed ContainerConfigurationPolicy API clearCrossProfileIntentFilters()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public clearNetworkSSID()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API clearNetworkSSID"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public clearPackagesFromExternalStorageSBABlackList()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearPackagesFromExternalStorageSBABlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_28

    if-nez v2, :cond_27

    const/4 v1, 0x1

    nop

    :cond_27
    return v1

    :catch_28
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageSBABlackList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public clearPackagesFromExternalStorageWhiteList()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.clearPackagesFromExternalStorageWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_28

    if-nez v2, :cond_27

    const/4 v1, 0x1

    nop

    :cond_27
    return v1

    :catch_28
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API clearPackagesFromExternalStorageWhiteList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public deleteHomeShortcutFromPersonal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.deleteHomeShortcutFromPersonal"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->deleteHomeShortcutFromPersonal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at Application PolicyService API deleteHomeShortcutFromPersonal "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public enableBluetooth(ZLandroid/os/Bundle;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableBluetooth"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableBluetooth(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    return v2

    :catch_24
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API enableBluetooth"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableExternalStorage(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableExternalStorage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableExternalStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    return v2

    :catch_24
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API enableExternalStorage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableNFC(ZLandroid/os/Bundle;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableNFC"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableNFC(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    return v2

    :catch_24
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API enableNFC"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableUsbAccess(ZLandroid/os/Bundle;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enableUsbHostMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkUsbHostModeAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enableUsbAccess(Lcom/samsung/android/knox/ContextInfo;ZLandroid/os/Bundle;)Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    return v2

    :catch_24
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API enableUsbAccess"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enforceMultifactorAuthentication(Z)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.enforceMultifactorAuthentication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->enforceMultifactorAuthentication(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void
.end method

.method public getEnforceAuthForContainer()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public getFIDOInfo()Landroid/os/Bundle;
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getFIDOInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_19

    move-object v1, v3

    nop

    return-object v1

    :catch_19
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "PolicyService API getFIDOInfo "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "PolicyService API getFIDOInfo "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public getHibernationTimeout()J
    .registers 7

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v2

    if-nez v2, :cond_10

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_18

    move-wide v0, v3

    goto :goto_20

    :catch_18
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with ContainerPolicy "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-wide v0
.end method

.method public getNetworkSSID()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2

    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getNetworkSSID(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API getNetworkSSID"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public getPackageSignaturesFromExternalStorageWhiteList(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API getPackageSignaturesFromExternalStorageWhiteList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesFromExternalStorageSBABlackList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageSBABlackList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesFromExternalStorageWhiteList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API getPackagesFromExternalStorageWhiteList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getPackagesFromInstallWhiteList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move-object v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API getPackagesFromInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-object v0
.end method

.method public isBluetoothEnabled()Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isBluetoothEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isBluetoothEnabledBeforeFOTA()Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isBluetoothEnabledBeforeFOTA(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isBluetoothEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isContactsSharingEnabled()Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkContactsSharingAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isContactsSharingEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isExternalStorageEnabled()Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API enableExternalStorage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isLayoutSwitchingAllowed()Z
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isLayoutSwitchingAllowed is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isLayoutSwitchingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_20

    move v1, v3

    nop

    return v1

    :catch_20
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "PolicyService API isLayoutSwitchingAllowed "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isMultifactorAuthenticationEnforced()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isMultifactorAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public isNFCEnabled()Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkBluetoothAndNFCAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isNFCEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isPackageInInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isPackageInInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public isRemoteControlAllowed()Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRemoteControlService()Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Remote Control Service is not yet ready"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection;->isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isRemoteControlAllowed "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public isResetContainerOnRebootEnabled()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isResetContainerOnRebootEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public isSettingsOptionEnabled(Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v2

    :catch_16
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isSettingsOptionEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isUsbAccessEnabled()Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkUsbHostModeAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isUsbAccessEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API isUsbAccessEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isUseSecureKeypadEnabled()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public removeNetworkSSID(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removeNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_2f

    :cond_15
    if-nez v0, :cond_1f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removeNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_26

    return v2

    :catch_26
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API removeNetworkSSID"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_2f
    :goto_2f
    return v1
.end method

.method public removePackageFromExternalStorageSBABlackList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removePackageFromExternalStorageSBABlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_2e

    if-nez v2, :cond_2d

    const/4 v1, 0x1

    nop

    :cond_2d
    return v1

    :catch_2e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageSBABlackList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removePackageFromExternalStorageWhiteList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removePackageFromExternalStorageWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkExternalSDCardAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_29} :catch_2e

    if-nez v2, :cond_2d

    const/4 v1, 0x1

    nop

    :cond_2d
    return v1

    :catch_2e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API removePackageFromExternalStorageWhiteList"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.removePackageFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "KnoxMumContainer PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_29

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    move v0, v2

    goto :goto_31

    :catch_29
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API removePackageFromInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return v0
.end method

.method public resetContainerOnReboot(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetContainerOnReboot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->resetContainerOnReboot(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerConfigurationPolicy "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public resetContainerPassword(Ljava/lang/String;I)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public resetContainerPassword()Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_20

    move v0, v3

    goto :goto_28

    :catch_20
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with ContainerPasswordPolicy "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    if-ltz v0, :cond_2c

    const/4 v2, 0x1

    return v2

    :cond_2c
    return v2
.end method

.method public setContactsSharingEnabled(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setContactsSharingEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->checkContactsSharingAPICallerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setContactsSharingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_24

    return v2

    :catch_24
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API setContactsSharingEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setCustomResource(ILandroid/os/Bundle;)I
    .registers 8

    sget-object v0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCustomResource is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setCustomResource"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_1e

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p1, v2, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setCustomResource(ILcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    return v2

    :catch_25
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PolicyService API setCustomResource "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setEnforceAuthForContainer(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setEnforceAuthForContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setEnforceAuthForContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at KnoxContainerManager API unlock "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public setFIDOInfo(Landroid/os/Bundle;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setFIDOInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v3, p1}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setFIDOInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_20

    move v1, v3

    nop

    return v1

    :catch_20
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "PolicyService API setFIDOSinfo "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public setHibernationTimeout(J)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setHibernationTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_33

    const-wide/32 v1, 0x5265c00

    cmp-long v1, p1, v1

    if-gtz v1, :cond_33

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_23

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_23
    :try_start_23
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setHibernationTimeout(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2b

    move v0, v2

    goto :goto_33

    :catch_2b
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPolicy "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    return v0
.end method

.method public setSettingsOptionEnabled(Ljava/lang/String;Z)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setSettingsOptionEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->setSettingsOptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v2

    :catch_1d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerConfigurationPolicy API setSettingsOptionEnabled"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public setUseSecureKeypad(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerConfigurationPolicy.setUseSecureKeypad"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method
