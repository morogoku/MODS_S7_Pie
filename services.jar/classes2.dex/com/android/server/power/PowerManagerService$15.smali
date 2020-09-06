.class Lcom/android/server/power/PowerManagerService$15;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$15;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$15;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_25

    if-eqz v2, :cond_23

    :try_start_13
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$15;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v3, "AxT9IME.isVisibleWindow"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/power/PowerManagerService;->mIsSipVisible:Z
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_1f
    .catchall {:try_start_13 .. :try_end_1e} :catchall_25

    goto :goto_23

    :catch_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw v1
.end method
