.class Lcom/android/server/audio/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/16 v0, 0xb

    const/4 v4, 0x0

    if-eq v2, v0, :cond_177

    const/16 v0, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v0, :cond_119

    packed-switch v2, :pswitch_data_1aa

    goto/16 :goto_1a8

    :pswitch_16
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    :try_start_1d
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_72

    :try_start_24
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothA2dp;

    # setter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4102(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    if-ne v15, v5, :cond_50

    goto :goto_51

    :cond_50
    move v6, v4

    :goto_51
    move v5, v6

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v10, 0x80

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I
    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x66

    const/4 v14, -0x1

    move v13, v15

    move v4, v15

    move-object v15, v9

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    :cond_6b
    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_24 .. :try_end_6c} :catchall_6f

    :try_start_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_72

    goto/16 :goto_1a8

    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v8
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0

    :catchall_72
    move-exception v0

    monitor-exit v7
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_72

    throw v0

    :pswitch_75
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    :try_start_7c
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v5, v3

    check-cast v5, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    # invokes: Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkScoAudioState()V
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v6, :cond_b4

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v5, :cond_113

    :cond_b4
    const/4 v0, 0x0

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_107

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v6, :cond_e8

    if-eq v8, v5, :cond_c8

    goto :goto_107

    :cond_c8
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    # invokes: Lcom/android/server/audio/AudioService;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3800(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_107

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x5

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_107

    :cond_e8
    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v8

    # invokes: Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v5, v6, v8}, Lcom/android/server/audio/AudioService;->access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v5

    move v0, v5

    if-eqz v0, :cond_107

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x3

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    :cond_107
    :goto_107
    if-nez v0, :cond_113

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    iget-object v5, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v5, v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    :cond_113
    monitor-exit v7

    goto/16 :goto_1a8

    :catchall_116
    move-exception v0

    monitor-exit v7
    :try_end_118
    .catchall {:try_start_7c .. :try_end_118} :catchall_116

    throw v0

    :cond_119
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v7

    monitor-enter v7

    :try_start_120
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_127
    .catchall {:try_start_120 .. :try_end_127} :catchall_174

    :try_start_127
    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    move-object v9, v3

    check-cast v9, Landroid/bluetooth/BluetoothHearingAid;

    # setter for: Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_16e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$4500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    move v15, v10

    if-ne v15, v5, :cond_153

    goto :goto_154

    :cond_153
    move v6, v4

    :goto_154
    move v5, v6

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    const/high16 v10, 0x8000000

    # invokes: Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I
    invoke-static {v6, v10, v5, v4}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;III)I

    move-result v16

    iget-object v10, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v11

    const/16 v12, 0x69

    const/4 v14, 0x0

    move v13, v15

    move v4, v15

    move-object v15, v9

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    :cond_16e
    monitor-exit v8
    :try_end_16f
    .catchall {:try_start_127 .. :try_end_16f} :catchall_171

    :try_start_16f
    monitor-exit v7
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_174

    goto :goto_1a8

    :catchall_171
    move-exception v0

    :try_start_172
    monitor-exit v8
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    :try_start_173
    throw v0

    :catchall_174
    move-exception v0

    monitor-exit v7
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_174

    throw v0

    :cond_177
    invoke-interface/range {p2 .. p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v13

    monitor-enter v13

    :try_start_18f
    invoke-interface {v3, v4}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    iget-object v6, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v1, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0x65

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v11, v4

    # invokes: Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    monitor-exit v13

    goto :goto_1a8

    :catchall_1a5
    move-exception v0

    monitor-exit v13
    :try_end_1a7
    .catchall {:try_start_18f .. :try_end_1a7} :catchall_1a5

    throw v0

    :cond_1a8
    :goto_1a8
    return-void

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_75
        :pswitch_16
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_18

    packed-switch p1, :pswitch_data_26

    goto :goto_24

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    goto :goto_24

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    goto :goto_24

    :cond_18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$3;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    nop

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method
