.class public Lcom/android/keyguard/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# instance fields
.field private mBitmapError:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapRegular:Landroid/graphics/Bitmap;

.field private mBitmapSuccess:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mDecoPatternEnabled:Z

.field private final mDiameterFactor:F

.field private mIsWhiteWp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDiameterFactor:F

    iput-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    const-string v0, "SecLockPatternView"

    const-string v1, "SecLockPatternView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p4, :cond_5

    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_4

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown display mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    :goto_2
    nop

    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    iget v4, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    iget v5, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v6, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    int-to-float v7, v3

    sub-float v7, v5, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v9, v4

    sub-float v9, v6, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    iget v10, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v11, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v12, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    iget v13, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget-object v12, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v14, p2, v7

    int-to-float v14, v14

    add-int v8, p3, v9

    int-to-float v8, v8

    invoke-virtual {v12, v14, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v8, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v12, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float v12, v12

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    iget v1, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v14

    invoke-virtual {v8, v12, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v14

    iget v12, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/android/keyguard/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v2, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move-object/from16 v12, p1

    :goto_3
    return-void
.end method

.method private getLineRadius()F
    .locals 2

    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private hasDecoPatternResources()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadDecoPatternResources()Z
    .locals 9

    invoke-direct {p0}, Lcom/android/keyguard/SecLockPatternView;->hasDecoPatternResources()Z

    move-result v0

    const-string v1, "SecLockPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDecoPatternResources() hasResource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x7f080353

    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    const v2, 0x7f080355

    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    const v2, 0x7f080354

    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    aput-object v5, v2, v3

    array-length v3, v2

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    if-nez v6, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    if-nez v6, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_8

    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    :goto_2
    invoke-virtual {v0, v6, v7}, Lcom/android/keyguard/SecLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    iget-object v9, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v8, :cond_3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    iput-boolean v10, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->notifyPatternStarted()V

    :cond_3
    iget v10, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_4

    cmpl-float v12, v11, v12

    if-lez v12, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    iget-boolean v12, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_7

    if-lez v9, :cond_7

    iget-object v12, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v14

    const/16 v15, 0x14

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v16

    sub-float v16, v16, v2

    const/high16 v17, 0x41a00000    # 20.0f

    move/from16 v18, v3

    sub-float v3, v16, v17

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v16, v16, v2

    move/from16 v19, v4

    add-float v4, v16, v17

    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    sub-float v16, v16, v2

    move/from16 v20, v6

    sub-float v6, v16, v17

    invoke-static {v14, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v16, v16, v2

    move/from16 v21, v2

    add-float v2, v16, v17

    if-eqz v8, :cond_6

    move/from16 v22, v7

    iget v7, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v7, v7, v16

    move/from16 v23, v9

    iget v9, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    mul-float v9, v9, v16

    move/from16 v24, v10

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    move/from16 v25, v11

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v11

    move-object/from16 v26, v8

    sub-float v8, v10, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float v8, v10, v7

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v8, v11, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v8, v11, v9

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_3

    :cond_6
    move/from16 v22, v7

    move-object/from16 v26, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    :goto_3
    iget-object v7, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_4

    :cond_7
    move/from16 v21, v2

    move/from16 v18, v3

    move/from16 v19, v4

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v2, v21

    goto/16 :goto_0

    :cond_8
    move/from16 v21, v2

    move/from16 v18, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    if-eqz v4, :cond_9

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/SecLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_5
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    :cond_0
    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDrawLookup:[[Z

    iget-object v5, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v5, v5, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/keyguard/SecLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v9, v11

    long-to-int v6, v9

    rem-int/2addr v6, v5

    div-int/lit16 v9, v6, 0x2bc

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->clearPatternDrawLookup()V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v12

    aget-object v12, v4, v12

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v13

    aput-boolean v8, v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    if-lez v9, :cond_2

    if-ge v9, v3, :cond_2

    move v10, v8

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_3

    rem-int/lit16 v11, v6, 0x2bc

    int-to-float v11, v11

    const/high16 v12, 0x442f0000    # 700.0f

    div-float/2addr v11, v12

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v14

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    nop

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v7

    sub-float/2addr v7, v13

    mul-float/2addr v7, v11

    nop

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v8

    sub-float/2addr v8, v14

    mul-float/2addr v8, v11

    move/from16 v17, v5

    add-float v5, v13, v7

    iput v5, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    add-float v5, v14, v8

    iput v5, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    goto :goto_2

    :cond_3
    move/from16 v17, v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->invalidate()V

    :cond_4
    iget v5, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v6, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v7

    iget-object v8, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v8, 0x80

    iget-object v9, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v0, Lcom/android/keyguard/SecLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    iget-boolean v10, v0, Lcom/android/keyguard/SecLockPatternView;->mInStealthMode:Z

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    if-eqz v10, :cond_6

    iget-boolean v11, v0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const v12, -0xbbbbbc

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_5
    iget-object v11, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0602e8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    :cond_6
    :goto_3
    if-eqz v10, :cond_c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v13

    move v13, v12

    move v12, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v3, :cond_a

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v16

    aget-object v16, v4, v16

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v17

    aget-boolean v16, v16, v17

    if-nez v16, :cond_7

    nop

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v10

    goto/16 :goto_7

    :cond_7
    const/4 v12, 0x1

    move-object/from16 v18, v2

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    move/from16 v19, v3

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v3

    if-eqz v11, :cond_9

    move/from16 v20, v7

    iget-object v7, v0, Lcom/android/keyguard/SecLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v16

    aget-object v7, v7, v16

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v16

    aget-object v7, v7, v16

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v21, v8

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move/from16 v22, v10

    const/4 v10, 0x1

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_8

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_8

    iget v8, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v9, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_8
    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    iget-object v8, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_9
    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v10

    :goto_6
    move v13, v2

    move v14, v3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v10, v22

    goto/16 :goto_4

    :cond_a
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v10

    :goto_7
    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_d

    :cond_b
    if-eqz v12, :cond_d

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v9, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_c
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v10

    :cond_d
    :goto_8
    iget v2, v0, Lcom/android/keyguard/SecLockPatternView;->mPaddingTop:I

    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mPaddingLeft:I

    const/4 v7, 0x0

    :goto_9
    const/4 v8, 0x3

    if-ge v7, v8, :cond_f

    int-to-float v10, v2

    int-to-float v11, v7

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v8, :cond_e

    int-to-float v12, v3

    int-to-float v13, v11

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    float-to-int v13, v12

    float-to-int v14, v10

    aget-object v15, v4, v7

    aget-boolean v15, v15, v11

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/android/keyguard/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    return-void
.end method

.method public updateViewStyle(I)V
    .locals 4

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/SecLockPatternView;->loadDecoPatternResources()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    iget-boolean v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/SecLockPatternView;->setFadePattern(Z)V

    iput-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->invalidate()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/keyguard/SecLockPatternView;->setFadePattern(Z)V

    invoke-super {p0, v0}, Lcom/android/internal/widget/LockPatternView;->updateViewStyle(Z)V

    :goto_1
    return-void
.end method
