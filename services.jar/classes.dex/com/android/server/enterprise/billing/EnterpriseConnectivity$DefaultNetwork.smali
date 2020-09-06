.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetwork"
.end annotation


# instance fields
.field private mActiveNetwork:I

.field private mCellularLinkProperties:Landroid/net/LinkProperties;

.field private mCellularRequest:Landroid/net/NetworkRequest;

.field private mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field private mWifiRequest:Landroid/net/NetworkRequest;

.field private mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    return-void
.end method

.method private handleConnected(J)Z
    .registers 7

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v2, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return v1

    :cond_3a
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v2, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return v1

    :cond_73
    const/4 v0, 0x0

    return v0
.end method

.method private handleDisconnected(J)Z
    .registers 8

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v3, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default network WiFi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    return v1

    :cond_35
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v0, v3, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default network Cellular: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    return v1

    :cond_68
    const/4 v0, 0x0

    return v0
.end method

.method private isValidLink(Landroid/net/LinkProperties;)Z
    .registers 3

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_10
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method


# virtual methods
.method public DefaultNetworkInit(Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    invoke-interface {p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    :cond_14
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto :goto_27

    :cond_25
    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_27
    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :cond_29
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto :goto_3c

    :cond_3a
    sget-object v3, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_3c
    iput-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :cond_3e
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v3, v2, v4}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    const-string v2, "EntConnectivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "celullar request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v1, v2, v4}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    const-string v2, "EntConnectivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a7} :catch_a8

    goto :goto_c2

    :catch_a8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error in ConnectivityService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_c2
    return-void
.end method

.method public isMobileActive()Z
    .registers 3

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isValidRequest(I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-eq p1, v1, :cond_10

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_12

    if-ne p1, v1, :cond_e

    goto :goto_10

    :cond_e
    nop

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0

    :catch_12
    move-exception v1

    const-string v2, "EntConnectivity"

    const-string/jumbo v3, "mCellularRequest or mWifiRequest is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public isWifiActive()Z
    .registers 4

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .registers 5

    iput p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    goto :goto_27

    :cond_21
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_27

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    :cond_27
    :goto_27
    if-eqz p2, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveNetworkChanged: link properties set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method public onNetworkChanged(Landroid/os/Bundle;I)Z
    .registers 9

    const-class v0, Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    const-wide/16 v2, -0x1

    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_1d

    const-wide/16 v2, 0x0

    goto :goto_27

    :cond_1d
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_27

    const-wide/16 v2, 0x1

    :cond_27
    :goto_27
    packed-switch p2, :pswitch_data_44

    goto :goto_43

    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_43

    :pswitch_38
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleDisconnected(J)Z

    move-result v1

    return v1

    :cond_3d
    :pswitch_3d
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleConnected(J)Z

    move-result v1

    return v1

    :pswitch_42
    return v1

    :cond_43
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x80001
        :pswitch_42
        :pswitch_3d
        :pswitch_42
        :pswitch_38
        :pswitch_38
        :pswitch_2b
        :pswitch_3d
    .end packed-switch
.end method
