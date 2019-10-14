.class public Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
.super Ljava/lang/Object;
.source "GenericVpnPolicy.java"


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_VPN_PKG:Ljava/lang/String; = "com.mocana.vpn.android"

.field private static final ERROR_SUPPORTED_VERSION:F = 2.4f

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final KNOX_SDK_VERSION_CHARACTER:Ljava/lang/String; = "KNOX_ENTERPRISE_SDK_VERSION_"

.field private static final KNOX_VPN_V2_ENABLED:Z

.field private static TAG:Ljava/lang/String;

.field public static VPN_RETURN_BOOL_ERROR:Z

.field private static VPN_RETURN_INT_ERROR:I

.field private static VPN_RETURN_INT_SUCCESS:I

.field private static genericVpnObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private static mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

.field private static mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# instance fields
.field private vendorName:Ljava/lang/String;

.field private vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "v30"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->KNOX_VPN_V2_ENABLED:Z

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_SUCCESS:I

    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_BOOL_ERROR:Z

    const-string v0, "GenericVpnPolicy"

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    sput-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericVpnPolicy ctor : vendorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iput-object p2, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    sput-object p1, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericVpnPolicy ctor : vendorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iput-object p2, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vendorName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;
    .registers 11

    const-class v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    monitor-enter v0

    :try_start_3
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-static {v2, v3}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v3, :cond_27

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GenericVpnPolicy getInstance : vendorName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_a3

    :cond_27
    const/4 v3, 0x0

    if-eqz v2, :cond_a0

    :try_start_2a
    const-class v4, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    monitor-enter v4
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_7b
    .catchall {:try_start_2a .. :try_end_2d} :catchall_a3

    :try_start_2d
    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    move-object v3, v5

    goto :goto_4a

    :cond_3f
    new-instance v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)V

    move-object v3, v5

    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4a
    if-eqz v3, :cond_76

    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    move-result v5

    sget-boolean v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v6, :cond_6e

    sget-object v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GenericVpnPolicy getInstance : bindSuccess = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-nez v5, :cond_76

    sget-object v6, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->genericVpnObjectMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :cond_76
    monitor-exit v4

    goto :goto_a0

    :catchall_78
    move-exception v5

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_2d .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v5
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7b} :catch_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_a3

    :catch_7b
    move-exception v4

    :try_start_7c
    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GenericVpnPolicy getInstance : returning null for vendorName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_7c .. :try_end_9e} :catchall_a3

    const/4 v3, 0x0

    goto :goto_a1

    :cond_a0
    :goto_a0
    nop

    :goto_a1
    monitor-exit v0

    return-object v3

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    if-nez v0, :cond_10

    const-string v0, "knox_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    :cond_10
    sget-boolean v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->DBG:Z

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxVpnPolicy getService : mKnoxVpnPolicyService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    sget-object v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    return-object v0
.end method

.method private static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public activateVpnProfile(Ljava/lang/String;Z)I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_59

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.activateVpnProfile"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v5, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v4, v5, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    if-nez v0, :cond_60

    if-ne p2, v3, :cond_60

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.vpndialogs"

    const-string v5, "com.android.vpndialogs.KnoxVpnPPDialog"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x50800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_50

    sget-object v4, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_50
    goto :goto_60

    :cond_51
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "activateVpnProfile >> mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_59
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "activateVpnProfile >> mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    goto :goto_7c

    :catch_61
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API activateVpnProfile-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7c
    return v0
.end method

.method public addAllContainerPackagesToVpn(ILjava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_4f

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.addAllContainerPackagesToVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3a

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_56

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "The container id entered is invalid and throwing an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_47
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addAllContainerPackagesToVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_4f
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addAllContainerPackagesToVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_56} :catch_57

    :goto_56
    goto :goto_72

    :catch_57
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API addAllContainerPackagesToVpn-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return v0
.end method

