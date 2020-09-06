.class final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0xbb8

    packed-switch v3, :pswitch_data_23a

    goto/16 :goto_239

    :pswitch_c
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->sendData()V

    goto/16 :goto_239

    :pswitch_11
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-nez v3, :cond_19

    goto/16 :goto_239

    :cond_19
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "launchtime"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "pkg"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Launcher App Execution"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_96

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    if-eqz v1, :cond_8f

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_8f

    if-lez v4, :cond_56

    invoke-virtual {v1, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->updateExecTime(I)V

    :cond_56
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSeqNum()V

    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v8

    invoke-virtual {v8, v1, v4}, Lcom/android/server/am/Pageboost$PageboostPredictor;->CheckPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v8

    if-eqz v8, :cond_81

    iget v8, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    add-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prefetch Hit! : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_81
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getVramdiskState()I

    move-result v8

    if-lez v8, :cond_88

    const/4 v6, 0x1

    :cond_88
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v1, v9}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    :cond_8f
    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/Pageboost$PageboostPredictor;->FinalizePredict()V

    :cond_96
    if-eqz v1, :cond_f5

    if-lez v4, :cond_c7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppEntry,"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto :goto_f5

    :cond_c7
    if-nez v4, :cond_f5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppReEntry,"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    :cond_f5
    :goto_f5
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()Z

    move-result v8

    if-eqz v8, :cond_239

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v8

    if-eqz v8, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v8

    if-eqz v8, :cond_239

    if-eqz v1, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v8

    if-nez v4, :cond_110

    goto :goto_111

    :cond_110
    const/4 v9, 0x0

    :goto_111
    invoke-virtual {v8, v1, v9}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)Z

    goto/16 :goto_239

    :pswitch_116
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->HaltPredict()V

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()Z

    move-result v4

    if-eqz v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v4

    if-eqz v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    if-eqz v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    # invokes: Lcom/android/server/am/Pageboost$Vramdisk;->checkMlockLimit()V
    invoke-static {v4}, Lcom/android/server/am/Pageboost$Vramdisk;->access$2500(Lcom/android/server/am/Pageboost$Vramdisk;)V

    goto/16 :goto_239

    :pswitch_14c
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->HaltPredict()V

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2300()Z

    move-result v4

    if-eqz v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v4

    if-eqz v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    if-eqz v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    # invokes: Lcom/android/server/am/Pageboost$Vramdisk;->checkMlockLimit()V
    invoke-static {v4}, Lcom/android/server/am/Pageboost$Vramdisk;->access$2500(Lcom/android/server/am/Pageboost$Vramdisk;)V

    goto/16 :goto_239

    :pswitch_182
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_239

    # invokes: Lcom/android/server/am/Pageboost;->removePackage(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/Pageboost;->access$2800(Ljava/lang/String;)V

    goto/16 :goto_239

    :pswitch_18d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_239

    # invokes: Lcom/android/server/am/Pageboost;->addPackage(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/Pageboost;->access$2700(Ljava/lang/String;)V

    goto/16 :goto_239

    :pswitch_198
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-nez v3, :cond_1a0

    goto/16 :goto_239

    :cond_1a0
    # getter for: Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2900()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->StoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->keepLastData()V

    goto/16 :goto_239

    :pswitch_1b0
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2000()Z

    move-result v3

    if-nez v3, :cond_1b8

    goto/16 :goto_239

    :cond_1b8
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-nez v3, :cond_1c0

    goto/16 :goto_239

    :cond_1c0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "capturing App IO"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/server/am/Pageboost;->GetPidFromPackageName(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/android/server/am/Pageboost;->access$2200(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_239

    invoke-static {v1, v4}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_239

    :pswitch_1e5
    # invokes: Lcom/android/server/am/Pageboost;->realUpdatePackages()V
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2600()V

    goto :goto_239

    :pswitch_1e9
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2000()Z

    move-result v3

    if-nez v3, :cond_1f0

    goto :goto_239

    :cond_1f0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher Page Up"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v3

    if-eqz v3, :cond_239

    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    # getter for: Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostPredictor;->MemPreparation()V

    goto :goto_239

    :pswitch_213
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2000()Z

    move-result v3

    if-nez v3, :cond_21a

    goto :goto_239

    :cond_21a
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->HaltPredict()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    # getter for: Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_239

    :pswitch_235
    # invokes: Lcom/android/server/am/Pageboost;->DelayedInitPageboost()V
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()V

    nop

    :cond_239
    :goto_239
    return-void

    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_235
        :pswitch_213
        :pswitch_1e9
        :pswitch_1e5
        :pswitch_1b0
        :pswitch_198
        :pswitch_18d
        :pswitch_182
        :pswitch_14c
        :pswitch_116
        :pswitch_11
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method
