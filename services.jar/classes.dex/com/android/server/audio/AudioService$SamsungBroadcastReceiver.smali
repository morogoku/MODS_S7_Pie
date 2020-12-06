.class Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "factoryteststate=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_94a

    :cond_18
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "factoryteststate=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_94a

    :cond_28
    const-string v0, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_5a

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "flipOpen"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$15102(Lcom/android/server/audio/AudioService;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "folder_open="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsFolderOpen:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15100(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_94a

    :cond_5a
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x6c

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_94a

    :cond_74
    const-string v0, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$15202(Lcom/android/server/audio/AudioService;I)I

    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on receive : mNbQualityMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15200(Lcom/android/server/audio/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mNbQualityMode:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$15200(Lcom/android/server/audio/AudioService;)I

    move-result v4

    # invokes: Lcom/android/server/audio/AudioService;->setNbQualityMode(I)V
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$15300(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_94a

    :cond_b2
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const v6, 0x8000

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v0, :cond_1e6

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v9, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v9, v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    iget-object v9, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsWifiDisplayConnected:Z
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$15400(Lcom/android/server/audio/AudioService;)Z

    move-result v9

    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiDisplay device state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isConnected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I
    invoke-static {v10, v6, v0, v7}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    if-ne v0, v8, :cond_136

    if-nez v9, :cond_136

    const-string v10, "AudioService"

    const-string v11, "WifiDisplay is connected."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "audioParam;ScreenMirroringState=on"

    invoke-static {v10}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsWifiDisplayConnected:Z
    invoke-static {v10, v8}, Lcom/android/server/audio/AudioService;->access$15402(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v12, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v11, v6, v12}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v13, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v14, "0"

    const-string/jumbo v15, "remote-submix"

    invoke-direct {v12, v13, v6, v14, v15}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$15500(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/SemDeviceStatusListener;

    move-result-object v10

    invoke-virtual {v6, v10, v5}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    goto :goto_1a4

    :cond_136
    if-nez v0, :cond_1a4

    if-eqz v9, :cond_1a4

    const-string v5, "AudioService"

    const-string v10, "WifiDisplay is disconnected."

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audioParam;ScreenMirroringState=off"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsWifiDisplayConnected:Z
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15402(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v5

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v11, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6, v11}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v5, :cond_17b

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isInCommunication()Z
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    if-eqz v5, :cond_17b

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_17b
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iput-boolean v4, v5, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SplitSound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSemDeviceStatusListener:Landroid/hardware/display/SemDeviceStatusListener;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$15500(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/SemDeviceStatusListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    :cond_1a4
    :goto_1a4
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v5, :cond_1e4

    if-ne v0, v8, :cond_1b7

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "isSupportDisplayVolumeControl"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15702(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_1bc

    :cond_1b7
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15702(Lcom/android/server/audio/AudioService;Z)Z

    :goto_1bc
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15700(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mScreenSharingStateResumed:Z
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$15802(Lcom/android/server/audio/AudioService;Z)Z

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSupportDisplayVolumeControl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$15700(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e4
    goto/16 :goto_94a

    :cond_1e6
    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v5, :cond_235

    if-ne v0, v8, :cond_208

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v6, "isSupportDisplayVolumeControl"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15702(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_20d

    :cond_208
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$15702(Lcom/android/server/audio/AudioService;Z)Z

    :goto_20d
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$15700(Lcom/android/server/audio/AudioService;)Z

    move-result v5

    # setter for: Lcom/android/server/audio/AudioService;->mScreenSharingStateResumed:Z
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$15802(Lcom/android/server/audio/AudioService;Z)Z

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive SEM_WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED isSupportDisplayVolumeControl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$15700(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_235
    goto/16 :goto_94a

    :cond_237
    const-string v0, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_272

    const-string v4, "AudioService"

    const-string v5, "GoogleCastDevice is connected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v7, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, "0"

    const-string/jumbo v10, "remote-submix"

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ScreenMirroringState=on"

    invoke-static {v4}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto :goto_28f

    :cond_272
    const-string v4, "AudioService"

    const-string v5, "GoogleCastDevice is disconnected."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v7, "0"

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ScreenMirroringState=off"

    invoke-static {v4}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    :goto_28f
    goto/16 :goto_94a

    :cond_291
    const-string v0, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    const-string v0, "CONNECTION_MODE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wfdFixedVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto/16 :goto_94a

    :cond_2b6
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e1

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    if-nez v4, :cond_2e1

    const-string v4, "AudioService"

    const-string v5, "autorejection on"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "autorejection=on"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_2e1
    goto/16 :goto_94a

    :cond_2e3
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_333

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "logging"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkSystemAudioFiles()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15900(Lcom/android/server/audio/AudioService;)V

    const-string/jumbo v0, "dev_shutdown=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v7}, Lcom/android/server/audio/AudioService;->access$5700(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    if-nez v5, :cond_331

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFineMediaVolume:Lcom/android/server/audio/AudioService$FineVolumeState;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$FineVolumeState;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v5

    if-eqz v5, :cond_331

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$16000(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v8, v4, v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    :cond_331
    goto/16 :goto_94a

    :cond_333
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v0, :cond_94a

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateAudioServiceNotificationChannel()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$16100(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_94a

    :cond_346
    const-string v0, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_389

    :try_start_34f
    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_34f .. :try_end_356} :catch_371

    nop

    nop

    if-ne v0, v6, :cond_361

    const-string/jumbo v4, "earcare=reset"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_36f

    :cond_361
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    if-ne v0, v8, :cond_367

    move v4, v8

    nop

    :cond_367
    # setter for: Lcom/android/server/audio/AudioService;->mIsEnableVolumeMonitor:Z
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$16202(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16300(Lcom/android/server/audio/AudioService;)V

    :goto_36f
    goto/16 :goto_94a

    :catch_371
    move-exception v0

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_389
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_PSEUDO_DUAL_SPEAKER:Z

    if-eqz v0, :cond_3ae

    const-string v0, "com.samsung.android.intent.action.AUDIO_DUAL_SPEAKER_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ae

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mDualSpkEnable:I
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$16402(Lcom/android/server/audio/AudioService;I)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDualSpkEnable:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16400(Lcom/android/server/audio/AudioService;)I

    move-result v4

    # invokes: Lcom/android/server/audio/AudioService;->setDualSpeaker(I)V
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$16500(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_94a

    :cond_3ae
    const-string v0, "com.sec.tms.audio.server"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x2

    if-eqz v0, :cond_48e

    const-string/jumbo v0, "state"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "app"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_TMS_STATE_CHANGED app: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " state : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "server"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_438

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v7, 0x20000000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$16600(Lcom/android/server/audio/AudioService;I)Z

    move-result v6

    if-ne v0, v9, :cond_410

    if-eqz v6, :cond_410

    const-string v8, ""

    const-string v9, ""

    invoke-static {v7, v4, v8, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_437

    :cond_410
    if-ne v0, v8, :cond_437

    if-nez v6, :cond_437

    const-string v4, ""

    const-string v9, ""

    invoke-static {v7, v8, v4, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v9, v10, v7, v11, v12}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_437
    :goto_437
    goto :goto_48c

    :cond_438
    const-string v6, "client"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48c

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v7, -0x78000000

    # invokes: Lcom/android/server/audio/AudioService;->checkDeviceConnected(I)Z
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->access$16600(Lcom/android/server/audio/AudioService;I)Z

    move-result v6

    if-ne v0, v9, :cond_465

    if-eqz v6, :cond_465

    const-string v8, ""

    const-string v9, ""

    invoke-static {v7, v4, v8, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48c

    :cond_465
    if-ne v0, v8, :cond_48c

    if-nez v6, :cond_48c

    const-string v4, ""

    const-string v9, ""

    invoke-static {v7, v8, v4, v9}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v9, ""

    # invokes: Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v7, v9}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v9, v10, v7, v11, v12}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48c
    :goto_48c
    goto/16 :goto_94a

    :cond_48e
    const-string v0, "com.sec.media.action.AUDIOCORE_LOGGING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ab

    const-string v0, "AudioService"

    const-string v4, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "logging"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    goto/16 :goto_94a

    :cond_4ab
    const-string v0, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4cd

    const-string v0, "AudioService"

    const-string v4, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsBigDataApp:Z
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->access$16702(Lcom/android/server/audio/AudioService;Z)Z

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v4, "logging;bigdataApp"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->setAudioServiceConfig(Ljava/lang/String;)V

    goto/16 :goto_94a

    :cond_4cd
    const-string v0, "com.sec.media.action.mute_interval"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_501

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkMuteInterval()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$16800(Lcom/android/server/audio/AudioService;)V

    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Mute Interval] remaining time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->getRemainingMuteIntervalMs()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94a

    :cond_501
    const-string v0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51f

    :try_start_509
    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mute"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mAllSoundMute:I
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$16902(Lcom/android/server/audio/AudioService;I)I
    :try_end_515
    .catch Ljava/lang/Exception; {:try_start_509 .. :try_end_515} :catch_51d

    nop

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setAllSoundMute()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$17000(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_94a

    :catch_51d
    move-exception v0

    return-void

    :cond_51f
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v0, :cond_56b

    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56b

    const-string/jumbo v0, "status"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "player_type"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v0, v8, :cond_547

    if-eqz v5, :cond_541

    if-eq v5, v9, :cond_541

    if-ne v5, v7, :cond_547

    :cond_541
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsDLNAEnabled:Z
    invoke-static {v4, v8}, Lcom/android/server/audio/AudioService;->access$17102(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_54c

    :cond_547
    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mIsDLNAEnabled:Z
    invoke-static {v6, v4}, Lcom/android/server/audio/AudioService;->access$17102(Lcom/android/server/audio/AudioService;Z)Z

    :goto_54c
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsDLNAEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsDLNAEnabled:Z
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$17100(Lcom/android/server/audio/AudioService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_94a

    :cond_56b
    const-string v0, "com.sec.android.intent.action.SPLIT_SOUND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_598

    :try_start_573
    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "enabled"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mSplitSound:Z
    :try_end_57e
    .catch Ljava/lang/Exception; {:try_start_573 .. :try_end_57e} :catch_57f

    goto :goto_596

    :catch_57f
    move-exception v0

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_596
    goto/16 :goto_94a

    :cond_598
    const-string v0, "com.samsung.intent.action.WB_AMR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d7

    const-string v0, "EXTRA_STATE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_5b8

    const-string v4, "AudioService"

    const-string/jumbo v5, "wb_amr swb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "band=SWB"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_5d5

    :cond_5b8
    if-ne v0, v8, :cond_5c8

    const-string v4, "AudioService"

    const-string/jumbo v5, "wb_amr wb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "band=WB"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_5d5

    :cond_5c8
    const-string v4, "AudioService"

    const-string/jumbo v5, "wb_amr nb"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "band=NB"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_5d5
    goto/16 :goto_94a

    :cond_5d7
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_606

    const-string v0, "AudioService"

    const-string v4, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16000(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->unregisterPhoneStateListener(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$16000(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    goto/16 :goto_94a

    :cond_606
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f4

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6f4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.extra.UID"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") is removed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    const/16 v10, 0x64

    if-eqz v9, :cond_6c5

    const-string v9, "com.samsung.android.oneconnect"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65a

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$MultiSoundManager;->resetPinDevice()V

    goto :goto_6ce

    :cond_65a
    iget-object v9, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(IZ)I

    move-result v8

    if-eqz v8, :cond_697

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/audio/AudioService$MultiSoundManager;->removeItem(I)Z

    move-result v8

    if-eqz v8, :cond_697

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x76

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "multisound_app"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->showMultisoundToast()V

    :cond_697
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget v5, v5, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    if-ne v5, v7, :cond_6aa

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iput v6, v5, Lcom/android/server/audio/AudioService;->mIgnoreAudioFocusUid:I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    :cond_6aa
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/samsung/android/audio/AppCategorizer;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$17200(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AppCategorizer;

    move-result-object v5

    if-eqz v5, :cond_6bb

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/samsung/android/audio/AppCategorizer;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$17200(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AppCategorizer;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/audio/AppCategorizer;->removePackage(I)V

    :cond_6bb
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v5

    invoke-virtual {v5, v7, v10}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolume(II)V

    goto :goto_6ce

    :cond_6c5
    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v5

    invoke-virtual {v5, v7, v10}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolume(II)V

    :goto_6ce
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v5, :cond_6d7

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndBroadcastKaraokeInstalled(Ljava/lang/String;Z)V
    invoke-static {v5, v0, v4}, Lcom/android/server/audio/AudioService;->access$17300(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V

    :cond_6d7
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17400(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->delete(I)V

    const-string v4, "com.samsung.android.soundassistant"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6ed

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->clearSoundAssistantSettings()V
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17500(Lcom/android/server/audio/AudioService;)V

    :cond_6ed
    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->unSetSoundSettingEventBroadcastIntent(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/audio/AudioService;->access$17600(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_94a

    :cond_6f4
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.extra.UID"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v7, :cond_741

    if-eq v5, v6, :cond_741

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    array-length v10, v7

    :goto_718
    if-ge v4, v10, :cond_72e

    aget-object v11, v7, v4

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_72c

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_729

    goto :goto_72c

    :cond_729
    add-int/lit8 v4, v4, 0x1

    goto :goto_718

    :cond_72c
    :goto_72c
    const/4 v9, 0x1

    nop

    :cond_72e
    if-nez v9, :cond_741

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v0}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_741

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCategorizer:Lcom/samsung/android/audio/AppCategorizer;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17200(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AppCategorizer;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/audio/AppCategorizer;->putPackage(ILjava/lang/String;)V

    :cond_741
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v4, :cond_74a

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndBroadcastKaraokeInstalled(Ljava/lang/String;Z)V
    invoke-static {v4, v0, v8}, Lcom/android/server/audio/AudioService;->access$17300(Lcom/android/server/audio/AudioService;Ljava/lang/String;Z)V

    :cond_74a
    const-string v4, "com.samsung.android.soundassistant"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_759

    if-eq v5, v6, :cond_759

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->registBackgroundWhitelistForSoundAssistant(I)V
    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->access$17700(Lcom/android/server/audio/AudioService;I)V

    :cond_759
    goto/16 :goto_94a

    :cond_75b
    const-string v0, "android.intent.action.TurnOff_MultiSound"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_792

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x76

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.android.setting.multisound"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "enabled"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/audio/AudioService;->access$6000(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_94a

    :cond_792
    const-string v0, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a1

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearNotification()V

    goto/16 :goto_94a

    :cond_7a1
    const-string v0, "android.intent.action.Headup_Notification_Close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->clearHeadupNotificaton()V

    goto/16 :goto_94a

    :cond_7b0
    const-string v0, "android.intent.action.Headup_Notification_ChangeDevice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d6

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService;->getPriorityDevice(I)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getAddressForDevice(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->clearHeadupNotificaton()V

    goto/16 :goto_94a

    :cond_7d6
    const-string v0, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85d

    const-string/jumbo v0, "persona_id"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v5

    if-eq v5, v9, :cond_85c

    if-eq v5, v7, :cond_85c

    const/4 v7, 0x4

    if-ne v5, v7, :cond_801

    goto :goto_85c

    :cond_801
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; userIdForCurrentAudioFocus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v6, :cond_85a

    if-ne v0, v4, :cond_85a

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-nez v7, :cond_85a

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v10

    const/16 v11, 0x71

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v14, v0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    iget-object v7, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v4

    if-eq v4, v6, :cond_85a

    if-eq v4, v0, :cond_85a

    iget-object v6, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/audio/MediaFocusControl;->notifyOtherTopOfAudioFocusStack()V

    :cond_85a
    goto/16 :goto_94a

    :cond_85c
    :goto_85c
    return-void

    :cond_85d
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8ad

    const-string/jumbo v0, "reason"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_8ab

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17800(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v4

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v4

    if-eqz v4, :cond_8ab

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_8ab

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$12100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/audio/MediaFocusControl;->getGainRequestForCurrentAudioFocus()I

    move-result v12

    packed-switch v12, :pswitch_data_94c

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x71

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v4

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_8ab

    :pswitch_8aa
    return-void

    :cond_8ab
    :goto_8ab
    goto/16 :goto_94a

    :cond_8ad
    const-string v0, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e3

    :try_start_8b5
    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "mono"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/audio/AudioService;->mMonoMode:I
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$17902(Lcom/android/server/audio/AudioService;I)I
    :try_end_8c1
    .catch Ljava/lang/Exception; {:try_start_8b5 .. :try_end_8c1} :catch_8da

    nop

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonoMode:I
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$17900(Lcom/android/server/audio/AudioService;)I

    move-result v4

    # invokes: Lcom/android/server/audio/AudioService;->setMonoMode(I)V
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$18000(Lcom/android/server/audio/AudioService;I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/audio/AudioSettingsHelper;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$18100(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/audio/AudioSettingsHelper;

    move-result-object v0

    const-string/jumbo v4, "mono_audio_db"

    invoke-virtual {v0, v4}, Lcom/samsung/android/audio/AudioSettingsHelper;->removeValue(Ljava/lang/String;)I

    goto :goto_94a

    :catch_8da
    move-exception v0

    const-string v4, "AudioService"

    const-string v5, "Exception:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_8e3
    const-string/jumbo v0, "sec.app.policy.UPDATE.audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f9

    const-string v0, "AudioService"

    const-string v4, "SoundAppPolicy reload white list"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->reloadWhitelist()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$18200(Lcom/android/server/audio/AudioService;)V

    goto :goto_94a

    :cond_8f9
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92d

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$18300(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v0

    if-nez v0, :cond_94a

    iget-object v0, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v4, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$16000(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "AudioService"

    # getter for: Lcom/android/server/audio/AudioService;->GOODCATCH_MODE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$18400()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mGoodCatchStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$18500(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioService;->access$18302(Lcom/android/server/audio/AudioService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string v0, "AudioService"

    const-string v4, "SemGoodCatchManager is created"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94a

    :cond_92d
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94a

    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    if-ne v0, v9, :cond_94a

    iget-object v5, v1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_94a
    :goto_94a
    return-void

    nop

    :pswitch_data_94c
    .packed-switch 0x2
        :pswitch_8aa
        :pswitch_8aa
        :pswitch_8aa
    .end packed-switch
.end method
