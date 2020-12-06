.class Lcom/android/server/am/MARsDBManager$DBHandler;
.super Landroid/os/Handler;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    packed-switch v2, :pswitch_data_22a

    :pswitch_f
    goto/16 :goto_228

    :pswitch_11
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getDefaultWhiteListDBValues()V
    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_228

    :pswitch_18
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const-string v3, "/data/system/ssrm_local_freecess"

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager;->readSysfs(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->updateWhiteListForFreecess()V

    goto/16 :goto_228

    :pswitch_28
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->doVerifyForcedAppStandBy()V
    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$1600(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_228

    :pswitch_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_43

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_43

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->doUpdateDualAppToSMDB(I)V
    invoke-static {v4, v3}, Lcom/android/server/am/MARsDBManager;->access$1500(Lcom/android/server/am/MARsDBManager;I)V

    :cond_43
    goto/16 :goto_228

    :pswitch_45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_69

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "isDataCleared"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v3, :cond_69

    if-eq v4, v8, :cond_69

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDataClearedPackageFromMARsToSM(Ljava/lang/String;IZ)V
    invoke-static {v6, v3, v4, v5}, Lcom/android/server/am/MARsDBManager;->access$1400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;IZ)V

    :cond_69
    goto/16 :goto_228

    :pswitch_6b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_98

    const-string v4, "callee"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "caller"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "isblock"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, "requesttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    move-object v9, v4

    move-object v10, v5

    move v11, v3

    move-wide v12, v6

    # invokes: Lcom/android/server/am/MARsDBManager;->updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/am/MARsDBManager;->access$1300(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_98
    goto/16 :goto_228

    :pswitch_9a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_ab

    const-string v3, "boot"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V
    invoke-static {v4, v3}, Lcom/android/server/am/MARsDBManager;->access$1200(Lcom/android/server/am/MARsDBManager;Z)V

    :cond_ab
    goto/16 :goto_228

    :pswitch_ad
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V
    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$1100(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_228

    :pswitch_b4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_c8

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_c8

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->doDelPkgAsUserToFASDB(I)V
    invoke-static {v4, v3}, Lcom/android/server/am/MARsDBManager;->access$1000(Lcom/android/server/am/MARsDBManager;I)V

    :cond_c8
    goto/16 :goto_228

    :pswitch_ca
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_de

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_de

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->doInsertPkgAsUserToFASDB(ZLjava/util/ArrayList;ZI)V
    invoke-static {v4, v6, v7, v6, v3}, Lcom/android/server/am/MARsDBManager;->access$900(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;ZI)V

    :cond_de
    goto/16 :goto_228

    :pswitch_e0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_fd

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_fd

    if-eq v4, v8, :cond_fd

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->doDeletePkg(Ljava/lang/String;I)V
    invoke-static {v5, v3, v4}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V

    :cond_fd
    goto/16 :goto_228

    :pswitch_ff
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_11c

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_11c

    if-eq v4, v8, :cond_11c

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->doInsertPkg(Ljava/lang/String;I)V
    invoke-static {v5, v3, v4}, Lcom/android/server/am/MARsDBManager;->access$700(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V

    :cond_11c
    goto/16 :goto_228

    :pswitch_11e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_19a

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const-string/jumbo v7, "onCreate"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v3, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    const-string/jumbo v3, "onUpgrade"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v6, :cond_16e

    const-string v6, "MARsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v8, v8, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " --onUpgrade = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " --mDBUpdated = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v8}, Lcom/android/server/am/MARsDBManager;->access$500(Lcom/android/server/am/MARsDBManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16e
    if-eqz v3, :cond_177

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->clearAllPackages()V

    :cond_177
    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v6, v6, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    if-nez v6, :cond_17f

    if-eqz v3, :cond_19a

    :cond_17f
    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getDefaultWhiteListDBValues()V
    invoke-static {v6}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)V

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V
    invoke-static {v6}, Lcom/android/server/am/MARsDBManager;->access$100(Lcom/android/server/am/MARsDBManager;)V

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    if-eqz v6, :cond_19a

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(J)V

    :cond_19a
    goto/16 :goto_228

    :pswitch_19c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_202

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "strUid"

    const-string v8, "0"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "strMode"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v8, "strFasReason"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "strExtras"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v8, "strLevel"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v8, 0x0

    const/16 v20, 0x0

    if-eqz v3, :cond_202

    cmp-long v4, v14, v4

    if-eqz v4, :cond_202

    const/16 v4, 0x59

    new-instance v5, Lcom/android/server/am/MARsDBManager$FASDBValue;

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object v8, v5

    move-object v10, v3

    move-object v11, v6

    move-object/from16 v12, v17

    move-object v13, v7

    move-wide/from16 v21, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    invoke-direct/range {v8 .. v16}, Lcom/android/server/am/MARsDBManager$FASDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$FASDBValue;)V
    invoke-static {v8, v3, v6, v4, v5}, Lcom/android/server/am/MARsDBManager;->access$400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$FASDBValue;)V

    :cond_202
    goto :goto_228

    :pswitch_203
    const/16 v2, 0x1ff

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_21b

    const-string/jumbo v4, "values"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_21b

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updatePkgsToSMDB(ILjava/util/ArrayList;)V
    invoke-static {v5, v2, v4}, Lcom/android/server/am/MARsDBManager;->access$300(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    :cond_21b
    goto :goto_228

    :pswitch_21c
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB(Z)V
    invoke-static {v2, v3}, Lcom/android/server/am/MARsDBManager;->access$200(Lcom/android/server/am/MARsDBManager;Z)V

    goto :goto_228

    :pswitch_222
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V
    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$100(Lcom/android/server/am/MARsDBManager;)V

    nop

    :goto_228
    return-void

    nop

    :pswitch_data_22a
    .packed-switch 0x1
        :pswitch_222
        :pswitch_21c
        :pswitch_203
        :pswitch_19c
        :pswitch_f
        :pswitch_f
        :pswitch_11e
        :pswitch_ff
        :pswitch_e0
        :pswitch_ca
        :pswitch_b4
        :pswitch_ad
        :pswitch_9a
        :pswitch_6b
        :pswitch_45
        :pswitch_2f
        :pswitch_28
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method
