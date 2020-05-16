.class final Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/A2dpProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 7

    invoke-static {}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$102(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    new-instance v1, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$202(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "A2dpProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2dpProfile found new device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$400(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "A2dpProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update cached device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_1

    :cond_2
    const-string v4, "A2dpProfile"

    const-string v5, "Bluetooth device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$102(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method
