.class public Lcom/android/systemui/stackdivider/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# instance fields
.field private mDim:Landroid/widget/ImageView;

.field private mDockSide:I

.field private mDuration:I

.field private mFocusedRect:Landroid/graphics/Rect;

.field private mFocusedStackWindowingMode:I

.field private mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private mGuide:Landroid/widget/ImageView;

.field private mGuideColor:[I

.field private mIsHorizontalDivision:Z

.field private mRect:Landroid/widget/ImageView;

.field private mStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    return-void
.end method

.method private isDockSideRight()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDockSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isDockSideTopLeft()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDockSide:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$dismiss$1(Lcom/android/systemui/stackdivider/GuideView;Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$show$0(Lcom/android/systemui/stackdivider/GuideView;Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private setGradient()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideRight()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->setGuideColor(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setGuideColor(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601bc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v1, v0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601ba

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    aput p1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method dismiss(Landroid/graphics/Point;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eqz v4, :cond_2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v2, v6, :cond_1

    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_1
    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideRight()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_3
    iget v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v4, v6, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-eq v4, v6, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_6
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v8, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;

    invoke-direct {v4, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$1ZTlaEvXglIG2Y-foAnGQqP2DkE;-><init>(Lcom/android/systemui/stackdivider/GuideView;)V

    invoke-virtual {v8, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method init(ILandroid/graphics/Rect;ZLandroid/graphics/Rect;II)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, p6, :cond_0

    invoke-direct {p0, p6}, Lcom/android/systemui/stackdivider/GuideView;->setGuideColor(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0357

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    const v0, 0x7f0a0358

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0601bd

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0601bc

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuideColor:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    return-void
.end method

.method setDimLayer(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method show(Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackWindowingMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->isDockSideTopLeft()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-nez p2, :cond_5

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v4, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$GuideView$DiibdRir0osyqBHg9G2mQM9Rwr4;-><init>(Lcom/android/systemui/stackdivider/GuideView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->setGradient()V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method
