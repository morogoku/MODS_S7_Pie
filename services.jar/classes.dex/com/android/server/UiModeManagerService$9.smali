.class Lcom/android/server/UiModeManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_26

    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_26

    :cond_e
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mPendingComputedForCustomNightMode:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2500(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mChangeMode:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$2600(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    # invokes: Lcom/android/server/UiModeManagerService;->setNightMode(Landroid/content/Context;ZI)V
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/UiModeManagerService;->access$2700(Lcom/android/server/UiModeManagerService;Landroid/content/Context;ZI)V

    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    goto :goto_28

    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_24

    throw v1
.end method
