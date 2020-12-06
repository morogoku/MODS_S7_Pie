.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_35

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    # getter for: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z
    invoke-static {v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$000(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "BluetoothPolicyService"

    const-string v4, "***** Restarting Bluetooth *****"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    # setter for: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z
    invoke-static {v3, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$002(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_46

    :cond_35
    const/16 v3, 0xc

    if-ne v1, v3, :cond_46

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    # invokes: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V
    invoke-static {v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$100(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    :cond_46
    :goto_46
    goto :goto_5a

    :cond_47
    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    # invokes: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->updateSystemUIMonitor(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$200(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;I)V

    :cond_5a
    :goto_5a
    return-void
.end method
