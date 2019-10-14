.class Lcom/android/server/UiModeManagerService$7;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
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

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_32

    goto :goto_2c

    :pswitch_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mGearVrHeadset:Z
    invoke-static {v2, v1}, Lcom/android/server/UiModeManagerService;->access$1102(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_2c

    :pswitch_1b
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/UiModeManagerService;->mGearVrHeadset:Z
    invoke-static {v2, v3}, Lcom/android/server/UiModeManagerService;->access$1102(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_2c
    :goto_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_a
    .end packed-switch
.end method
