.class final Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;
.super Landroid/os/Handler;
.source "MinimizeContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H$Duration;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "MINIMIZE_CONTAINER_FLIP_FOLDER_STATE_CHANGED"

    return-object v0

    :pswitch_1
    const-string v0, "MINIMIZE_CONTAINER_REPORT_POSITION_TO_SYSTEM"

    return-object v0

    :pswitch_2
    const-string v0, "MINIMIZE_CONTAINER_CLOSE_FULLSCREEN_MODE"

    return-object v0

    :pswitch_3
    const-string v0, "MINIMIZE_CONTAINER_ROTATION_CHANGED"

    return-object v0

    :pswitch_4
    const-string v0, "MINIMIZE_CONTAINER_MINIMIZE_TIMEOUT"

    return-object v0

    :pswitch_5
    const-string v0, "MINIMIZE_CONTAINER_REBUILD_ALL_TASK_ITEMS"

    return-object v0

    :pswitch_6
    const-string v0, "MINIMIZE_CONTAINER_LOAD_TASK_INFO_COMPLETED"

    return-object v0

    :pswitch_7
    const-string v0, "MINIMIZE_CONTAINER_MINIMIZE_ANIM_COMPLETED"

    return-object v0

    :pswitch_8
    const-string v0, "MINIMIZE_CONTAINER_ADD_PENDING_ITEM"

    return-object v0

    :pswitch_9
    const-string v0, "MINIMIZE_CONTAINER_REMOVE_TASK_ITEM"

    return-object v0

    :pswitch_a
    const-string v0, "MINIMIZE_CONTAINER_ADD_TASK_ITEM"

    return-object v0

    :pswitch_b
    const-string v0, "MINIMIZE_CONTAINER_REMOVE_WINDOW"

    return-object v0

    :pswitch_c
    const-string v0, "MINIMIZE_CONTAINER_ADD_WINDOW"

    return-object v0

    :pswitch_d
    const-string v0, "MINIMIZE_CONTAINER_REBUILD_ALL"

    return-object v0

    :pswitch_e
    const-string v0, "MINIMIZE_CONTAINER_SERVICE_DESTROYED"

    return-object v0

    :pswitch_f
    const-string v0, "MINIMIZE_CONTAINER_PROCESS_KILL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->messageToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$2400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$2300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;FF)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$2200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerView;->requestLayout()V

    :cond_1
    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)I

    move-result v1

    if-eq v1, v0, :cond_3

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: UpdateRotation, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)I

    move-result v3

    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v1

    const-string v2, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const-string v2, "fullscreen_mode_request_screen_rotating"

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;

    move-result-object v1

    const-string v2, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerPolicyController;->openFullscreenMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v1, v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const-string v2, "fullscreen_mode_request_screen_rotating"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Z)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$2000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$2100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)I

    :cond_3
    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    const-string v1, "MinimizeContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MinimizeAnimation Timeout, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->animationCompleted()V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskInfoLoadCompleted()V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v2, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    :cond_4
    goto/16 :goto_0

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->animationCompleted()V

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v2, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    :cond_5
    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->taskId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_6
    goto/16 :goto_0

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v2, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$900(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$802(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$700(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$702(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Ljava/util/concurrent/ThreadPoolExecutor;)Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$800(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager$H;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    invoke-static {v0, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->access$802(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    const-string v0, "MinimizeContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Manager] kill process="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
