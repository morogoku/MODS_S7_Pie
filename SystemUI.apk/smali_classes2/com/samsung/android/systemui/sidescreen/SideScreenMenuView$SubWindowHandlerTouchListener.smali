.class Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;
.super Ljava/lang/Object;
.source "SideScreenMenuView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubWindowHandlerTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;
    }
.end annotation


# instance fields
.field private mDownDelta:Landroid/graphics/PointF;

.field private mDragAndDropMode:Z

.field private final mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

.field private mMoving:Z

.field private mStartX:I

.field private mStartY:I

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mViewConfig:Landroid/view/ViewConfiguration;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDownDelta:Landroid/graphics/PointF;

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    return-void
.end method


# virtual methods
.method onLongPress(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDragAndDropGuide(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDragAndDropMode:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "SideScreenMenuView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch : action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDownDelta:Landroid/graphics/PointF;

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mStartX:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mStartY:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDragAndDropMode:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    invoke-virtual {v2, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mMoving:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mStartX:I

    iget v6, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mStartY:I

    invoke-virtual {v2, v5, v6, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->startMovingTopTask(III)V

    iput-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mMoving:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mMoving:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDragAndDropMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->getButtonsController()Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuHandlerButtonsController;->show()V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;

    invoke-static {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->showDim(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    invoke-virtual {v2, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mMoving:Z

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDragAndDropMode:Z

    goto :goto_0

    :pswitch_3
    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mStartX:I

    iput v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mStartY:I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    invoke-virtual {v2, v4}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mH:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;

    invoke-static {v5, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mMoving:Z

    iput-boolean v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;->mDragAndDropMode:Z

    nop

    :cond_1
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
