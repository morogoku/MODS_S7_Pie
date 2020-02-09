.class Lcom/samsung/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$702(Lcom/samsung/android/settingslib/wifi/WifiTracker;I)I

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore sticky broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_3
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;->onScanStateChange(I)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v1

    const-string v2, "scan"

    invoke-virtual {v1, v3, v5, v3, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_5
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "multipleChanges"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "wifiConfiguration"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    const-string v6, "changeReason"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v6, v6, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    const/16 v7, 0xa

    nop

    invoke-virtual {v6, v7, v1, v4, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    if-ne v4, v5, :cond_7

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v7}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    if-ne v6, v7, :cond_6

    const/4 v5, 0x2

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v6

    const-string v7, "config"

    invoke-virtual {v6, v3, v3, v5, v7}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    goto/16 :goto_4

    :cond_8
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1202(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_9
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "networkState: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currentNetworkState: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    const-string v4, "linkProperties"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    invoke-static {v2, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1202(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1502(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1402(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previousNetworkState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " => currentNetworkState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1600(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "WifiTracker"

    const-string v4, "isStateChanged"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    const-string v4, "network"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1600(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "WifiTracker"

    const-string v4, "State is changed but not received because Tracker is stopping"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v2, v2, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    const-string v4, "network"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;->updateIpMacInfo()V

    :cond_f
    goto/16 :goto_4

    :cond_10
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "newState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SupplicantState;

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "WifiTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplicantState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", getDetailedStateOf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", currentNetworkState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_15

    sget-object v3, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1502(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1402(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previousNetworkState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " => currentNetworkState:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1600(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1700(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1600(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "WifiTracker"

    const-string v4, "State is changed but not received because Tracker is stopping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    :goto_1
    goto/16 :goto_4

    :cond_16
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_2

    :cond_17
    const-string v1, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "info_type"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_18

    const/16 v2, 0xb

    if-ne v1, v2, :cond_19

    :cond_18
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    const-string v4, "show_noti"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    goto/16 :goto_4

    :cond_1a
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_1b
    const-string v1, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "WifiTracker"

    const-string v2, "onReceive, WECHAT_AP_LIST"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    const-string v1, "ssid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "bssid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "storename"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v5, v3, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2200(Lcom/samsung/android/settingslib/wifi/WifiTracker;ZZ)V

    goto/16 :goto_4

    :cond_1e
    const-string v1, "com.samsung.android.net.wifi.WECHAT_ERRORCODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "errorcode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, WECHAT_ERRORCODE errorCode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v3

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    if-eq v1, v2, :cond_20

    if-ne v1, v5, :cond_21

    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V

    :cond_21
    goto/16 :goto_4

    :cond_22
    const-string v1, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "WifiTracker"

    const-string v2, "onReceive, WECHAT_LOGOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v1

    if-nez v1, :cond_24

    return-void

    :cond_24
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2300(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_4

    :cond_25
    const-string v1, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_26
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v1

    const-string v2, "captive"

    invoke-virtual {v1, v3, v5, v3, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_27
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore sticky broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_29
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$900(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;->updateIpMacInfo()V

    :cond_2a
    :goto_4
    return-void
.end method
