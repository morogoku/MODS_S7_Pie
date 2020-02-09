.class Lcom/android/keyguard/KeyguardUpdateMonitor$22;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "com.samsung.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x15e

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "com.sec.android.service.connectionmanager.extra.AUTO_LOCK_SERVICE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "KeyguardAutoLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , mWearableDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " , isEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6102(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v5, "extra.AUTO_LOCK_SERVICE_VALID"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v5, "extra.AUTO_LOCK_SERVICE_IN_CRITERIA"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6402(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v5, "extra.AUTO_LOCK_SERVICE_OUT_CRITERIA"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6502(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v5, "extra.AUTO_LOCK_SERVICE_IN_MARGIN"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6602(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v5, "extra.AUTO_LOCK_SERVICE_OUT_MARGIN"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6702(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelMidRssi()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6402(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelLowRssi()I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6502(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6602(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6702(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    :goto_0
    const-string v2, "KeyguardAutoLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTO_LOCK_SERVICE_VALID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mCriteria_IN_RSSI = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6400(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mCriteria_OUT_RSSI ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6500(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mOffset_IN_RSSI ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6600(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mOffset_OUT_RSSI ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6700(Lcom/android/keyguard/KeyguardUpdateMonitor;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const-string v5, "KeyguardAutoLock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AUTO_LOCK_SERVICE : Device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " , mWearableDevice ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6102(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    const-string v2, "KeyguardAutoLock"

    const-string v3, "ACTION_AUTO_LOCK_SERVICE : mWearableDevice =/= device !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    goto/16 :goto_4

    :cond_4
    const-string v1, "com.samsung.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.samsung.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v1, "com.samsung.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.samsung.bluetooth.device.action.ACTION_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "com.samsung.bluetooth.device.action.RSSI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x15f

    invoke-virtual {v2, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_7
    :goto_2
    const-string v1, "KeyguardAutoLock"

    const-string v4, "ACTION_IN_OF_RANGE_ALERT or SEM_ACTION_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6200()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6200()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_9
    :goto_3
    const-string v1, "KeyguardAutoLock"

    const-string v2, "ACTION_OUT_OF_RANGE_ALERT or SEM_ACTION_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$22;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$9800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_4
    return-void
.end method
