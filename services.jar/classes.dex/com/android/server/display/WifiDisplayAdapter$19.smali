.class Lcom/android/server/display/WifiDisplayAdapter$19;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_aa

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    if-ne v0, v2, :cond_35

    move v5, v1

    goto :goto_36

    :cond_35
    move v5, v3

    :goto_36
    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothConnected:Z
    invoke-static {v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$902(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1902(Lcom/android/server/display/WifiDisplayAdapter;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string v4, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bluetooth : name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_87

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v3, "com.samsung.intent.action.BLUETOOTH_MIRRORING_CONNECTION_CHANGED"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_a8

    :cond_87
    if-nez v0, :cond_a8

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v2, "com.samsung.intent.action.BLUETOOTH_MIRRORING_CONNECTION_CHANGED"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a8
    :goto_a8
    goto/16 :goto_135

    :cond_aa
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    if-ne v0, v2, :cond_c2

    move v5, v1

    goto :goto_c3

    :cond_c2
    move v5, v3

    :goto_c3
    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z
    invoke-static {v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;Z)Z

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1902(Lcom/android/server/display/WifiDisplayAdapter;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string v4, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bluetooth Receiver : name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_114

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v3, "com.samsung.intent.action.BLUETOOTH_RECEIVER_CONNECTION_CHANGED"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_135

    :cond_114
    if-nez v0, :cond_135

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v2, "com.samsung.intent.action.BLUETOOTH_RECEIVER_CONNECTION_CHANGED"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$19;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_135
    :goto_135
    return-void
.end method
