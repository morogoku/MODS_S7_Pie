.class Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupRestoreResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "onReceiveResult "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "edm.intent.action.backup.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v3, "backupResult"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I
    invoke-static {v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3602(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_5c

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_2f

    throw v1

    :cond_32
    const-string/jumbo v0, "edm.intent.action.restore.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_44
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v3, "restoreResult"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I
    invoke-static {v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3702(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_5c

    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_59

    throw v1

    :cond_5c
    :goto_5c
    return-void
.end method
