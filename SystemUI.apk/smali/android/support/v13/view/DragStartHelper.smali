.class public Landroid/support/v13/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroid/support/v13/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroid/support/v13/view/DragStartHelper;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x2002

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    if-ne v2, v0, :cond_2

    iget v2, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    iput v0, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    iput v1, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    iget-object v2, p0, Landroid/support/v13/view/DragStartHelper;->mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v2, p1, p0}, Landroid/support/v13/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroid/support/v13/view/DragStartHelper;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    iget-boolean v2, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    return v2

    :pswitch_1
    iput-boolean v3, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    goto :goto_0

    :pswitch_2
    iput v0, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    iput v1, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    nop

    :cond_3
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
