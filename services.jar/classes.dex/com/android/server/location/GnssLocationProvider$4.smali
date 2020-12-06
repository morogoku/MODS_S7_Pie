.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive broadcast intent, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->startNavigating()V
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1100(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_e6

    :cond_2d
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->hibernate()V
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1200(Lcom/android/server/location/GnssLocationProvider;)V

    goto/16 :goto_e6

    :cond_3c
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v1, v1, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mImsRegistered:Z
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1400(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_e6

    :cond_59
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$1500(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1400(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_e6

    :cond_6e
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v1, v1, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mImsRegistered:Z
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1600(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_e6

    :cond_8a
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$1500(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->extension_checkWapPushMsg(Z)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1600(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_e6

    :cond_9e
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    goto :goto_e1

    :cond_bf
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/server/location/GnssLocationProvider;->access$1800(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto :goto_e6

    :cond_cd
    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v1, v1, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->getImsState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GnssLocationProvider;->access$1900(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Intent;)V

    goto :goto_e6

    :cond_e1
    :goto_e1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1700(Lcom/android/server/location/GnssLocationProvider;)V

    :cond_e6
    :goto_e6
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$1500(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/location/GnssLocationProvider;->extension_mBroadcastReceiver(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v2, v2, Lcom/android/server/location/GnssLocationProvider;->mIzatServiceEnabled:Z

    if-nez v2, :cond_126

    const-string/jumbo v2, "result_mask"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_126

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # getter for: Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z
    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$1500(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/location/GnssLocationProvider;->extension_nativeInitForSuplNI(Z)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->requestSetID(I)V
    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2000(Lcom/android/server/location/GnssLocationProvider;I)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const-string/jumbo v3, "packet_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "packet_length"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/server/location/GnssLocationProvider;->native_agps_ni_message([BI)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->access$2100(Lcom/android/server/location/GnssLocationProvider;[BI)V

    :cond_126
    return-void
.end method
