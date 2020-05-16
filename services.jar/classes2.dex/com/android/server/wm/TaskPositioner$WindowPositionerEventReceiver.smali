.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    instance-of v0, v2, Landroid/view/MotionEvent;

    if-eqz v0, :cond_420

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-nez v0, :cond_12

    goto/16 :goto_420

    :cond_12
    move-object v4, v2

    check-cast v4, Landroid/view/MotionEvent;

    const/4 v0, 0x0

    move v5, v0

    const/4 v6, 0x1

    :try_start_18
    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_401
    .catchall {:try_start_18 .. :try_end_1e} :catchall_3ff

    if-eqz v7, :cond_25

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_25
    :try_start_25
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_422

    goto/16 :goto_348

    :pswitch_36
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_5e

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_CANCEL @ {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "}"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v0, v6}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_348

    :pswitch_65
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v9, :cond_8d

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_MOVE @ {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    iget-object v9, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_96} :catch_401
    .catchall {:try_start_25 .. :try_end_96} :catchall_3ff

    :try_start_96
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z
    invoke-static {v11, v7, v8}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v11

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v10, v11}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    monitor-exit v9
    :try_end_b4
    .catchall {:try_start_96 .. :try_end_b4} :catchall_2eb

    :try_start_b4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v9, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v9

    if-eqz v9, :cond_c1

    move v9, v6

    goto :goto_c2

    :cond_c1
    move v9, v0

    :goto_c2
    nop

    if-eqz v9, :cond_2b1

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mResizing:Z
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v10

    if-eqz v10, :cond_2b1

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2ea

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMinWidth:I
    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$800(Lcom/android/server/wm/TaskPositioner;)I

    move-result v11

    if-gt v10, v11, :cond_fc

    move v10, v6

    goto :goto_fd

    :cond_fc
    move v10, v0

    :goto_fd
    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMinHeight:I
    invoke-static {v12}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)I

    move-result v12

    if-gt v11, v12, :cond_111

    move v11, v6

    goto :goto_112

    :cond_111
    move v11, v0

    :goto_112
    iget-object v12, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I
    invoke-static {v13}, Lcom/android/server/wm/TaskPositioner;->access$1000(Lcom/android/server/wm/TaskPositioner;)I

    move-result v13

    if-lt v12, v13, :cond_126

    move v12, v6

    goto :goto_127

    :cond_126
    move v12, v0

    :goto_127
    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v13}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$1100(Lcom/android/server/wm/TaskPositioner;)I

    move-result v14

    if-lt v13, v14, :cond_13b

    move v13, v6

    goto :goto_13c

    :cond_13b
    move v13, v0

    :goto_13c
    if-eqz v10, :cond_176

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mCtrlType:I
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v14

    and-int/2addr v14, v6

    if-eqz v14, :cond_15f

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMinWidth:I
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$800(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    sub-int/2addr v15, v3

    iput v15, v14, Landroid/graphics/Rect;->left:I

    goto :goto_176

    :cond_15f
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMinWidth:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$800(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    :cond_176
    :goto_176
    if-eqz v11, :cond_1b1

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mCtrlType:I
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_19a

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMinHeight:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1b1

    :cond_19a
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMinHeight:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$900(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1b1
    :goto_1b1
    if-eqz v12, :cond_1eb

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mCtrlType:I
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    and-int/2addr v3, v6

    if-eqz v3, :cond_1d4

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->right:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1000(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1eb

    :cond_1d4
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1000(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    :cond_1eb
    :goto_1eb
    if-eqz v13, :cond_226

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mCtrlType:I
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$1200(Lcom/android/server/wm/TaskPositioner;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_20f

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1100(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->top:I

    goto :goto_226

    :cond_20f
    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget-object v15, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I
    invoke-static {v15}, Lcom/android/server/wm/TaskPositioner;->access$1100(Lcom/android/server/wm/TaskPositioner;)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    :cond_226
    :goto_226
    if-eqz v10, :cond_22a

    if-nez v11, :cond_22e

    :cond_22a
    if-eqz v12, :cond_230

    if-eqz v13, :cond_230

    :cond_22e
    move v3, v6

    goto :goto_231

    :cond_230
    move v3, v0

    :goto_231
    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    invoke-static {v14}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2a0

    float-to-int v14, v7

    float-to-int v15, v8

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_2a0

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v14, v6, :cond_261

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iput v14, v6, Landroid/graphics/Rect;->left:I

    :cond_261
    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v14, v6, :cond_273

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iput v14, v6, Landroid/graphics/Rect;->right:I

    :cond_273
    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v15, v6, :cond_285

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iput v15, v6, Landroid/graphics/Rect;->top:I

    :cond_285
    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v15, v6, :cond_297

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    iput v15, v6, Landroid/graphics/Rect;->bottom:I

    :cond_297
    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :cond_2a0
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v14, 0x1

    invoke-virtual {v0, v6, v14}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    goto :goto_2ea

    :cond_2b1
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2ea

    const-string/jumbo v0, "wm.TaskPositioner.resizeTask"

    const-wide/16 v10, 0x20

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_2cb} :catch_401
    .catchall {:try_start_b4 .. :try_end_2cb} :catchall_3ff

    :try_start_2cb
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v12, 0x1

    invoke-interface {v0, v3, v6, v12}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_2e5
    .catch Landroid/os/RemoteException; {:try_start_2cb .. :try_end_2e5} :catch_2e6
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2e5} :catch_401
    .catchall {:try_start_2cb .. :try_end_2e5} :catchall_3ff

    goto :goto_2e7

    :catch_2e6
    move-exception v0

    :goto_2e7
    :try_start_2e7
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2ea
    .catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ea} :catch_401
    .catchall {:try_start_2e7 .. :try_end_2ea} :catchall_3ff

    :cond_2ea
    :goto_2ea
    goto :goto_348

    :catchall_2eb
    move-exception v0

    :try_start_2ec
    monitor-exit v9
    :try_end_2ed
    .catchall {:try_start_2ec .. :try_end_2ed} :catchall_2eb

    :try_start_2ed
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_2f1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_319

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP @ {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_319
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v0, v3}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto :goto_348

    :pswitch_320
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_348

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN @ {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_348
    :goto_348
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mResizing:Z
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    move v3, v0

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_360} :catch_401
    .catchall {:try_start_2ed .. :try_end_360} :catchall_3ff

    :try_start_360
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->endDragLocked()V
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$1300(Lcom/android/server/wm/TaskPositioner;)V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_377
    .catchall {:try_start_360 .. :try_end_377} :catchall_3f4

    if-nez v3, :cond_386

    :try_start_379
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$1400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_384
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_384} :catch_385
    .catchall {:try_start_379 .. :try_end_384} :catchall_3f4

    goto :goto_386

    :catch_385
    move-exception v0

    :cond_386
    :goto_386
    :try_start_386
    monitor-exit v6
    :try_end_387
    .catchall {:try_start_386 .. :try_end_387} :catchall_3f4

    :try_start_387
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_38a
    .catch Ljava/lang/Exception; {:try_start_387 .. :try_end_38a} :catch_401
    .catchall {:try_start_387 .. :try_end_38a} :catchall_3ff

    if-eqz v3, :cond_3e8

    :try_start_38c
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e8

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v9
    :try_end_3a8
    .catch Landroid/os/RemoteException; {:try_start_38c .. :try_end_3a8} :catch_3e6
    .catch Ljava/lang/Exception; {:try_start_38c .. :try_end_3a8} :catch_401
    .catchall {:try_start_38c .. :try_end_3a8} :catchall_3ff

    :try_start_3a8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    move-object v6, v0

    monitor-exit v9
    :try_end_3b7
    .catchall {:try_start_3a8 .. :try_end_3b7} :catchall_3e0

    :try_start_3b7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$1500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e8

    if-eqz v6, :cond_3e8

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v9, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeFreeformTask(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    :try_end_3df
    .catch Landroid/os/RemoteException; {:try_start_3b7 .. :try_end_3df} :catch_3e6
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3df} :catch_401
    .catchall {:try_start_3b7 .. :try_end_3df} :catchall_3ff

    goto :goto_3e8

    :catchall_3e0
    move-exception v0

    :try_start_3e1
    monitor-exit v9
    :try_end_3e2
    .catchall {:try_start_3e1 .. :try_end_3e2} :catchall_3e0

    :try_start_3e2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3e6
    .catch Landroid/os/RemoteException; {:try_start_3e2 .. :try_end_3e6} :catch_3e6
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_3e6} :catch_401
    .catchall {:try_start_3e2 .. :try_end_3e6} :catchall_3ff

    :catch_3e6
    move-exception v0

    nop

    :cond_3e8
    :goto_3e8
    :try_start_3e8
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_3f3
    .catch Ljava/lang/Exception; {:try_start_3e8 .. :try_end_3f3} :catch_401
    .catchall {:try_start_3e8 .. :try_end_3f3} :catchall_3ff

    goto :goto_3fa

    :catchall_3f4
    move-exception v0

    :try_start_3f5
    monitor-exit v6
    :try_end_3f6
    .catchall {:try_start_3f5 .. :try_end_3f6} :catchall_3f4

    :try_start_3f6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3fa
    .catch Ljava/lang/Exception; {:try_start_3f6 .. :try_end_3fa} :catch_401
    .catchall {:try_start_3f6 .. :try_end_3fa} :catchall_3ff

    :cond_3fa
    :goto_3fa
    const/4 v5, 0x1

    :goto_3fb
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_41b

    :catchall_3ff
    move-exception v0

    goto :goto_41c

    :catch_401
    move-exception v0

    :try_start_402
    const-string v3, "WindowManager"

    const-string v6, "Exception caught by drag handleMotion"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v3, v6}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    iget-object v3, v1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_41a
    .catchall {:try_start_402 .. :try_end_41a} :catchall_3ff

    goto :goto_3fb

    :goto_41b
    return-void

    :goto_41c
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    :cond_420
    :goto_420
    return-void

    nop

    :pswitch_data_422
    .packed-switch 0x0
        :pswitch_320
        :pswitch_2f1
        :pswitch_65
        :pswitch_36
    .end packed-switch
.end method
