.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v1, "AlarmManagerEXT"

    const-string/jumbo v2, "on AC power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_1f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_36

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "on USB power"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_6f

    :cond_36
    const/4 v1, 0x0

    if-nez v0, :cond_4d

    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "on Battery power"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_6f

    :cond_4d
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no Extra info, plugged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # setter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->isUSBConnected:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    :cond_6f
    :goto_6f
    return-void
.end method