.method public addAllPackagesToVpn(Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3a

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.addAllPackagesToVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_41

    :cond_32
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addAllPackagesToVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addAllPackagesToVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_41} :catch_42

    :goto_41
    goto :goto_5d

    :catch_42
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at GenericVpnPolicy API addAllPackagesToVpn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return v0
.end method

.method public addContainerPackagesToVpn(I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_4f

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.addContainerPackagesToVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3a

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_56

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "The container id entered is invalid and throwing an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_47
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addContainerPackageToVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_4f
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addContainerPackageToVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_56} :catch_57

    :goto_56
    goto :goto_72

    :catch_57
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API addContainerPackageToVpn-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return v0
.end method

.method public addPackagesToVpn([Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3a

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.addPackagesToVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_41

    :cond_32
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_41} :catch_42

    :goto_41
    goto :goto_5d

    :catch_42
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API addPackagetoDatabase-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return v0
.end method

.method public createVpnProfile(Ljava/lang/String;)I
    .registers 8

    sget v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    move v2, v3

    if-eqz v2, :cond_3d

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.createVpnProfile"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_44

    :cond_35
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "createVpnProfile Error> mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_3d
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "createVpnProfile Error > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_44} :catch_45

    :goto_44
    goto :goto_60

    :catch_45
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API createVpnProfile-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return v0
.end method

.method public getAllContainerPackagesInVpnProfile(ILjava/lang/String;)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_51

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getAllContainerPackagesInVpnProfile"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3c

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    :cond_3c
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "The container id entered is invalid and throwing an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_49
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getAllContainerPackagesInVpnProfile > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_51
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getAllContainerPackagesInVpnProfile > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    goto :goto_61

    :catch_59
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerManager API getAllContainerPackagesInVpnProfile "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_61
    return-object v0
.end method

.method public getAllPackagesInVpnProfile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_3c

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getAllPackagesInVpnProfile"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    :cond_34
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getAllPackagesInVpnProfile > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3c
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getAllPackagesInVpnProfile > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    goto :goto_4c

    :catch_44
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerManager API getAllPackagesInVpnProfile "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-object v0
.end method

.method public getAllVpnProfiles()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_3d

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getAllVpnProfiles"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    goto :goto_44

    :cond_35
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getAllVpnProfiles > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_3d
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getAllVpnProfiles > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    goto :goto_60

    :catch_45
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getAllVpnProfiles-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-object v0
.end method

.method public getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_3d

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getCACertificate"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v0, v3

    goto :goto_44

    :cond_35
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getCACertificate > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_3d
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getCACertificate > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    goto :goto_60

    :catch_45
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getCACertificate-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-object v0
.end method

.method public getErrorString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3c

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.getErrorString"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_43

    :cond_34
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getErrorString > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3c
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getErrorString > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    goto :goto_5f

    :catch_44
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getErrorString-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-object v0
.end method

.method public getState(Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3a

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.getState"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_41

    :cond_32
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getState >> mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getState >> mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_41} :catch_42

    :goto_41
    goto :goto_5d

    :catch_42
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getState-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return v0
.end method

.method public getUserCertificate(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CertificateInfo;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_3d

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getUserCertificate"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v0, v3

    goto :goto_44

    :cond_35
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getUserCertificate > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_3d
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getUserCertificate > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    goto :goto_60

    :catch_45
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getUserCertificate-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-object v0
.end method

.method public getVpnModeOfOperation(Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_41

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getVpnModeOfOperation"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_48

    :cond_39
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getVpnModeOfOperation > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_41
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getVpnModeOfOperation > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    goto :goto_64

    :catch_49
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getVpnModeOfOperation-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return v0
.end method

.method public getVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_3d

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v5, "GenericVpnPolicy.getVpnProfile"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_44

    :cond_35
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getVpnProfile Error> mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_3d
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getVpnProfile Error > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    goto :goto_60

    :catch_45
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API getVpnProfile-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-object v0
.end method

.method public removeAllContainerPackagesFromVpn(ILjava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_50

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.removeAllContainerPackagesFromVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3a

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_58

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "The container id entered is invalid and throwing an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_47
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllContainerPackagesFromVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_50
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllContainerPackagesFromVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_58} :catch_59

    :goto_58
    goto :goto_74

    :catch_59
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at GenericVpnPolicy API removeAllContainerPackagesFromVpn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return v0
.end method

.method public removeAllPackagesFromVpn(Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3b

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.removeAllPackagesFromVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_43

    :cond_32
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllPackagesFromVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3b
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllPackagesFromVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    :goto_43
    goto :goto_5f

    :catch_44
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at GenericVpnPolicy API removeAllPackagesFromVpn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return v0
.end method

.method public removeContainerPackagesFromVpn(I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_50

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.removeContainerPackagesFromVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3a

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_58

    :cond_3a
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "The container id entered is invalid and throwing an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_47
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeContainerPackageFromVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_50
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeContainerPackageFromVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_58} :catch_59

    :goto_58
    goto :goto_74

    :catch_59
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at GenericVpnPolicy API removeContainerPackageFromVpn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return v0
.end method

.method public removePackagesFromVpn([Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3b

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.removePackagesFromVpn"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_43

    :cond_32
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromVpn > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_3b
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromVpn > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_43} :catch_44

    :goto_43
    goto :goto_5f

    :catch_44
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at GenericVpnPolicy API removePackageFromVpn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return v0
.end method

.method public removeVpnProfile(Ljava/lang/String;)I
    .registers 8

    sget v0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->VPN_RETURN_INT_ERROR:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    move v2, v3

    if-eqz v2, :cond_3e

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.removeVpnProfile"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_46

    :cond_35
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeVpnProfile\u00a0 Error> mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_3e
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeVpnProfile\u00a0 Error > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_46} :catch_47

    :goto_46
    goto :goto_62

    :catch_47
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API removeVpnProfile\u00a0-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    return v0
.end method

.method public setAutoRetryOnConnectionError(Ljava/lang/String;Z)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_41

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.setAutoRetryOnConnectionError"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_49

    :cond_38
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAutoRetryOnConnection Error > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_41
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setAutoRetryOnConnection Error > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    goto :goto_65

    :catch_4a
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API setAutoRetryOnConnectionError-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return v0
.end method

.method public setCACertificate(Ljava/lang/String;[B)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_41

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.setCACertificate"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_49

    :cond_38
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCACertificate > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_41
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCACertificate > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    goto :goto_65

    :catch_4a
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API setCACertificate-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return v0
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ZLjava/util/List;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_45

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.setServerCertValidationUserAcceptanceCriteria"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v6, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    move v10, p4

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_4d

    :cond_3c
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setServerCertValidationUserAcceptanceCriteria Error > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_45
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setServerCertValidationUserAcceptanceCriteria Error > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    goto :goto_69

    :catch_4e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API setServerCertValidationUserAcceptanceCriteria-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    return v0
.end method

.method public setUserCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_41

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.setUserCertificate"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_49

    :cond_38
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setUserCertificate > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_41
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setUserCertificate > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    goto :goto_65

    :catch_4a
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API setUserCertificate-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return v0
.end method

.method public setVpnModeOfOperation(Ljava/lang/String;I)I
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->getKnoxVpnPolicyService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_41

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v4, "GenericVpnPolicy.setVpnModeOfOperation"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->mKnoxVpnPolicyService:Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->vpnContext:Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    invoke-interface {v3, v4, p1, p2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_49

    :cond_38
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setVpnModeOfOperation > mEnterpriseResponseData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_41
    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setVpnModeOfOperation > mService == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    goto :goto_65

    :catch_4a
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/vpn/GenericVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at GenericVpnPolicy API setVpnModeOfOperation-Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return v0
.end method
