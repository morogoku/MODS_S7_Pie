.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mContext:Landroid/content/Context;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-void
.end method

.method private static getEnterpriseDeviceManager()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    return-object v0
.end method

.method private static getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)I
    .registers 9

    const/16 v0, 0x64

    if-eqz p2, :cond_73

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_73

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v0, 0x6c

    return v0

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_1f

    const/16 v0, 0x70

    return v0

    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_28

    const/16 v0, 0x6d

    return v0

    :cond_28
    if-eqz p3, :cond_35

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    const/16 v0, 0x73

    return v0

    :cond_34
    goto :goto_3e

    :cond_35
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_3f

    if-nez v3, :cond_3e

    const/16 v0, 0x74

    return v0

    :cond_3e
    :goto_3e
    goto :goto_5c

    :catch_3f
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_5c
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_73
    :goto_73
    const/16 v0, 0x68

    return v0
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .registers 13

    const/16 v0, 0x64

    if-eqz p3, :cond_e6

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto/16 :goto_e6

    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_15

    const/16 v0, 0x6c

    return v0

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_20

    const/16 v0, 0x70

    return v0

    :cond_20
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_29

    const/16 v0, 0x6d

    return v0

    :cond_29
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    const/16 v0, 0x2be

    return v0

    :cond_33
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    if-nez v4, :cond_3c

    const/16 v0, 0x1f5

    return v0

    :cond_3c
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6

    move v5, v6

    if-nez v5, :cond_51

    const/16 v0, 0x71

    return v0

    :cond_51
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget v8, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq v7, v8, :cond_66

    const/16 v0, 0x72

    return v0

    :cond_66
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    if-eqz v7, :cond_84

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v7

    move v5, v7

    if-eqz v5, :cond_84

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v7

    if-eq v7, p2, :cond_84

    const/16 v0, 0x71

    return v0

    :cond_84
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_99

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_99

    const/16 v0, 0x7b

    return v0

    :cond_99
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_b1

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a9} :catch_b2

    if-ne v7, v8, :cond_ae

    const/16 v0, 0x75

    return v0

    :cond_ae
    const/16 v0, 0x76

    return v0

    :cond_b1
    goto :goto_cf

    :catch_b2
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_cf
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_e6
    :goto_e6
    const/16 v0, 0x68

    return v0
.end method

.method public addAllPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 10

    const/16 v0, 0x64

    if-eqz p2, :cond_a4

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto/16 :goto_a4

    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_15

    const/16 v0, 0x6c

    return v0

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_20

    const/16 v0, 0x70

    return v0

    :cond_20
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_29

    const/16 v0, 0x6d

    return v0

    :cond_29
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVpnConnectionType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    const/16 v0, 0x2be

    return v0

    :cond_33
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getChainingEnabled()I

    move-result v4

    if-nez v4, :cond_3c

    const/16 v0, 0x1f5

    return v0

    :cond_3c
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_53

    const/16 v0, 0x7b

    return v0

    :cond_53
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v5

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_67} :catch_70

    if-ne v5, v6, :cond_6c

    const/16 v0, 0x75

    return v0

    :cond_6c
    const/16 v0, 0x76

    return v0

    :cond_6f
    goto :goto_8d

    :catch_70
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_8d
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a4
    :goto_a4
    const/16 v0, 0x68

    return v0
.end method

