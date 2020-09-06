.class Lcom/android/systemui/dnd/DragAndDropView$1;
.super Ljava/lang/Object;
.source "DragAndDropView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dnd/DragAndDropView;->initDragTarget(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dnd/DragAndDropView;


# direct methods
.method constructor <init>(Lcom/android/systemui/dnd/DragAndDropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v0, v3

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v5, v5, Lcom/android/systemui/dnd/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v5, v1, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mDeltaPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v0, v3

    iget-object v5, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v5, v5, Lcom/android/systemui/dnd/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v5, v1, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-boolean v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mPassedInitialSlop:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mTouchSlop:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mMovePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mTouchSlop:I

    if-le v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iput-boolean v4, v2, Lcom/android/systemui/dnd/DragAndDropView;->mPassedInitialSlop:Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-boolean v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mPassedInitialSlop:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mDropTargets:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;

    invoke-virtual {v5}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getTouchBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-virtual {v5}, Lcom/android/systemui/dnd/DragAndDropView$DragTargetInfo;->getArea()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/systemui/dnd/DragAndDropView;->access$100(Lcom/android/systemui/dnd/DragAndDropView;I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/systemui/dnd/DragAndDropView;->access$100(Lcom/android/systemui/dnd/DragAndDropView;I)V

    :cond_4
    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v3, v3, Lcom/android/systemui/dnd/DragAndDropView;->mDragTargetView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-virtual {v3}, Lcom/android/systemui/dnd/DragAndDropView;->requestLayout()V

    iget-object v3, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-static {v3}, Lcom/android/systemui/dnd/DragAndDropView;->access$000(Lcom/android/systemui/dnd/DragAndDropView;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-virtual {v2}, Lcom/android/systemui/dnd/DragAndDropView;->performDragEnd()V

    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    invoke-static {v2}, Lcom/android/systemui/dnd/DragAndDropView;->access$200(Lcom/android/systemui/dnd/DragAndDropView;)V

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/dnd/DragAndDropView$1;->this$0:Lcom/android/systemui/dnd/DragAndDropView;

    iget-object v2, v2, Lcom/android/systemui/dnd/DragAndDropView;->mLastPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
