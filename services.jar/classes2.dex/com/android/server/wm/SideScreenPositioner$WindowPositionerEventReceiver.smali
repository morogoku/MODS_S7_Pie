.class final Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "SideScreenPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SideScreenPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SideScreenPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 11

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_12c

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    goto/16 :goto_12c

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # getter for: Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z
    invoke-static {v2}, Lcom/android/server/wm/SideScreenPositioner;->access$000(Lcom/android/server/wm/SideScreenPositioner;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_11b
    .catchall {:try_start_12 .. :try_end_18} :catchall_119

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_12e

    goto/16 :goto_103

    :pswitch_31
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_59

    const-string v4, "SideScreenPositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_CANCEL @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # setter for: Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/SideScreenPositioner;->access$002(Lcom/android/server/wm/SideScreenPositioner;Z)Z

    goto/16 :goto_103

    :pswitch_60
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_88

    const-string v4, "SideScreenPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MOVE @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v4, v4, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_8f} :catch_11b
    .catchall {:try_start_1f .. :try_end_8f} :catchall_119

    :try_start_8f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v6, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # invokes: Lcom/android/server/wm/SideScreenPositioner;->notifyMoveLocked(FF)Z
    invoke-static {v6, v2, v3}, Lcom/android/server/wm/SideScreenPositioner;->access$100(Lcom/android/server/wm/SideScreenPositioner;FF)Z

    move-result v6

    # setter for: Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z
    invoke-static {v5, v6}, Lcom/android/server/wm/SideScreenPositioner;->access$002(Lcom/android/server/wm/SideScreenPositioner;Z)Z

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_a7

    :try_start_9e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenPositioner;->onActionMove()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a6} :catch_11b
    .catchall {:try_start_9e .. :try_end_a6} :catchall_119

    goto :goto_103

    :catchall_a7
    move-exception v5

    :try_start_a8
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    :try_start_a9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :pswitch_ad
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_d5

    const-string v4, "SideScreenPositioner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP @ {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # setter for: Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/SideScreenPositioner;->access$002(Lcom/android/server/wm/SideScreenPositioner;Z)Z

    goto :goto_103

    :pswitch_db
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v4, :cond_103

    const-string v4, "SideScreenPositioner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN @ {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    :goto_103
    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # getter for: Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z
    invoke-static {v4}, Lcom/android/server/wm/SideScreenPositioner;->access$000(Lcom/android/server/wm/SideScreenPositioner;)Z

    move-result v4

    if-eqz v4, :cond_117

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenPositioner;->onDragEnded()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v4, v4, Lcom/android/server/wm/SideScreenPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenManagerInternal;->finishScreenPositioning()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_117} :catch_11b
    .catchall {:try_start_a9 .. :try_end_117} :catchall_119

    :cond_117
    const/4 v1, 0x1

    goto :goto_123

    :catchall_119
    move-exception v2

    goto :goto_128

    :catch_11b
    move-exception v2

    :try_start_11c
    const-string v3, "SideScreenPositioner"

    const-string v4, "Exception caught by drag handleMotion"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_119

    :goto_123
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :goto_128
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2

    :cond_12c
    :goto_12c
    return-void

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_db
        :pswitch_ad
        :pswitch_60
        :pswitch_31
    .end packed-switch
.end method
