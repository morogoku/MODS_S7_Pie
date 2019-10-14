.class public Lcom/android/systemui/qs/touch/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/touch/SwipeDetector$Listener;,
        Lcom/android/systemui/qs/touch/SwipeDetector$Direction;,
        Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

.field public static final VERTICAL:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;


# instance fields
.field protected mActivePointerId:I

.field private mCurrentMillis:J

.field private final mDir:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

.field private mDisplacement:F

.field private final mDownPos:Landroid/graphics/PointF;

.field private mIgnoreSlopWhenSettling:Z

.field private mLastDisplacement:F

.field private final mLastPos:Landroid/graphics/PointF;

.field private final mListener:Lcom/android/systemui/qs/touch/SwipeDetector$Listener;

.field private mScrollConditions:I

.field private mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

.field private mSubtractDisplacement:F

.field private final mTouchSlop:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/touch/SwipeDetector$1;

    invoke-direct {v0}, Lcom/android/systemui/qs/touch/SwipeDetector$1;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/touch/SwipeDetector;->VERTICAL:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

    new-instance v0, Lcom/android/systemui/qs/touch/SwipeDetector$2;

    invoke-direct {v0}, Lcom/android/systemui/qs/touch/SwipeDetector$2;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/touch/SwipeDetector;->HORIZONTAL:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

    return-void
.end method

.method protected constructor <init>(FLcom/android/systemui/qs/touch/SwipeDetector$Listener;Lcom/android/systemui/qs/touch/SwipeDetector$Direction;)V
    .locals 1
    .param p2    # Lcom/android/systemui/qs/touch/SwipeDetector$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/qs/touch/SwipeDetector$Direction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mActivePointerId:I

    sget-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    iput-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iput p1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mTouchSlop:F

    iput-object p2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mListener:Lcom/android/systemui/qs/touch/SwipeDetector$Listener;

    iput-object p3, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDir:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

    return-void
.end method

.method private static computeDampeningFactor(F)F
    .locals 1

    const v0, 0x417ea5dd

    add-float/2addr v0, p0

    div-float v0, p0, v0

    return v0
.end method

.method private initializeDragging()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mSubtractDisplacement:F

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mTouchSlop:F

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mSubtractDisplacement:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mTouchSlop:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mSubtractDisplacement:F

    :goto_0
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private reportDragEnd()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mListener:Lcom/android/systemui/qs/touch/SwipeDetector$Listener;

    iget v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    iget v2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/qs/touch/SwipeDetector$Listener;->onDragEnd(FZ)V

    return-void
.end method

.method private reportDragStart(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mListener:Lcom/android/systemui/qs/touch/SwipeDetector$Listener;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/touch/SwipeDetector$Listener;->onDragStart(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method private reportDragging()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    iget v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastDisplacement:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastDisplacement:F

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mListener:Lcom/android/systemui/qs/touch/SwipeDetector$Listener;

    iget v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    iget v2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mSubtractDisplacement:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/qs/touch/SwipeDetector$Listener;->onDrag(FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setState(Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/touch/SwipeDetector;->initializeDragging()V

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/touch/SwipeDetector;->reportDragStart(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/touch/SwipeDetector;->reportDragStart(Z)Z

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/touch/SwipeDetector;->reportDragEnd()V

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    return-void
.end method

.method private shouldScrollStart(Landroid/view/MotionEvent;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDir:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/qs/touch/SwipeDetector$Direction;->getActiveTouchSlop(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mTouchSlop:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mScrollConditions:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mScrollConditions:I

    and-int/2addr v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public computeVelocity(FJ)F
    .locals 6

    iget-wide v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mCurrentMillis:J

    iput-wide p2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mCurrentMillis:J

    iget-wide v2, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mCurrentMillis:J

    sub-long/2addr v2, v0

    long-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    div-float v3, p1, v2

    nop

    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iput v3, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/android/systemui/qs/touch/SwipeDetector;->computeDampeningFactor(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    invoke-static {v5, v3, v4}, Lcom/android/systemui/qs/touch/SwipeDetector;->interpolate(FFF)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    :goto_0
    iget v4, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDir:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

    iget-object v3, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/systemui/qs/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDir:Lcom/android/systemui/qs/touch/SwipeDetector$Direction;

    iget-object v3, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/systemui/qs/touch/SwipeDetector$Direction;->getDisplacement(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/systemui/qs/touch/SwipeDetector;->computeVelocity(FJ)F

    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v3, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-eq v1, v3, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/touch/SwipeDetector;->shouldScrollStart(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/touch/SwipeDetector;->setState(Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v3, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/touch/SwipeDetector;->reportDragging()Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/touch/SwipeDetector;->setState(Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastDisplacement:F

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDisplacement:F

    iput v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mVelocity:F

    iget-object v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mState:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    sget-object v1, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->SETTLING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;->DRAGGING:Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/touch/SwipeDetector;->setState(Lcom/android/systemui/qs/touch/SwipeDetector$ScrollState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mActivePointerId:I

    if-ne v1, v4, :cond_5

    if-nez v0, :cond_4

    move v3, v2

    nop

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/touch/SwipeDetector;->mActivePointerId:I

    nop

    :cond_5
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
