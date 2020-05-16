.class Lcom/android/server/display/WifiDisplayController$36;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(ILjava/lang/String;)V
    .registers 11

    const/4 v0, 0x3

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_396

    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotify Error,  msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_395

    :sswitch_21
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    onNotify received : NOTIFY_NOT_DEFINED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayNotifyEvent(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayController;->access$4300(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)V

    goto/16 :goto_395

    :sswitch_3e
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_SWTICH_TCP_FOR_DEMO"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-eq v0, v3, :cond_395

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$6302(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v1, "tcp"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_395

    :sswitch_60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY_GET_PROCESS_NAME_BY_PID pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->getProcessNameByPid(I)V
    invoke-static {v1, v0}, Lcom/android/server/display/WifiDisplayController;->access$7900(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_395

    :sswitch_81
    :try_start_81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, "minVol"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$7202(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, "maxVol"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$7302(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v3, "curVol"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$7402(Lcom/android/server/display/WifiDisplayController;I)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, "isMute"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z
    invoke-static {v2, v3}, Lcom/android/server/display/WifiDisplayController;->access$7502(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_b5} :catch_b6

    goto :goto_c0

    :catch_b6
    move-exception v0

    const-string v2, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "minVol"

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "maxVol"

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "curVol"

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "isMute"

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeChangedEvent(ILandroid/os/Bundle;)V
    invoke-static {v2, v1, v0}, Lcom/android/server/display/WifiDisplayController;->access$7600(Lcom/android/server/display/WifiDisplayController;ILandroid/os/Bundle;)V

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS, mDisplayMinVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMinVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDisplayMaxVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayMaxVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDisplayCurrentVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisplayCurrentVolume:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsDisplayVolumeMuted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeMuted:Z
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$7500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_395

    :sswitch_141
    :try_start_141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isSupportDisplayVolumeControl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_SUPPORT, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    if-eq v2, v1, :cond_175

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportDisplayVolumeControl:Z
    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayController;->access$402(Lcom/android/server/display/WifiDisplayController;Z)Z

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$7100(Lcom/android/server/display/WifiDisplayController;)V
    :try_end_175
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_175} :catch_177

    :cond_175
    goto/16 :goto_395

    :catch_177
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_395

    :sswitch_183
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->wakeUpScreen()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$4100(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_395

    :sswitch_191
    :try_start_191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "isSupportInitiatedMirroring"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$4702(Lcom/android/server/display/WifiDisplayController;Z)Z

    const-string v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    onNotify received : NOTIFY_SUPPORT_INITIATE_MIRRORING = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catch Lorg/json/JSONException; {:try_start_191 .. :try_end_1be} :catch_1c0

    goto/16 :goto_395

    :catch_1c0
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_395

    :sswitch_1cc
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_WEAK_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x103012b

    invoke-direct {v0, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x1040b3c

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x10409de

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_395

    :sswitch_208
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    if-nez v4, :cond_229

    const/16 v1, 0x8

    nop

    :cond_229
    const/4 v6, 0x6

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendRemoteDisplayStateChangeEvent(II)V
    invoke-static {v5, v1, v6}, Lcom/android/server/display/WifiDisplayController;->access$7800(Lcom/android/server/display/WifiDisplayController;II)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.ROTATION_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "rotation"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq v4, v3, :cond_255

    if-ne v4, v0, :cond_24a

    goto :goto_255

    :cond_24a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_395

    :cond_255
    :goto_255
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/display/WFDUibcManager;->setPortraitMode(Z)V

    goto/16 :goto_395

    :sswitch_260
    :try_start_260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "UibcAvailable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UibcVersion"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", UibcVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3, v1}, Lcom/android/server/display/WifiDisplayController;->startUIBCVirtualSoftkey(Z)V

    if-eqz v1, :cond_2a9

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/WFDUibcManager;->start()Z

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/display/WFDUibcManager;->setSinkUIBCVersion(I)V

    goto :goto_2b2

    :cond_2a9
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/android/server/display/WFDUibcManager;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WFDUibcManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/WFDUibcManager;->stop()Z
    :try_end_2b2
    .catch Lorg/json/JSONException; {:try_start_260 .. :try_end_2b2} :catch_2b4

    :goto_2b2
    goto/16 :goto_395

    :catch_2b4
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_395

    :sswitch_2c0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    rem-int/lit8 v4, v1, 0x2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v2, v4}, Lcom/android/server/display/WifiDisplayController;->access$6302(Lcom/android/server/display/WifiDisplayController;I)I

    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-ne v5, v3, :cond_2e2

    const-string v5, "TCP"

    goto :goto_2e4

    :cond_2e2
    const-string v5, "UDP"

    :goto_2e4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mTransportMode:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    if-ne v2, v3, :cond_33c

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mStreamVolume:I
    invoke-static {v4, v0}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;I)I

    const-string v0, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send command: current stream vol : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mStreamVolume:I
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v4, "vol"

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mStreamVolume:I
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33c
    if-gt v1, v3, :cond_395

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->sendBroadcastTransportMode()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_395

    :sswitch_344
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_395

    :sswitch_35e
    const-string v0, "WifiDisplayController"

    const-string v1, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_395

    :sswitch_378
    :try_start_378
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "renameAvailable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    # setter for: Lcom/android/server/display/WifiDisplayController;->mRenameCapablity:Z
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->access$7702(Lcom/android/server/display/WifiDisplayController;Z)Z
    :try_end_389
    .catch Lorg/json/JSONException; {:try_start_378 .. :try_end_389} :catch_38a

    goto :goto_395

    :catch_38a
    move-exception v0

    const-string v1, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_395
    :goto_395
    return-void

    :sswitch_data_396
    .sparse-switch
        0x1 -> :sswitch_378
        0x2 -> :sswitch_35e
        0x3 -> :sswitch_344
        0x7 -> :sswitch_2c0
        0x9 -> :sswitch_260
        0xa -> :sswitch_208
        0x1e -> :sswitch_1cc
        0x28 -> :sswitch_191
        0x32 -> :sswitch_183
        0x3c -> :sswitch_141
        0x46 -> :sswitch_81
        0x50 -> :sswitch_60
        0x5a -> :sswitch_3e
        0x64 -> :sswitch_21
    .end sparse-switch
.end method
