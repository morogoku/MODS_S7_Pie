.class public Lcom/samsung/android/knox/net/vpn/VpnPolicy;
.super Ljava/lang/Object;
.source "VpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "VpnPolicy"

    sput-object v0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    return-object v0
.end method


# virtual methods
.method public allowOnlySecureConnections(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.allowOnlySecureConnections"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowOnlySecureConnections(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API allowOnlySecureConnections "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public allowUserAddProfiles(Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserAddProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public allowUserChangeProfiles(Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserChangeProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public allowUserSetAlwaysOn(Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->allowUserSetAlwaysOn(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public checkRacoonSecurity([Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API checkRacoonSecurity "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public createProfile(Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.createProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->createProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/vpn/VpnAdminProfile;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API createProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.deleteProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->deleteProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public getAlwaysOnProfile()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getDnsDomains"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getDnsDomains "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getDnsServers"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getDnsServers "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getForwardRoutes"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getForwardRoutes "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getIPSecCaCertificate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getIPSecPreSharedKey"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getIPSecUserCertificate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getId"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    goto :goto_21

    :catch_19
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-object v0
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getIpSecIdentifier"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getIpSecIdentifier "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getL2TPSecret"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getL2TPSecret "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOcspServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getOcspServerUrl"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getOcspServerUrl "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getServerName"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    goto :goto_21

    :catch_19
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-object v0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-object v0
.end method

.method public getSupportedConnectionTypes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getSupportedConnectionTypes(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getSupportedConnectionTypes "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    goto :goto_21

    :catch_19
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-object v0
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getUserName"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method public getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getUserPassword"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getUserPwd(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method public getVpnList()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.getVpnList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getVPNList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return-object v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getVpnList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isAdminProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->getId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isAdminProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_20

    return v1

    :cond_1f
    goto :goto_28

    :catch_20
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API isAdminProfile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return v0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isL2TPSecretEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isL2TPSecretEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isOnlySecureConnectionsAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isOnlySecureConnectionsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isOnlySecureConnectionsAllowed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.isPPTPEncryptionEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public isUserAddProfilesAllowed()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserAddProfilesAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserAddProfilesAllowed(Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public isUserChangeProfilesAllowed()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserChangeProfilesAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserChangeProfilesAllowed(Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public isUserSetAlwaysOnAllowed()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->isUserSetAlwaysOnAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserSetAlwaysOnAllowed(Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x1

    return v0
.end method

.method public setAlwaysOnProfile(Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setAlwaysOnProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_2b

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to communicate with Vpn Policy service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setDnsDomains"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setDnsDomains(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setDnsDomains "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setDnsServers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setDnsServers(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setDnsServers "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setForwardRoutes"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setForwardRoutes(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setForwardRoutes "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIPSecCaCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setCaCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIPSecPreSharedKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setPresharedKey(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIPSecUserCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setId"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setIpSecIdentifier"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setIpSecIdentifier(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setIpSecIdentifier "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setL2TPSecret"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setL2TPSecret(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setL2TPSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setOcspServerUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setOcspServerUrl"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setOcspServerUrl(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setOcspServerUrl "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setPPTPEncryptionEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setProfileName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setServerName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setServerName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setUserName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "VpnPolicy.setUserPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->getService()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->lService:Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;->setUserPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/vpn/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method
