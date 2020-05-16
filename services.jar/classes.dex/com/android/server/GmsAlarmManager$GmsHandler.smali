.class Lcom/android/server/GmsAlarmManager$GmsHandler;
.super Landroid/os/Handler;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_354

    goto/16 :goto_352

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkForceReset()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3900(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->forceWakeLockBlackListReset()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$4000(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_352

    :pswitch_21
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mUserEnable:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1400(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    const-wide/16 v5, 0x2710

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_352

    :cond_3f
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_352

    :pswitch_53
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkOnceMultiUserid()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3800(Lcom/android/server/GmsAlarmManager;)V

    goto/16 :goto_352

    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/GmsAlarmManager;->enableMultiUserGmsRestriction(I)V
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$3600(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_352

    :pswitch_63
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/GmsAlarmManager;->disableMultiUserGmsRestriction(I)V
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$3700(Lcom/android/server/GmsAlarmManager;I)V

    goto/16 :goto_352

    :pswitch_6c
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->updateSCPMParametersFromDB()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3500(Lcom/android/server/GmsAlarmManager;)V

    goto/16 :goto_352

    :pswitch_73
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string v1, "com.android.server.gmsalarmmanager"

    const-string v2, "GNET"

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # invokes: Lcom/android/server/GmsAlarmManager;->bigData(J)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/server/GmsAlarmManager;->access$3300(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->access$3400(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/32 v1, 0x5265c00

    # invokes: Lcom/android/server/GmsAlarmManager;->sendInsertLogDelay(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/GmsAlarmManager;->access$200(Lcom/android/server/GmsAlarmManager;J)V

    goto/16 :goto_352

    :pswitch_90
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "GmsAlarmManager"

    const-string v1, "MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNetByUncharging()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_af
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2902(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_352

    :pswitch_b6
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string v0, "GmsAlarmManager"

    const-string v1, "MSG_ENABLE_GMS_NETWORK_BY_CHARGING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNetByCharging()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;)V

    :cond_da
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2902(Lcom/android/server/GmsAlarmManager;Z)Z

    goto/16 :goto_352

    :pswitch_e1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$1302(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    :cond_f3
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_fc

    return-void

    :cond_fc
    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ENABLE_GMS_NETWORK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2600(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mVendingUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2700(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$2800(Lcom/android/server/GmsAlarmManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_144

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecEnableNet()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_144
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$3200(Lcom/android/server/GmsAlarmManager;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$3100(Lcom/android/server/GmsAlarmManager;Z)V

    goto/16 :goto_352

    :pswitch_15a
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$1302(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    :cond_16c
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_175

    return-void

    :cond_175
    const-string v0, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_DISABLE_GMS_NETWORK:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2600(Lcom/android/server/GmsAlarmManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mVendingUid:I
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2700(Lcom/android/server/GmsAlarmManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2800(Lcom/android/server/GmsAlarmManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isCharging:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$2900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_1bd

    invoke-static {}, Lcom/android/server/EventLogTags;->writeSecDisableNet()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V
    invoke-static {v0, v3}, Lcom/android/server/GmsAlarmManager;->access$3000(Lcom/android/server/GmsAlarmManager;Z)V

    :cond_1bd
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$2502(Lcom/android/server/GmsAlarmManager;Z)Z

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$2400(Lcom/android/server/GmsAlarmManager;I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V
    invoke-static {v0, v4}, Lcom/android/server/GmsAlarmManager;->access$3100(Lcom/android/server/GmsAlarmManager;Z)V

    goto/16 :goto_352

    :pswitch_1ce
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mUserEnable:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1400(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_1d7

    return-void

    :cond_1d7
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v5, "receiver delay check network message"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->isWifiConnected()Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1500(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v5, 0xdbba0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_209

    :cond_1fd
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v0

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_209
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_22a

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_22a

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$1300(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    if-nez v0, :cond_22a

    const-string v0, "GmsAlarmManager"

    const-string v1, "Screen is off,skip check"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_352

    :cond_22a
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isChinaMode:Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1200(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    const/16 v6, 0xc8

    if-eqz v5, :cond_261

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->isChnSimOrNoSim()Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_261

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_25b

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v7, "https://www.google.com/"

    # invokes: Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;I)Z
    invoke-static {v5, v7, v6}, Lcom/android/server/GmsAlarmManager;->access$1800(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_25b

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v5, v4}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_295

    :cond_25b
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v5, v3}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_295

    :cond_261
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1900(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_290

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->isChnSim()Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$2000(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_290

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_28a

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v7, "https://www.google.com/"

    # invokes: Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;I)Z
    invoke-static {v5, v7, v6}, Lcom/android/server/GmsAlarmManager;->access$1800(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_28a

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v5, v4}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_295

    :cond_28a
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v5, v3}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    goto :goto_295

    :cond_290
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v5, v4}, Lcom/android/server/GmsAlarmManager;->access$802(Lcom/android/server/GmsAlarmManager;Z)Z

    :goto_295
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$1700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_2d4

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v5}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v5

    if-eqz v5, :cond_2ba

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2e8

    :cond_2ba
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v4, v4, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-virtual {v6, v5}, Lcom/android/server/GmsAlarmManager;->parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V

    goto :goto_2c2

    :cond_2d4
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/GmsAlarmManager;->access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_2e8
    :goto_2e8
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z
    invoke-static {v4, v3}, Lcom/android/server/GmsAlarmManager;->access$702(Lcom/android/server/GmsAlarmManager;Z)Z

    if-eqz v0, :cond_2fd

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    goto :goto_30a

    :cond_2fd
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :goto_30a
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v3

    if-nez v3, :cond_332

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_352

    :cond_332
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$GmsHandler;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    nop

    :goto_352
    return-void

    nop

    :pswitch_data_354
    .packed-switch 0x1
        :pswitch_1ce
        :pswitch_15a
        :pswitch_e1
        :pswitch_b6
        :pswitch_90
        :pswitch_73
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_53
        :pswitch_21
        :pswitch_b
    .end packed-switch
.end method
