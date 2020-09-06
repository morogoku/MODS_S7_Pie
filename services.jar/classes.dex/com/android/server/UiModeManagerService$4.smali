.class Lcom/android/server/UiModeManagerService$4;
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

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mPendingComputedNightMode:Z
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/UiModeManagerService;->mNeedUpdateAutoNightMode:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$502(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/UiModeManagerService;->mFlagToastBeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$602(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked()V
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mPendingComputedNightMode:Z
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;Z)Z

    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1
.end method