.method public addContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v0, 0x64

    move v6, v0

    if-eqz v5, :cond_213

    if-eqz v4, :cond_213

    :try_start_11
    array-length v0, v4

    const/4 v7, 0x1

    if-lt v0, v7, :cond_213

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_1b

    goto/16 :goto_213

    :cond_1b
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_26

    const/16 v6, 0x6c

    return v6

    :cond_26
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_31

    const/16 v6, 0x70

    return v6

    :cond_31
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_3a

    const/16 v6, 0x6d

    return v6

    :cond_3a
    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    if-eqz v10, :cond_4f

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v10

    move v9, v10

    if-nez v9, :cond_4f

    const/16 v6, 0x71

    return v6

    :cond_4f
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    iget v12, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v11, v12, :cond_64

    const/16 v6, 0x72

    return v6

    :cond_64
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    if-eqz v11, :cond_82

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11

    move v9, v11

    if-eqz v9, :cond_82

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    if-eq v11, v3, :cond_82

    const/16 v6, 0x71

    return v6

    :cond_82
    array-length v11, v4

    const/4 v13, 0x0

    :goto_84
    if-ge v13, v11, :cond_138

    aget-object v14, v4, v13

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v12, "ADD_ALL_PACKAGES"

    invoke-virtual {v15, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_99

    const/16 v6, 0x89

    return v6

    :cond_99
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v12, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    if-eqz v7, :cond_d4

    move/from16 v16, v8

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d1

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    move/from16 v17, v9

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_c6

    const/16 v6, 0x87

    return v6

    :cond_c6
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_d8

    const/16 v6, 0x88

    return v6

    :cond_d1
    move/from16 v17, v9

    goto :goto_d8

    :cond_d4
    move/from16 v16, v8

    move/from16 v17, v9

    :cond_d8
    :goto_d8
    if-eqz v7, :cond_ef

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ef

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_ef

    const/16 v6, 0x87

    return v6

    :cond_ef
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v8

    if-lez v8, :cond_108

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_108

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_108

    const/16 v6, 0x8b

    return v6

    :cond_108
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v9

    if-eqz v9, :cond_113

    const/16 v6, 0x89

    return v6

    :cond_113
    const-string v9, "com.knox.vpn.proxyhandler"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11e

    const/16 v6, 0x89

    return v6

    :cond_11e
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v7

    const-string v7, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12f

    const/16 v6, 0x86

    return v6

    :cond_12f
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    const/4 v7, 0x1

    goto/16 :goto_84

    :cond_138
    move/from16 v16, v8

    move/from16 v17, v9

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_1de

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_1d9

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d6

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_171

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_170

    const/16 v6, 0x77

    return v6

    :cond_170
    return v6

    :cond_171
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_17b

    const/16 v6, 0x73

    return v6

    :cond_17b
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_188

    const/16 v6, 0x77

    return v6

    :cond_188
    array-length v9, v4

    const/4 v11, 0x0

    :goto_18a
    if-ge v11, v9, :cond_1d6

    aget-object v12, v4, v11

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v3, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1cd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1cd

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v5, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v14

    const-string v15, "KnoxVpnApiValidation"

    move-object/from16 v20, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user wide vpn was configured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removing uid from exempt list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1cc} :catch_1df

    goto :goto_1cf

    :cond_1cd
    move-object/from16 v20, v0

    :goto_1cf
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    goto :goto_18a

    :cond_1d6
    move-object/from16 v20, v0

    goto :goto_1de

    :cond_1d9
    move-object/from16 v20, v0

    const/16 v0, 0x78

    return v0

    :cond_1de
    :goto_1de
    goto :goto_1fc

    :catch_1df
    move-exception v0

    const-string v1, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    :goto_1fc
    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_213
    :goto_213
    const/16 v0, 0x68

    return v0
.end method

