.class public Lcom/android/server/am/MARsHandler$MainHandler;
.super Landroid/os/Handler;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field extras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    packed-switch v2, :pswitch_data_468

    goto/16 :goto_465

    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_465

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_465

    if-eq v4, v6, :cond_465

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->handleFrozenState(Ljava/lang/String;I)V

    goto/16 :goto_465

    :pswitch_30
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4d

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->unfreezeAllPackages(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager;->resetFreecessStateForLcdOnFreeze()V

    :cond_4d
    goto/16 :goto_465

    :pswitch_4f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6e

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v4, :cond_6e

    if-eq v5, v6, :cond_6e

    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v4, v5, v3}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    :cond_6e
    goto/16 :goto_465

    :pswitch_70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_e0

    const-string/jumbo v7, "packageName"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "userId"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "uid"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "appSyncFlag"

    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "packetMonitorFlag"

    invoke-virtual {v2, v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "disableWakelockFlag"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "checkFrozenBinder"

    invoke-virtual {v2, v12, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v13, "isLcdOnTrigger"

    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eq v9, v6, :cond_b5

    iget-object v14, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v14, v14, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14, v5, v7, v9}, Lcom/android/server/am/MARsPolicyManager;->updateAppSyncStatus(Ljava/lang/String;II)V

    :cond_b5
    packed-switch v10, :pswitch_data_498

    goto :goto_ca

    :pswitch_b9
    iget-object v14, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v14, v14, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14, v8, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->configPacketMonitoredUid(ILjava/lang/String;I)V

    goto :goto_ca

    :pswitch_c1
    iget-object v14, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v14, v14, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14, v8}, Lcom/android/server/am/MARsPolicyManager;->deletePacketMonitoredUid(I)V

    goto :goto_ca

    :pswitch_c9
    nop

    :goto_ca
    if-eq v11, v6, :cond_d7

    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-ne v11, v3, :cond_d3

    goto :goto_d4

    :cond_d3
    move v3, v4

    :goto_d4
    invoke-virtual {v6, v5, v8, v3, v13}, Lcom/android/server/am/MARsPolicyManager;->setWakeLockEnableDisable(Ljava/lang/String;IZZ)V

    :cond_d7
    if-eqz v12, :cond_e0

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v3, v3, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v8}, Lcom/android/server/am/MARsPolicyManager;->checkFrozenBinder(I)V

    :cond_e0
    goto/16 :goto_465

    :pswitch_e2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_138

    const-string/jumbo v3, "packageName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "level"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "activityCallCnt"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v21

    const-string/jumbo v5, "serviceCallCnt"

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v23

    const-string/jumbo v5, "providerCallCnt"

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v25

    const-string v5, "broadcastCallCnt"

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v27

    const-string v5, "batteryUsage"

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string/jumbo v7, "exTras"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move-object v8, v3

    move v9, v4

    move-wide/from16 v10, v21

    move-wide/from16 v12, v23

    move-wide/from16 v14, v25

    move-wide/from16 v16, v27

    move-wide/from16 v18, v5

    move-object/from16 v20, v29

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/am/MARsPolicyManager;->sendUsageInfoFromMARstoHQM(Ljava/lang/String;IDDDDDLjava/lang/String;)V

    :cond_138
    goto/16 :goto_465

    :pswitch_13a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_157

    const-string/jumbo v3, "packageName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->freezeBgPackage(Ljava/lang/String;I)V

    :cond_157
    goto/16 :goto_465

    :pswitch_159
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v2, :cond_165

    const-string v2, "MARsHandler"

    const-string/jumbo v3, "handle MARS_MH_UIDIDLE_TRIGGER_MSG...."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_180

    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->triggerLcdOnAction(ILjava/lang/String;)V

    :cond_180
    goto/16 :goto_465

    :pswitch_182
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1b4

    const-string/jumbo v3, "packageName"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "userId"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "isDelay"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v6, "reason"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x2

    move-object v9, v6

    move-object v10, v3

    move v11, v5

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/MARsPolicyManager;->freeCessStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_1b4
    goto/16 :goto_465

    :pswitch_1b6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1e8

    const-string/jumbo v3, "packageName"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "userId"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "isDelay"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v6, "reason"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v8, 0x1

    move-object v9, v6

    move-object v10, v3

    move v11, v5

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/MARsPolicyManager;->freeCessStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_1e8
    goto/16 :goto_465

    :pswitch_1ea
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_210

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "uid"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "mode"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_210

    if-eq v5, v6, :cond_210

    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->updateFasState(Ljava/lang/String;II)V

    :cond_210
    goto/16 :goto_465

    :pswitch_212
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-nez v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    const/4 v3, 0x4

    const-string v4, "Freecess Repeat -- 1min"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v2}, Lcom/android/server/am/MARsHandler;->sendFreecessRepeatMsgToMainHandler()V

    goto/16 :goto_465

    :pswitch_22b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "policy"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "packageVersion"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "userId"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "skipReason"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v8, "caller"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "hostingType"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v8, "componentName"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object v15, v5

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/MARsPolicyManager;->sendBigDataInfoFromMARstoHQM(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_465

    :pswitch_28f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "uid"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v2, :cond_2b6

    if-eq v3, v6, :cond_2b6

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelJobSchedulerPackage(Ljava/lang/String;I)V

    :cond_2b6
    goto/16 :goto_465

    :pswitch_2b8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "pkgName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "userId"

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->onNotificationBarClicked(Ljava/lang/String;I)V

    goto/16 :goto_465

    :pswitch_2e7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "pkgName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "userId"

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->onAlertToastWindowStarted(Ljava/lang/String;I)V

    goto/16 :goto_465

    :pswitch_316
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v4, "changedTime"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForTimeChanged(J)V

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->onUpdatePackages(Z)V

    goto/16 :goto_465

    :pswitch_338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "pkgName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "isReInstall"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "uid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->onPackageStatusChange(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_465

    :pswitch_372
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "packageList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "policy-num"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "userId"

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v2, :cond_3b8

    nop

    :goto_3a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3bf

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v6, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a2

    :cond_3b8
    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(I)V

    :cond_3bf
    goto/16 :goto_465

    :pswitch_3c1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "packageList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "policy-num"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "trigger-reason"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "userId"

    iget-object v7, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v7, v7, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x9

    if-ne v3, v6, :cond_405

    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v2}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForGamePolicy(Ljava/util/ArrayList;)V

    goto :goto_41c

    :cond_405
    if-eqz v2, :cond_41c

    packed-switch v3, :pswitch_data_4a2

    if-eqz v3, :cond_41c

    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V

    goto :goto_41c

    :pswitch_414
    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v6, v6, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v2, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->updateSpecificPolicyTargetPackages(Ljava/util/ArrayList;II)V

    nop

    :cond_41c
    :goto_41c
    goto :goto_465

    :pswitch_41d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_465

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "policy-num"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "emergencyKillForce"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_442

    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v4, v4, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForMemoryNotEnough(IZ)V

    :cond_442
    goto :goto_465

    :pswitch_443
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v2, :cond_44f

    const-string v2, "MARsHandler"

    const-string/jumbo v3, "handle MARS_MH_TRIGGER_POLICY_MSG...."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    goto :goto_465

    :pswitch_45d
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v2, v2, Lcom/android/server/am/MARsHandler;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPolicyManager;->onUpdatePackages(Z)V

    nop

    :cond_465
    :goto_465
    return-void

    nop

    nop

    :pswitch_data_468
    .packed-switch 0x1
        :pswitch_45d
        :pswitch_443
        :pswitch_41d
        :pswitch_3c1
        :pswitch_372
        :pswitch_338
        :pswitch_316
        :pswitch_2e7
        :pswitch_2b8
        :pswitch_28f
        :pswitch_22b
        :pswitch_212
        :pswitch_1ea
        :pswitch_1b6
        :pswitch_182
        :pswitch_159
        :pswitch_13a
        :pswitch_e2
        :pswitch_70
        :pswitch_4f
        :pswitch_30
        :pswitch_f
    .end packed-switch

    :pswitch_data_498
    .packed-switch -0x1
        :pswitch_c9
        :pswitch_c1
        :pswitch_b9
    .end packed-switch

    :pswitch_data_4a2
    .packed-switch 0x5
        :pswitch_414
        :pswitch_414
    .end packed-switch
.end method
