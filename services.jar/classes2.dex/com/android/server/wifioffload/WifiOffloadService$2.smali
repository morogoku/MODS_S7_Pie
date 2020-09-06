.class Lcom/android/server/wifioffload/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5d

    const-string/jumbo v1, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/4 v5, 0x2

    if-eq v1, v5, :cond_28

    const/4 v5, 0x3

    if-ne v1, v5, :cond_26

    goto :goto_28

    :cond_26
    move v2, v3

    nop

    :cond_28
    :goto_28
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v4, v2}, Lcom/android/server/wifioffload/WifiOffloadService;->access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    :cond_38
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " currentWifiState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5d
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v3, v2}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    goto :goto_93

    :cond_82
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v2, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    :cond_93
    :goto_93
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi network state change, connected ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$500(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b0
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    const-string/jumbo v1, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/16 v5, 0xc

    if-eq v1, v5, :cond_ce

    const/16 v5, 0xd

    if-ne v1, v5, :cond_cc

    goto :goto_ce

    :cond_cc
    move v2, v3

    nop

    :cond_ce
    :goto_ce
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v4, v2}, Lcom/android/server/wifioffload/WifiOffloadService;->access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mobile Hotspot setting changed, Enabled ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    return-void
.end method
