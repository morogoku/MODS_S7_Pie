.class Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;
.super Landroid/net/dhcp/DhcpClient$DhcpRequestingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpPreRequestingState"
.end annotation


# static fields
.field private static final DHCP_PRE_REQUEST_TIMEOUT_MS:I = 0xfa0


# instance fields
.field private mPreviousResult:Landroid/net/DhcpResults;

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    const/16 v0, 0xfa0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mTimeout:I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mConnectedBssidString:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2700(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mSemUtil:Landroid/net/dhcp/SemDhcpClientUtil;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/SemDhcpClientUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mConnectedBssidString:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2700(Landroid/net/dhcp/DhcpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/SemDhcpClientUtil;->getDhcpResult(Ljava/lang/String;)Landroid/net/DhcpResults;

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    :cond_22
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    if-eqz v0, :cond_2f

    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;->enter()V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->startNewTransaction()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2100(Landroid/net/dhcp/DhcpClient;)V

    goto :goto_3a

    :cond_2f
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_3a
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .registers 5

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Confirmed"

    # invokes: Landroid/net/dhcp/DhcpClient;->acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->access$2900(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_2a
    goto :goto_4d

    :cond_2b
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_4d

    const-string v0, "DhcpClient"

    const-string v1, "Received NAK in DhcpPreRequestingState, returning to INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x2

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure(I)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;I)V

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    # setter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$2402(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method protected sendPacket()Z
    .registers 6

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->this$0:Landroid/net/dhcp/DhcpClient;

    sget-object v1, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpPreRequestingState;->mPreviousResult:Landroid/net/DhcpResults;

    iget-object v2, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    const/4 v4, 0x0

    # invokes: Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    invoke-static {v0, v1, v2, v4, v3}, Landroid/net/dhcp/DhcpClient;->access$2800(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method
