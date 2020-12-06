.class Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedHandler"
.end annotation


# instance fields
.field final mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-nez v4, :cond_0

    const-string v4, "LocalBluetoothProfileManager"

    const-string v5, "StateChangedHandler :: mProfile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_3

    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateChangedHandler found new device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$100(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_3

    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "StateChangedHandler :: Can\'t add CachedDevice"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v5, "android.bluetooth.profile.extra.STATE"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "android.bluetooth.profile.extra.isNormallyType"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "LocalBluetoothProfileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Profiles StateChangedHandler device : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", mProfile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", new state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", old state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", normally type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v4, v9, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    iget-object v9, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$200(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v9, v4, v10, v5, v7}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v5, :cond_12

    if-ne v7, v10, :cond_12

    const-string v11, "LocalBluetoothProfileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to connect "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PAN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    sget v11, Lcom/android/settingslib/R$string;->screen_bluetooth_global:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/android/settingslib/R$string;->event_bluetooth_bemc:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/android/settingslib/R$string;->detail_bluetooth_bemc_pairing_pan_connecting_error:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "LocalBluetoothProfileManager"

    const-string v12, "PAN connection was rejected by NAP or Connection Timeout..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v2, v11, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_4
    if-ne v11, v10, :cond_5

    sget v12, Lcom/android/settingslib/R$string;->bluetooth_pan_nap_connecting_error_summury:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget v12, Lcom/android/settingslib/R$string;->bluetooth_pan_connecting_error_summury:I

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v1, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v4, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v1, v12}, Lcom/android/settingslib/bluetooth/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isTetheredSettings()Z

    move-result v12

    if-nez v12, :cond_9

    if-ne v11, v10, :cond_8

    sget v12, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v1, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_8
    sget v12, Lcom/android/settingslib/R$string;->bluetooth_pan_connecting_error_summury:I

    new-array v13, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-virtual {v1, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-static {v1, v12}, Lcom/android/settingslib/bluetooth/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    :goto_1
    goto/16 :goto_4

    :cond_a
    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "HID"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-nez v8, :cond_d

    sget v11, Lcom/android/settingslib/R$string;->screen_bluetooth_global:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/android/settingslib/R$string;->event_bluetooth_bemc:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/android/settingslib/R$string;->detail_bluetooth_bemc_pairing_connecting_error:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "LocalBluetoothProfileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to connect "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " device"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v11, Lcom/android/settingslib/R$string;->bluetooth_hid_connecting_error_summury:I

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v1, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v4, v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {v1, v11}, Lcom/android/settingslib/bluetooth/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_2
    goto :goto_4

    :cond_d
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v11

    if-eqz v11, :cond_f

    sget v11, Lcom/android/settingslib/R$string;->bluetooth_hid_normally_connecting_error_summury:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v11

    if-nez v11, :cond_f

    sget v11, Lcom/android/settingslib/R$string;->bluetooth_connecting_error_message:I

    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-virtual {v1, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/settingslib/bluetooth/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    :goto_3
    goto :goto_4

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/settingslib/bluetooth/Utils;->showConnectingError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_11
    sget v11, Lcom/android/settingslib/R$string;->screen_bluetooth_global:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/android/settingslib/R$string;->event_bluetooth_bemc:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/android/settingslib/R$string;->detail_bluetooth_bemc_pairing_connecting_error:I

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_4
    if-eqz v9, :cond_19

    invoke-virtual {v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v11

    if-eqz v11, :cond_19

    const-string v11, ""

    iget-object v12, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PAN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_15

    const-string v12, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {v2, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_13

    const-string v10, "LocalBluetoothProfileManager"

    const-string v14, "mProfile Name = PANNAP"

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "PANNAP"

    :goto_5
    goto :goto_6

    :cond_13
    if-ne v12, v13, :cond_14

    const-string v10, "LocalBluetoothProfileManager"

    const-string v14, "mProfile Name = PANU"

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "PANU"

    goto :goto_5

    :cond_14
    const-string v10, "LocalBluetoothProfileManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not match pan profile local role, will skip logging connection time. role = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_6
    goto :goto_7

    :cond_15
    iget-object v10, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "LocalBluetoothProfileManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mProfile Name = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-eqz v10, :cond_19

    if-ne v5, v13, :cond_17

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v11}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "Bluetooth_Profiles_Connection_Time"

    invoke-virtual {v11, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_16

    const-string v12, "Bluetooth_Profiles_Connection_Time"

    invoke-virtual {v1, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v6, v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_16
    iget-object v6, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v12, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v12}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/android/settingslib/R$string;->screen_bluetooth_global:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v13}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/android/settingslib/R$string;->event_bluetooth_bcpt:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v12, v13, v10}, Lcom/android/settingslib/bluetooth/Utils;->sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    if-nez v5, :cond_19

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v12, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v11, v12}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileMaxConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v11

    if-nez v11, :cond_19

    iget-object v11, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v11}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "Bluetooth_Profiles_Connection_Time"

    invoke-virtual {v11, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    const-wide/16 v12, 0x0

    invoke-interface {v11, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    cmp-long v12, v20, v12

    if-eqz v12, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v20

    iget-object v14, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v14}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v14

    iget-object v15, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v15}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v15

    sget v6, Lcom/android/settingslib/R$string;->screen_bluetooth_global:I

    invoke-virtual {v15, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->access$300(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Landroid/content/Context;

    move-result-object v6

    sget v0, Lcom/android/settingslib/R$string;->event_bluetooth_bpct:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v10

    move-wide/from16 v18, v12

    invoke-static/range {v14 .. v19}, Lcom/android/settingslib/bluetooth/Utils;->sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_18
    const-string v0, "Bluetooth_Profiles_Connection_Time"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_19
    :goto_8
    return-void
.end method
