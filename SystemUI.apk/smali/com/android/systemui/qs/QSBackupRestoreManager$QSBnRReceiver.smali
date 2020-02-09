.class public Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QSBnRReceiver"
.end annotation


# instance fields
.field private mBackupThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v0, "QSBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive ( action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_3

    :try_start_0
    const-string v0, "SAVE_PATH"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "SOURCE"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "SESSION_KEY"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "EXPORT_SESSION_TIME"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v0, "ACTION"

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "SECURITY_LEVEL"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_QUICKPANEL2"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :try_start_1
    iget-object v1, v15, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, v15, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QSBackupRestoreManager"

    const-string/jumbo v2, "stop backup working thread for quickpanel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v15, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    const-class v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v18, "com.samsung.android.intent.action.RESPONSE_BACKUP_QUICKPANEL2"

    const/16 v19, 0x1

    sget-object v20, Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;

    const/16 v21, 0x0

    move-object/from16 v17, p1

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/qs/QSBackupRestoreManager;->access$000(Lcom/android/systemui/qs/QSBackupRestoreManager;Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/qs/QSBackupRestoreManager$ERR_CODE;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v3, v13

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v13

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;

    move-object v1, v9

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v5, v22

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$1;-><init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, v15, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    iget-object v1, v15, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_QUICKPANEL2"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v2

    move-object v9, v15

    move-object/from16 v10, p1

    move-object v11, v4

    move-object/from16 v12, v22

    move-object v3, v13

    move v13, v6

    move-object v14, v7

    :try_start_3
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver$2;-><init>(Lcom/android/systemui/qs/QSBackupRestoreManager$QSBnRReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v13

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-object v3, v13

    :goto_2
    return-void
.end method
