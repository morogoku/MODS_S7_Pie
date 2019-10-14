.class Lcom/android/server/power/ShutdownThread$1;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    # getter for: Lcom/android/server/power/ShutdownThread;->uncryptProgressSync:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    # getter for: Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v4

    if-eq v4, v2, :cond_93

    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dex mode different, pre is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", cur is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/server/power/ShutdownThread;->dexModeEnabled:Z
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$302(Z)Z

    # getter for: Lcom/android/server/power/ShutdownThread;->uncryptStep:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()I

    move-result v4

    if-ne v4, v3, :cond_8b

    const-string v3, "ShutdownThread"

    const-string v4, "Dex mode is changed, need to create a new dialog for UI"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v3

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v3

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v4

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v4

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Z

    move-result v5

    # getter for: Lcom/android/server/power/ShutdownThread;->progressMessage:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Ljava/lang/CharSequence;

    move-result-object v6

    # getter for: Lcom/android/server/power/ShutdownThread;->progressStatus:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()I

    move-result v7

    # invokes: Lcom/android/server/power/ShutdownThread;->getProgressDialog(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/power/ShutdownThread;->access$900(Landroid/content/Context;ZLjava/lang/CharSequence;I)Landroid/app/ProgressDialog;

    move-result-object v4

    # setter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Lcom/android/server/power/ShutdownThread;

    move-result-object v3

    # getter for: Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto :goto_93

    :cond_8b
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "uncryptStep is NON STARTED"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    monitor-exit v0

    return-void

    :catchall_95
    move-exception v1

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_5 .. :try_end_97} :catchall_95

    throw v1
.end method
