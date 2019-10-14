.class public Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient$ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .registers 3

    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object p0
.end method

.method public withDhcpRequestFirst(Ljava/lang/String;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 4

    if-nez p1, :cond_9

    const-string v0, "DhcpClient"

    const-string v1, "Ignored withDhcpRequestFirst flag - bssid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/ip/IpClient$InitialConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    return-object p0
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const v1, 0x8ca0

    iput v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    return-object p0
.end method

.method public withRandomMacAddress()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    return-object p0
.end method

.method public withStableMacAddress()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    return-object p0
.end method

.method public withoutIPv4()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv4:Z

    return-object p0
.end method

.method public withoutIPv6()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mEnableIPv6:Z

    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    return-object p0
.end method

.method public withoutMultinetworkPolicyTracker()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .registers 3

    iget-object v0, p0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    return-object p0
.end method
