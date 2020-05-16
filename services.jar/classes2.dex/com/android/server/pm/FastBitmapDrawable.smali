.class public Lcom/android/server/pm/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FastBitmapDrawable$State;
    }
.end annotation


# static fields
.field public static final CLICK_FEEDBACK_DURATION:I = 0x7d0

.field public static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FAST_SCROLL_HIGHLIGHT_DURATION:I = 0xe1

.field public static final FAST_SCROLL_INACTIVE_DURATION:I = 0x113

.field public static final FAST_SCROLL_UNHIGHLIGHT_DURATION:I = 0x96

.field public static final FAST_SCROLL_UNHIGHLIGHT_FROM_NORMAL_DURATION:I = 0xe1

.field private static final REDUCED_FILTER_VALUE_SPACE:I = 0x30

.field private static final sCachedFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mDesaturation:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I

.field private mPropertyAnimator:Landroid/animation/AnimatorSet;

.field private mState:Lcom/android/server/pm/FastBitmapDrawable$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$1;

    invoke-direct {v0}, Lcom/android/server/pm/FastBitmapDrawable$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/android/server/pm/FastBitmapDrawable;->setBounds(IIII)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDurationForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I
    .registers 5

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xe1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_32

    return v2

    :pswitch_f
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    goto :goto_2f

    :pswitch_1b
    const/16 v0, 0x113

    return v0

    :pswitch_1e
    return v2

    :pswitch_1f
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2d

    const/16 v0, 0x96

    return v0

    :cond_2d
    return v1

    :pswitch_2e
    return v1

    :goto_2f
    :pswitch_2f
    const/16 v0, 0x7d0

    return v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_1f
        :pswitch_f
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public static getStartDelayForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I
    .registers 4

    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_17

    :cond_c
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    :goto_17
    const/4 v0, 0x0

    return v0

    :cond_19
    const/16 v0, 0x25

    return v0
.end method

.method private updateFilter()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    if-lez v2, :cond_f

    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    shl-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    or-int v1, v2, v3

    goto :goto_1a

    :cond_f
    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-lez v2, :cond_1a

    const/high16 v2, 0x10000

    iget v3, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    or-int v1, v2, v3

    const/4 v0, 0x1

    :cond_1a
    :goto_1a
    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v1, v2, :cond_1f

    return-void

    :cond_1f
    iput v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_91

    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    if-nez v2, :cond_8b

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBrightness()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    if-eqz v0, :cond_47

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/16 v6, 0xff

    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v5

    goto :goto_86

    :cond_47
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getDesaturation()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    sget-object v7, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v7, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget v7, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-lez v7, :cond_7e

    sub-float/2addr v6, v3

    sget-object v7, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v7}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v7

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x6

    aput v6, v7, v8

    const/16 v8, 0xc

    aput v6, v7, v8

    const/4 v8, 0x4

    int-to-float v9, v4

    aput v9, v7, v8

    const/16 v8, 0x9

    int-to-float v9, v4

    aput v9, v7, v8

    const/16 v8, 0xe

    int-to-float v9, v4

    aput v9, v7, v8

    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v9, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v8, v9}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    :cond_7e
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v7, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object v2, v6

    :goto_86
    sget-object v5, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_8b
    iget-object v3, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_97

    :cond_91
    iget-object v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_97
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public animateState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_5e

    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1}, Lcom/android/server/pm/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "desaturation"

    const/4 v5, 0x1

    new-array v6, v5, [F

    iget v7, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    aput v7, v6, v2

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "brightness"

    new-array v6, v5, [F

    iget v7, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    aput v7, v6, v2

    invoke-static {p0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/server/pm/FastBitmapDrawable;->getDurationForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/server/pm/FastBitmapDrawable;->getStartDelayForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return v5

    :cond_5e
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBrightness()F
    .registers 3

    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCurrentState()Lcom/android/server/pm/FastBitmapDrawable$State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method

.method public getDesaturation()F
    .registers 3

    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBrightness(F)V
    .registers 4

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-eq v1, v0, :cond_12

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    invoke-direct {p0}, Lcom/android/server/pm/FastBitmapDrawable;->updateFilter()V

    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setDesaturation(F)V
    .registers 4

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    if-eq v1, v0, :cond_12

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    invoke-direct {p0}, Lcom/android/server/pm/FastBitmapDrawable;->updateFilter()V

    :cond_12
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    if-eq v0, p1, :cond_1a

    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget v0, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    invoke-virtual {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->setDesaturation(F)V

    iget v0, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    invoke-virtual {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->setBrightness(F)V

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
