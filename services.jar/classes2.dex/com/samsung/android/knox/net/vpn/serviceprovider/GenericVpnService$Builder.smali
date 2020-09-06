.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
.super Ljava/lang/Object;
.source "GenericVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->this$0:Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mRoutes:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 5

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V
    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$200(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mAddresses:Ljava/util/List;

    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-object p0
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    return-object p0
.end method

.method public addDnsServer(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 3

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addDnsServer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRoute(Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 9

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addRoute"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->check(Ljava/net/InetAddress;I)V
    invoke-static {p1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$200(Ljava/net/InetAddress;I)V

    div-int/lit8 v0, p2, 0x8

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    if-ge v0, v2, :cond_37

    aget-byte v2, v1, v0

    rem-int/lit8 v3, p2, 0x8

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_25
    array-length v2, v1

    if-ge v0, v2, :cond_37

    aget-byte v2, v1, v0

    if-nez v2, :cond_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mRoutes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-virtual {v2, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    return-object p0
.end method

.method public addSearchDomain(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.addSearchDomain"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public allowBypass()Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 3

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.allowBypass"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    return-object p0
.end method

.method public allowFamily(I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 5

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.allowFamily"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    goto :goto_23

    :cond_1b
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    :goto_23
    return-object p0

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is neither "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.establish"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "GenericVpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "establish is getting called : mVpnProfileName value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->mVpnProfileName:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config session value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mAddresses:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mRoutes:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    :try_start_43
    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$400()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_58

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->getService()Landroid/net/IConnectivityManager;
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$400()Landroid/net/IConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_57} :catch_5a

    return-object v0

    :cond_58
    const/4 v0, 0x0

    return-object v0

    :catch_5a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VPN establish failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBlocking(Z)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setBlocking"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    return-object p0
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setConfigureIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setMtu(I)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setMtu"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-lez p1, :cond_18

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad mtu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSession(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;
    .registers 4

    # invokes: Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->checkIfAdminHasVpnPermission()Z
    invoke-static {}, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService;->access$100()Z

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v1, "GenericVpnService.setSession"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    return-object p0
.end method