.method public addPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v0, 0x64

    move v5, v0

    if-eqz v4, :cond_1f9

    if-eqz v3, :cond_1f9

    :try_start_f
    array-length v0, v3

    const/4 v6, 0x1

    if-lt v0, v6, :cond_1f9

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_19

    goto/16 :goto_1f9

    :cond_19
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_24

    const/16 v5, 0x6c

    return v5

    :cond_24
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_2f

    const/16 v5, 0x70

    return v5

    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    if-nez v7, :cond_38

    const/16 v5, 0x6d

    return v5

    :cond_38
    array-length v8, v3

    const/4 v10, 0x0

    :goto_3a
    if-ge v10, v8, :cond_e5

    aget-object v11, v3, v10

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_51

    const/16 v5, 0x89

    return v5

    :cond_51
    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v14, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v14

    if-eqz v14, :cond_87

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_87

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v15

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v15, v9, :cond_7c

    const/16 v5, 0x87

    return v5

    :cond_7c
    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v9, v15, :cond_87

    const/16 v5, 0x88

    return v5

    :cond_87
    if-eqz v14, :cond_9e

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9e

    invoke-virtual {v14}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v9

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v9, v15, :cond_9e

    const/16 v5, 0x87

    return v5

    :cond_9e
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v9, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    if-lez v9, :cond_b9

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b9

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_b9

    const/16 v5, 0x8b

    return v5

    :cond_b9
    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v15, v9, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    move-result v6

    if-eqz v6, :cond_c6

    const/16 v5, 0x89

    return v5

    :cond_c6
    const-string v6, "com.knox.vpn.proxyhandler"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d1

    const/16 v5, 0x89

    return v5

    :cond_d1
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    const/16 v5, 0x86

    return v5

    :cond_e0
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3a

    :cond_e5
    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_1c4

    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v6, v8, :cond_1bf

    iget-object v6, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1bc

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_120

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11f

    const/16 v5, 0x77

    return v5

    :cond_11f
    return v5

    :cond_120
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12a

    const/16 v5, 0x73

    return v5

    :cond_12a
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_137

    const/16 v5, 0x77

    return v5

    :cond_137
    array-length v9, v3

    const/4 v10, 0x0

    :goto_139
    if-ge v10, v9, :cond_1bc

    aget-object v11, v3, v10

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1b4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b4

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->removeUidFromExemptList(I)V

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v4, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(Ljava/lang/String;I)Z

    move-result v13

    const-string v14, "KnoxVpnApiValidation"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string/jumbo v0, "user wide vpn was configured "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removing uid from exempt list "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "KnoxVpnApiValidation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " added to vpn for profile "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ". Removed from exempt list"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v24, v0

    invoke-static/range {v18 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b3} :catch_1c5

    goto :goto_1b6

    :cond_1b4
    move-object/from16 v17, v0

    :goto_1b6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_139

    :cond_1bc
    move-object/from16 v17, v0

    goto :goto_1c4

    :cond_1bf
    move-object/from16 v17, v0

    const/16 v0, 0x78

    return v0

    :cond_1c4
    :goto_1c4
    goto :goto_1e2

    :catch_1c5
    move-exception v0

    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    :goto_1e2
    const-string v0, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1f9
    :goto_1f9
    const/16 v0, 0x68

    return v0
.end method

