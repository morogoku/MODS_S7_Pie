.class public Lcom/android/systemui/infinity/preview/GalaxyViewCircle;
.super Landroid/view/View;
.source "GalaxyViewCircle.java"


# static fields
.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I


# instance fields
.field private mCurrentXDegree:F

.field private mCurrentYDegree:F

.field private mExpand:F

.field private mHeight:F

.field private mIsInitStart:Z

.field private mLeftMargin:F

.field private mMainAlpha:F

.field private mMaxDegree:F

.field private mPaint:Landroid/graphics/Paint;

.field private mParticleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleCount:I

.field private mParticleScale:F

.field private mPlusValueX:F

.field private mPositionType:I

.field private mStarScale:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleScale:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    const/high16 v2, 0x40e00000    # 7.0f

    iput v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMaxDegree:F

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    const/high16 v1, 0x442f0000    # 700.0f

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mExpand:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    iput v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mStarScale:F

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->initStarList()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidateDXObject()V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private invalidateDXObject()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public changeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidate()V

    return-void
.end method

.method public changePlusValue(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-float v0, p1

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidate()V

    return-void
.end method

.method public getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    return v0
.end method

.method public getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 7

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    float-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v3, v3

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v5, v5

    add-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    return v0
.end method

.method public getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 7

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    neg-float v1, v1

    float-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v3, v3

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v5, v5

    add-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 3

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v1, 0x3fcccccd    # 1.6f

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mStarScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    return v1
.end method

.method public getRandValue(F)F
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public initStarList()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v0, v7

    float-to-int v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3e4ccccd    # 0.2f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v9, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v7, v0

    float-to-int v10, v7

    const/high16 v11, 0x3fc00000    # 1.5f

    const v12, 0x3f19999a    # 0.6f

    const v13, 0x3ecccccd    # 0.4f

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    const v6, 0x3e2e147b    # 0.17f

    mul-float/2addr v0, v6

    float-to-int v2, v0

    const v3, 0x3fcccccd    # 1.6f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v9, v0

    const v10, 0x3fb33333    # 1.4f

    const v11, 0x3f19999a    # 0.6f

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v6, v0

    float-to-int v2, v6

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3f99999a    # 1.2f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;IFFF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v5, v0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMaxDegree:F

    mul-float/2addr v5, v4

    move/from16 v6, p3

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v13

    float-to-double v7, v6

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v8

    add-float v14, v7, v8

    float-to-double v7, v6

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v8

    add-float v15, v7, v8

    new-instance v16, Lcom/android/systemui/infinity/preview/ParticleModel;

    const/high16 v12, 0x3f000000    # 0.5f

    move-object/from16 v7, v16

    move v8, v14

    move v9, v13

    move v10, v15

    move/from16 v11, p4

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/infinity/preview/ParticleModel;-><init>(FFFFF)V

    iget v8, v0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mExpand:F

    iput v8, v7, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    const/4 v8, 0x0

    iput v8, v7, Lcom/android/systemui/infinity/preview/ParticleModel;->tension:F

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v8

    iput v8, v7, Lcom/android/systemui/infinity/preview/ParticleModel;->xRand:F

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v8

    iput v8, v7, Lcom/android/systemui/infinity/preview/ParticleModel;->yRand:F

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v8

    iput v8, v7, Lcom/android/systemui/infinity/preview/ParticleModel;->zRand:F

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidateDXObject()V

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    :cond_2
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iget v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleScale:F

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    iget v6, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v7, 0x3ed70a3d    # 0.42f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public setHorizontalLocation(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    :goto_0
    return-void
.end method
