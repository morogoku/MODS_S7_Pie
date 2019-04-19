.class public Lcom/android/systemui/fingerprint/SemFingerprintRotationView;
.super Landroid/view/ViewGroup;
.source "SemFingerprintRotationView.java"


# instance fields
.field private final mChildPoint:[F

.field private mIsRotationChanged:Z

.field private final mParentPoint:[F

.field private final mRectf1:Landroid/graphics/RectF;

.field private final mRectf2:Landroid/graphics/RectF;

.field private final mRotateMatrix:Landroid/graphics/Matrix;

.field private final mRotateRect:Landroid/graphics/Rect;

.field private mRotation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mParentPoint:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mChildPoint:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRectf1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRectf2:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mIsRotationChanged:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setWillNotDraw(Z)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setIconRotation(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mParentPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mParentPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mChildPoint:[F

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mParentPoint:[F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mChildPoint:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mChildPoint:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mParentPoint:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mParentPoint:[F

    aget v2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->invalidate()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setIconRotation(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mIsRotationChanged:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRectf1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRectf2:Landroid/graphics/RectF;

    sub-int v2, p4, p2

    int-to-float v2, v2

    sub-int v3, p5, p3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotation:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mIsRotationChanged:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotation:I

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method protected setIconRotation(I)V
    .locals 3

    const-string v0, "SemFingerprintRotationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIconRotation() called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", windowToken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x10e

    const/16 v2, 0x13

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5a

    const/16 v2, 0x15

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    :cond_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 2

    div-int/lit8 v0, p1, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotation:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mRotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->mIsRotationChanged:Z

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->requestLayout()V

    :cond_0
    return-void
.end method
