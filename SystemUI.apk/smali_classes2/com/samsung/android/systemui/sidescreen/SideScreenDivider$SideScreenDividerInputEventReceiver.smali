.class final Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SideScreenDivider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SideScreenDividerInputEventReceiver"
.end annotation


# instance fields
.field private final DOUBLE_TAP_SLOP:I

.field private final TAP_TIMEOUT:I

.field private mDownEventTime:J

.field private mDownEventX:I

.field private mDownEventY:I

.field private mGestureDetecting:Z

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;


# direct methods
.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    :try_start_1
    move-object v0, v2

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$200()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "SideScreenDivider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MonitorChannel] onInputEvent : action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v7}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_3
    const/4 v7, 0x0

    if-nez v6, :cond_6

    :try_start_3
    iget-object v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v8}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)[I

    move-result-object v8

    aget v8, v8, v7

    if-lt v4, v8, :cond_5

    iget-object v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v8}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$400(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)[I

    move-result-object v8

    aget v8, v8, v3

    if-le v4, v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventTime:J

    iput v4, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventX:I

    iput v5, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventY:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_6
    :try_start_4
    iget-boolean v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mGestureDetecting:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v8, :cond_7

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_7
    :goto_1
    :try_start_5
    iget-object v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v8, v6, 0xff

    const-wide/16 v9, 0x12c

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iput-boolean v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mGestureDetecting:Z

    iget-object v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v7}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$900(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->recycleVelocityTracker()V

    goto/16 :goto_6

    :pswitch_1
    iget v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventX:I

    sub-int/2addr v8, v4

    if-ltz v8, :cond_9

    move v8, v3

    goto :goto_2

    :cond_9
    move v8, v7

    :goto_2
    iget v11, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventY:I

    sub-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->DOUBLE_TAP_SLOP:I

    if-ge v11, v12, :cond_a

    move v11, v3

    goto :goto_3

    :cond_a
    move v11, v7

    :goto_3
    nop

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventTime:J

    sub-long/2addr v12, v14

    cmp-long v9, v12, v9

    if-lez v9, :cond_b

    move v9, v3

    goto :goto_4

    :cond_b
    move v9, v7

    :goto_4
    if-eqz v8, :cond_c

    if-eqz v11, :cond_c

    if-nez v9, :cond_c

    iget-object v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v7, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$500(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V

    goto :goto_6

    :cond_c
    iput-boolean v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mGestureDetecting:Z

    iget-object v10, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v10, v0, v7}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$600(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->recycleVelocityTracker()V

    goto :goto_6

    :pswitch_2
    iget-object v8, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    iget v12, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mMaximumFlingVelocity:I

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mDownEventTime:J

    sub-long/2addr v12, v14

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mMinimumFlingVelocity:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_d

    iget v14, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->TAP_TIMEOUT:I

    int-to-long v14, v14

    cmp-long v14, v12, v14

    if-lez v14, :cond_d

    cmp-long v9, v12, v9

    if-gez v9, :cond_d

    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v9}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$800(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v10}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$700(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v9, v0, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$600(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;Z)V

    goto :goto_5

    :cond_d
    iget-object v9, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v9, v0, v7}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$600(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;Z)V

    :goto_5
    iput-boolean v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mGestureDetecting:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->recycleVelocityTracker()V

    goto :goto_6

    :pswitch_3
    iput-boolean v3, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->mGestureDetecting:Z

    iget-object v7, v1, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v7, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->access$500(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;Landroid/view/MotionEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :goto_6
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider$SideScreenDividerInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
