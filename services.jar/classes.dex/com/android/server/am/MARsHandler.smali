.class public Lcom/android/server/am/MARsHandler;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsHandler$MainHandler;,
        Lcom/android/server/am/MARsHandler$MainThread;
    }
.end annotation


# static fields
.field static final MARS_MH_ALERT_TOAST_WIN_MSG:I = 0x8

.field static final MARS_MH_ARES_MEMORY_NOT_ENOUGH_MSG:I = 0x3

.field static final MARS_MH_AUTO_DISABED_APP_STATE_CHANGED_MSG:I = 0x14

.field static final MARS_MH_BIGDATA_SEND_TO_HQM_MSG:I = 0xb

.field static final MARS_MH_CALL_SETMODE_MSG:I = 0xd

.field static final MARS_MH_CANCEL_JOB_SCHEDULER_MSG:I = 0xa

.field static final MARS_MH_CANCEL_POLICY_MSG:I = 0x5

.field static final MARS_MH_FREECESS_REPEAT_MSG:I = 0xc

.field static final MARS_MH_FREECESS_SETTLEMENT_PKG_MSG:I = 0x13

.field static final MARS_MH_FREEZEABLE_TRIGGER_MSG:I = 0xe

.field static final MARS_MH_FROZEN_STATE_MSG:I = 0x16

.field static final MARS_MH_FROZEN_TRIGGER_MSG:I = 0xf

.field static final MARS_MH_LCD_ON_FREEZE_MSG:I = 0x11

.field static final MARS_MH_NOTI_BAR_CLICKED_MSG:I = 0x9

.field static final MARS_MH_PACKAGE_STATUS_CHANGED_MSG:I = 0x6

.field static final MARS_MH_RESET_FREECESS_STATE_MSG:I = 0x15

.field static final MARS_MH_RUN_POLICY_SPECIFIC_PKG_MSG:I = 0x4

.field static final MARS_MH_TIME_CHANGED_MSG:I = 0x7

.field static final MARS_MH_TRIGGER_POLICY_MSG:I = 0x2

.field static final MARS_MH_UIDIDLE_TRIGGER_MSG:I = 0x10

.field static final MARS_MH_UPDATE_PACKAGES_MSG:I = 0x1

.field static final MARS_MH_USAGEINFO_SEND_TO_HQM_MSG:I = 0x12

.field static final TAG:Ljava/lang/String; = "MARsHandler"


# instance fields
.field mContext:Landroid/content/Context;

.field public mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/MARsHandler$MainThread;

    const-string v1, "MARsMainThread"

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsHandler$MainThread;-><init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler$MainThread;->start()V

    return-void
.end method


# virtual methods
.method RemoveFreecessRepeatMsg()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    return-void
.end method

.method removeBgTriggerMsg()V
    .registers 3

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v0, :cond_c

    const-string v0, "MARsHandler"

    const-string/jumbo v1, "removeBgTriggerMsg...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    return-void
.end method

.method removeBgTriggerMsgByObj(ILjava/lang/Object;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v0, :cond_23

    const-string v0, "MARsHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeBgTriggerMsgByObj....what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method sendAREsMemoryNotEnoughMsgToMainHandler(IZ)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "policy-num"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "emergencyKillForce"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAlertToastWindowMsgToMainHandler(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAutoDisabledAppStateChanged(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendBgTriggerToMainHandler(ILjava/lang/String;IZLjava/lang/String;)V
    .registers 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "isDelay"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ne v2, p1, :cond_29

    iget-object v3, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_33

    :cond_29
    const/16 v3, 0xf

    if-ne v3, p1, :cond_33

    iget-object v4, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :cond_33
    :goto_33
    if-eqz v1, :cond_38

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_38
    if-eqz p4, :cond_4a

    iget-object v3, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4f

    :cond_4a
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method sendBigDataInfoFromMARs(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageVersion"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "skipReason"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caller"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "hostingType"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "componentName"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendCallSetModeMsg(Ljava/lang/String;II)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_30

    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :goto_30
    return-void
.end method

.method sendCancelJobPkgMsgToMainHandler(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "policy-num"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendFreecessRepeatMsgToMainHandler()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method sendFreecessSettlementToMainHandler(Ljava/lang/String;IIIIIZZ)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "appSyncFlag"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packetMonitorFlag"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "disableWakelockFlag"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "checkFrozenBinder"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isLcdOnTrigger"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendFrozenStateMsgToMainHandler(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendLcdOnFreezeTriggerToMainHandler(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendNotiBarClickedMsgToMainHandler(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendPkgStatusChangedMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isReInstall"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendResetFreecessStateToMainHandler(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->removeMessages(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v1, "policy-num"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "trigger-reason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendTimeChangedMsgToMainHandler(J)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "changedTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "policy-num"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "trigger-reason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendUidIdleTriggerToMainHandler(ILjava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/32 v3, 0xfde8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4d

    :cond_2d
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v2, :cond_4d

    const-string v2, "MARsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already hasMessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method sendUpdatePkgMsgToMainHandler(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsHandler$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_21

    :cond_15
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v1, :cond_21

    const-string v1, "MARsHandler"

    const-string/jumbo v2, "sendUpdatePkgMsgToMainHandler already hasMessage"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    return-void
.end method

.method sendUsageInfoFromMARs(Ljava/lang/String;IDDDDDLjava/lang/String;)V
    .registers 31

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "level"

    move/from16 v4, p2

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "activityCallCnt"

    move-wide/from16 v5, p3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v2, "serviceCallCnt"

    move-wide/from16 v7, p5

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v2, "providerCallCnt"

    move-wide/from16 v9, p7

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "broadcastCallCnt"

    move-wide/from16 v11, p9

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "batteryUsage"

    move-wide/from16 v13, p11

    invoke-virtual {v1, v2, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v2, "exTras"

    move-object/from16 v15, p13

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsHandler$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
