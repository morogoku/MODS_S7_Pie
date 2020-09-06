.class Lcom/android/server/connectivity/Tethering$4;
.super Lcom/android/server/connectivity/tethering/IControlsTethering;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$ifname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$4;->val$ifname:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IControlsTethering;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSoftApIpRange()Z
    .registers 6

    # getter for: Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSoftApIpRange nextWifiSharingLiteIpRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->isWifiSharingLiteSupported()Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$6900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_41

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$6800(Lcom/android/server/connectivity/Tethering;)I

    move-result v0

    if-ne v0, v3, :cond_40

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->nextWifiSharingLiteIpRange:I
    invoke-static {v0, v4}, Lcom/android/server/connectivity/Tethering;->access$6802(Lcom/android/server/connectivity/Tethering;I)I

    return v2

    :cond_40
    return v1

    :cond_41
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->isWifiConnected()Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$7000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->ipAddressFamilyTobeUsed()I
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$7100(Lcom/android/server/connectivity/Tethering;)I

    move-result v0

    if-ne v0, v3, :cond_52

    return v2

    :cond_52
    return v1
.end method

.method public updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$4;->val$ifname:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    return-void
.end method

.method public updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$4;->val$ifname:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/connectivity/Tethering;->access$6700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    return-void
.end method