.method public createVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/16 v0, 0x64

    move v4, v0

    if-eqz v3, :cond_3ae

    :try_start_b
    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_13

    move/from16 v18, v4

    goto/16 :goto_3b0

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getAdminId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v5

    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createVpnProfileValidation:vpnClientUserId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " adminUserId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_44

    if-eqz v0, :cond_96

    const/16 v4, 0x72

    return v4

    :cond_44
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_48} :catch_377
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_357

    if-eqz v6, :cond_65

    :try_start_4a
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v6
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_56} :catch_60
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_5b

    if-nez v6, :cond_65

    const/16 v4, 0x71

    return v4

    :catch_5b
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_35a

    :catch_60
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_37a

    :cond_65
    :try_start_65
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createVpnProfileValidation:containerOwner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " adminuid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_96

    const/16 v4, 0x72

    return v4

    :cond_96
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "KNOX_VPN_PARAMETERS"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "profile_attribute"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "knox"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "profileName"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vpn_type"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vpn_route_type"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "chaining_enabled"

    const/4 v14, -0x1

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v15, "uidpid_search_enabled"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v14, "connectionType"

    move/from16 v17, v0

    const-string/jumbo v0, "keepon"

    invoke-virtual {v9, v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "proxy-server"

    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    invoke-virtual {v9, v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v14, "proxy-port"
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_e9} :catch_377
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_e9} :catch_357

    move/from16 v18, v4

    const/4 v4, -0x1

    :try_start_ec
    invoke-virtual {v9, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    move v4, v14

    const-string/jumbo v14, "proxy-username"

    move/from16 v19, v5

    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v9, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v14, "proxy-password"

    move-object/from16 v20, v6

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String;

    invoke-virtual {v9, v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "pac-url"

    move-object/from16 v21, v7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    invoke-virtual {v9, v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "ipv6-enable"

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-virtual {v9, v14, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v8, "proxy-auth"

    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    move v6, v8

    if-eqz v10, :cond_348

    if-eqz v11, :cond_348

    const/4 v8, 0x1

    if-eq v12, v8, :cond_13a

    if-eqz v12, :cond_13a

    move-object/from16 v26, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    goto/16 :goto_350

    :cond_13a
    if-nez v12, :cond_160

    if-eqz v13, :cond_15d

    if-ne v13, v8, :cond_141

    goto :goto_15d

    :cond_141
    const-string/jumbo v8, "ondemand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14d

    const/16 v8, 0x2be

    return v8

    :cond_14d
    if-nez v3, :cond_15a

    const/4 v8, -0x1

    if-eq v4, v8, :cond_153

    goto :goto_15a

    :cond_153
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-eq v7, v8, :cond_160

    const/16 v8, 0x321

    return v8

    :cond_15a
    :goto_15a
    const/16 v8, 0x321

    return v8

    :cond_15d
    :goto_15d
    const/16 v8, 0x1f9

    return v8

    :cond_160
    const/4 v8, -0x1

    if-eq v13, v8, :cond_16b

    if-eqz v13, :cond_16b

    const/4 v8, 0x1

    if-eq v13, v8, :cond_16c

    const/16 v8, 0x1f5

    return v8

    :cond_16b
    const/4 v8, 0x1

    :cond_16c
    if-eq v15, v8, :cond_173

    if-eqz v15, :cond_173

    const/16 v8, 0x259

    return v8

    :cond_173
    const-string/jumbo v8, "keepon"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_188

    const-string/jumbo v8, "ondemand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_188

    const/16 v8, 0x2bd

    return v8

    :cond_188
    const-string/jumbo v8, "ondemand"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_196

    if-nez v13, :cond_196

    const/16 v8, 0x2be

    return v8

    :cond_196
    if-eqz v14, :cond_19e

    const/4 v8, 0x1

    if-eq v14, v8, :cond_19e

    const/16 v8, 0x325

    return v8

    :cond_19e
    const-string v8, "\\s"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v24

    move-object/from16 v25, v24

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_1b7

    const/16 v16, 0x6a

    return v16

    :cond_1b7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v27, v25

    move-object/from16 v28, v0

    move-object/from16 v29, v8

    move/from16 v0, v27

    const/4 v8, 0x1

    if-lt v0, v8, :cond_33d

    const/16 v8, 0x80

    if-le v0, v8, :cond_1d4

    move/from16 v30, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    goto/16 :goto_345

    :cond_1d4
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v8

    if-eqz v8, :cond_1ee

    move/from16 v30, v0

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v0

    move-object/from16 v31, v8

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v0, v8, :cond_1eb

    const/16 v0, 0x6f

    return v0

    :cond_1eb
    const/16 v0, 0x70

    return v0

    :cond_1ee
    move/from16 v30, v0

    move-object/from16 v31, v8

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v2, "chaining_enabled"

    move-object/from16 v32, v11

    const/4 v11, -0x1

    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_21b

    iget-object v11, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v33, v2

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v34, v9

    const/4 v9, 0x1

    invoke-virtual {v11, v2, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    if-eq v2, v9, :cond_218

    if-nez v2, :cond_217

    goto :goto_218

    :cond_217
    goto :goto_232

    :cond_218
    :goto_218
    const/16 v9, 0x1f7

    return v9

    :cond_21b
    move/from16 v33, v2

    move-object/from16 v34, v9

    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v9

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_232

    const/16 v9, 0x1f8

    return v9

    :cond_232
    :goto_232
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-eq v7, v2, :cond_2bf

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v3, v2, :cond_2b8

    const/4 v2, -0x1

    if-ne v4, v2, :cond_2b8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_249

    move-object/from16 v35, v0

    move-object/from16 v2, v23

    goto/16 :goto_2bc

    :cond_249
    if-nez v13, :cond_24e

    const/16 v2, 0x324

    return v2

    :cond_24e
    if-eqz v5, :cond_2bf

    if-eqz v23, :cond_2bf

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b1

    move-object/from16 v2, v23

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2ae

    if-nez v6, :cond_265

    const/16 v9, 0x324

    return v9

    :cond_265
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v35, v0

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "proxy-username"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_289

    const/16 v9, 0x322

    return v9

    :cond_289
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v36, v0

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "proxy-password"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ad

    const/16 v9, 0x323

    return v9

    :cond_2ad
    goto :goto_2c3

    :cond_2ae
    move-object/from16 v35, v0

    goto :goto_2b5

    :cond_2b1
    move-object/from16 v35, v0

    move-object/from16 v2, v23

    :goto_2b5
    const/16 v0, 0x324

    return v0

    :cond_2b8
    move-object/from16 v35, v0

    move-object/from16 v2, v23

    :goto_2bc
    const/16 v0, 0x324

    return v0

    :cond_2bf
    move-object/from16 v35, v0

    move-object/from16 v2, v23

    :goto_2c3
    if-eqz v3, :cond_339

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-ne v3, v0, :cond_2cc

    const/4 v0, -0x1

    if-eq v4, v0, :cond_339

    :cond_2cc
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PAC_URL:Ljava/lang/String;

    if-ne v7, v0, :cond_336

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d7

    goto :goto_336

    :cond_2d7
    if-nez v13, :cond_2dc

    const/16 v0, 0x324

    return v0

    :cond_2dc
    if-eqz v5, :cond_339

    if-eqz v2, :cond_339

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_333

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_333

    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "proxy-username"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30e

    const/16 v9, 0x322

    return v9

    :cond_30e
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v37, v0

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "proxy-password"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_32d
    .catch Lorg/json/JSONException; {:try_start_ec .. :try_end_32d} :catch_355
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_32d} :catch_353

    if-nez v0, :cond_332

    const/16 v9, 0x323

    return v9

    :cond_332
    goto :goto_339

    :cond_333
    const/16 v0, 0x324

    return v0

    :cond_336
    :goto_336
    const/16 v0, 0x324

    return v0

    :cond_339
    :goto_339
    nop

    move/from16 v4, v18

    goto :goto_397

    :cond_33d
    move/from16 v30, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    :goto_345
    const/16 v0, 0x6b

    return v0

    :cond_348
    move-object/from16 v26, v0

    move-object/from16 v34, v9

    move-object/from16 v32, v11

    move-object/from16 v2, v23

    :goto_350
    const/16 v0, 0x69

    return v0

    :catch_353
    move-exception v0

    goto :goto_35a

    :catch_355
    move-exception v0

    goto :goto_37a

    :catch_357
    move-exception v0

    move/from16 v18, v4

    :goto_35a
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at createVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x65

    goto :goto_397

    :catch_377
    move-exception v0

    move/from16 v18, v4

    :goto_37a
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException at createVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x67

    nop

    :goto_397
    const-string v0, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3ae
    move/from16 v18, v4

    :goto_3b0
    const/16 v0, 0x68

    return v0
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p3, :cond_71

    :try_start_3
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_71

    :cond_8
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2a

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_39

    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_39
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_52

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_52
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget v5, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v4, v5, :cond_6d

    const-string v4, "KnoxVpnApiValidation"

    const-string/jumbo v5, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6d
    nop

    return-object p3

    :catch_6f
    move-exception v1

    goto :goto_7a

    :cond_71
    :goto_71
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_79} :catch_6f

    return-object v0

    :goto_7a
    nop

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    :try_start_3
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_3d

    :cond_8
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2a

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_39

    const-string v3, "KnoxVpnApiValidation"

    const-string/jumbo v4, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_39
    nop

    return-object p2

    :catch_3b
    move-exception v1

    goto :goto_46

    :cond_3d
    :goto_3d
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_45} :catch_3b

    return-object v0

    :goto_46
    nop

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getAllPackagesInVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getErrorStringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    :try_start_3
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_2d

    :cond_8
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getErrorStringValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2a

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getErrorStringValidation: Not the same admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2a
    goto :goto_51

    :catch_2b
    move-exception v0

    goto :goto_36

    :cond_2d
    :goto_2d
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getErrorStringValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_2b

    return-object v0

    :goto_36
    nop

    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getErrorStringValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-object p2
.end method

.method public getStateValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x64

    if-eqz p2, :cond_55

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_55

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v0, 0x6c

    return v0

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_20

    if-eq v2, v3, :cond_1f

    const/16 v0, 0x70

    return v0

    :cond_1f
    goto :goto_3d

    :catch_20
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getStateValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_3d
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStateValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_55
    :goto_55
    const/16 v0, 0x68

    return v0
.end method

.method public getVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x64

    if-eqz p2, :cond_55

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_55

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v0, 0x6c

    return v0

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_20

    if-eq v2, v3, :cond_1f

    const/16 v0, 0x70

    return v0

    :cond_1f
    goto :goto_3d

    :catch_20
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnModeOfOperationValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_3d
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_55
    :goto_55
    const/16 v0, 0x68

    return v0
.end method

.method public getVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    :try_start_3
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_2d

    :cond_8
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_2a

    const-string v2, "KnoxVpnApiValidation"

    const-string/jumbo v3, "getVpnProfileValidation: Not the same admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2a
    goto :goto_51

    :catch_2b
    move-exception v0

    goto :goto_36

    :cond_2d
    :goto_2d
    const-string v1, "KnoxVpnApiValidation"

    const-string/jumbo v2, "getVpnProfileValidation: profileName value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_2b

    return-object v0

    :goto_36
    nop

    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at getVpnProfileValidation API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-object p2
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)I
    .registers 11

    const/16 v0, 0x64

    if-eqz p3, :cond_a7

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_a

    goto/16 :goto_a7

    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_15

    const/16 v0, 0x6c

    return v0

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_20

    const/16 v0, 0x70

    return v0

    :cond_20
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    if-nez v2, :cond_29

    const/16 v0, 0x6d

    return v0

    :cond_29
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v4

    move v3, v4

    if-nez v3, :cond_3e

    const/16 v0, 0x71

    return v0

    :cond_3e
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v5, v6, :cond_53

    const/16 v0, 0x72

    return v0

    :cond_53
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    if-eqz v5, :cond_71

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v5

    move v3, v5

    if-eqz v3, :cond_71

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v5
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_72

    if-eq v5, p2, :cond_71

    const/16 v0, 0x71

    return v0

    :cond_71
    goto :goto_8f

    :catch_72
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_8f
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a7
    :goto_a7
    const/16 v0, 0x68

    return v0
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x64

    if-eqz p2, :cond_5e

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_5e

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v0, 0x6c

    return v0

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_1f

    const/16 v0, 0x70

    return v0

    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_29

    if-nez v2, :cond_28

    const/16 v0, 0x6d

    return v0

    :cond_28
    goto :goto_46

    :catch_29
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_46
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5e
    :goto_5e
    const/16 v0, 0x68

    return v0
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v0, 0x64

    move v6, v0

    if-eqz v5, :cond_1a0

    if-eqz v4, :cond_1a0

    :try_start_11
    array-length v0, v4

    const/4 v7, 0x1

    if-lt v0, v7, :cond_1a0

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_1b

    goto/16 :goto_1a0

    :cond_1b
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_26

    const/16 v6, 0x6c

    return v6

    :cond_26
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_31

    const/16 v6, 0x70

    return v6

    :cond_31
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v8

    if-nez v8, :cond_3a

    const/16 v6, 0x6d

    return v6

    :cond_3a
    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    if-eqz v10, :cond_4f

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v10

    move v9, v10

    if-nez v9, :cond_4f

    const/16 v6, 0x71

    return v6

    :cond_4f
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    iget v12, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v11, v12, :cond_64

    const/16 v6, 0x72

    return v6

    :cond_64
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    if-eqz v11, :cond_82

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v11

    move v9, v11

    if-eqz v9, :cond_82

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result v11

    if-eq v11, v3, :cond_82

    const/16 v6, 0x71

    return v6

    :cond_82
    iget-object v11, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v11

    if-eqz v11, :cond_cc

    array-length v11, v4

    const/4 v13, 0x0

    :goto_8c
    if-ge v13, v11, :cond_cc

    aget-object v14, v4, v13

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v12, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v15, :cond_a9

    if-eqz v12, :cond_a9

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a9

    const/16 v6, 0x81

    return v6

    :cond_a9
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_c4

    move/from16 v17, v8

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c6

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_c6

    const/16 v6, 0x8b

    return v6

    :cond_c4
    move/from16 v17, v8

    :cond_c6
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    const/4 v7, 0x1

    goto :goto_8c

    :cond_cc
    move/from16 v17, v8

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_16a

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v7, v8, :cond_165

    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v11, "ADD_ALL_PACKAGES"

    invoke-virtual {v8, v3, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_162

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_103

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_102

    const/16 v6, 0x79

    return v6

    :cond_102
    return v6

    :cond_103
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_10d

    const/16 v6, 0x73

    return v6

    :cond_10d
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v8

    array-length v11, v4

    const/4 v12, 0x0

    :goto_113
    if-ge v12, v11, :cond_162

    aget-object v13, v4, v12

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_157

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v3, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v0, v5, v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    move/from16 v19, v0

    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user wide vpn was configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "adding uid to exempt list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_156} :catch_16b

    goto :goto_159

    :cond_157
    move-object/from16 v18, v0

    :goto_159
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_113

    :cond_162
    move-object/from16 v18, v0

    goto :goto_16a

    :cond_165
    move-object/from16 v18, v0

    const/16 v0, 0x7a

    return v0

    :cond_16a
    :goto_16a
    goto :goto_188

    :catch_16b
    move-exception v0

    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x65

    :goto_188
    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1a0
    :goto_1a0
    const/16 v0, 0x68

    return v0
.end method

.method public removePackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v0, 0x64

    move v5, v0

    if-eqz v4, :cond_18e

    if-eqz v3, :cond_18e

    :try_start_f
    array-length v0, v3

    const/4 v6, 0x1

    if-lt v0, v6, :cond_18e

    iget-object v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v0, :cond_19

    goto/16 :goto_18e

    :cond_19
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v0

    if-nez v0, :cond_24

    const/16 v5, 0x6c

    return v5

    :cond_24
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_2f

    const/16 v5, 0x70

    return v5

    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    if-nez v7, :cond_38

    const/16 v5, 0x6d

    return v5

    :cond_38
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v9, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_82

    array-length v8, v3

    move v10, v9

    :goto_45
    if-ge v10, v8, :cond_82

    aget-object v11, v3, v10

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_64

    if-eqz v13, :cond_64

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_64

    const/16 v5, 0x81

    return v5

    :cond_64
    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v15, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v14

    if-lez v14, :cond_7f

    iget-object v15, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7f

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7f

    const/16 v5, 0x8b

    return v5

    :cond_7f
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    :cond_82
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_158

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v10, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-ne v8, v10, :cond_153

    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    const-string v12, "ADD_ALL_PACKAGES"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_150

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_bc

    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v6, :cond_bb

    const/16 v5, 0x79

    return v5

    :cond_bb
    return v5

    :cond_bc
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v10

    if-ne v10, v6, :cond_c5

    const/16 v5, 0x73

    return v5

    :cond_c5
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getExemptPackageList()Ljava/util/HashSet;

    move-result-object v6

    array-length v10, v3

    :goto_ca
    if-ge v9, v10, :cond_150

    aget-object v11, v3, v9

    iget-object v12, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v13, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_146

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v14, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v13, v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v14, v4, v13, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v14

    const-string v15, "KnoxVpnApiValidation"

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user wide vpn was configured "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "adding uid to exempt list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "KnoxVpnApiValidation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed from vpn for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Added to exempt list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget v0, v2, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    move/from16 v24, v0

    invoke-static/range {v18 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_145} :catch_159

    goto :goto_148

    :cond_146
    move-object/from16 v17, v0

    :goto_148
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    goto/16 :goto_ca

    :cond_150
    move-object/from16 v17, v0

    goto :goto_158

    :cond_153
    move-object/from16 v17, v0

    const/16 v0, 0x7a

    return v0

    :cond_158
    :goto_158
    goto :goto_176

    :catch_159
    move-exception v0

    const-string v1, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x65

    :goto_176
    const-string v0, "KnoxVpnApiValidation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_18e
    :goto_18e
    const/16 v0, 0x68

    return v0
.end method

.method public removeVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x64

    if-eqz p2, :cond_64

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_64

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v0, 0x6c

    return v0

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    if-eq v2, v3, :cond_1f

    const/16 v0, 0x70

    return v0

    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_2f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2e

    if-ne v3, v4, :cond_2e

    const/16 v0, 0x7d

    :cond_2e
    goto :goto_4c

    :catch_2f
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_4c
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_64
    :goto_64
    const/16 v0, 0x68

    return v0
.end method

.method public setVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)I
    .registers 9

    const/16 v0, 0x64

    if-eqz p2, :cond_5d

    :try_start_4
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_5d

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_14

    const/16 v0, 0x6c

    return v0

    :cond_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a} :catch_28

    if-eq v2, v3, :cond_1f

    const/16 v0, 0x70

    return v0

    :cond_1f
    if-eqz p3, :cond_27

    const/4 v2, 0x1

    if-eq p3, v2, :cond_27

    const/16 v0, 0x8a

    return v0

    :cond_27
    goto :goto_45

    :catch_28
    move-exception v1

    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at setVpnModeOfOperationValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    :goto_45
    const-string v1, "KnoxVpnApiValidation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVpnModeOfOperationValidation : validationResult value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5d
    :goto_5d
    const/16 v0, 0x68

    return v0
.end method
