.class public Lcom/samsung/android/systemui/sidescreen/GuideViewController;
.super Ljava/lang/Object;
.source "GuideViewController.java"


# instance fields
.field private final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final mContext:Landroid/content/Context;

.field private mDefaultHandleMoveThreshold:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mDuration:I

.field private mFirstTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private mFocusedWindowingMode:I

.field private final mGuideBarRect:Landroid/graphics/Rect;

.field private final mGuideHeight:I

.field private mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

.field private mGuideViewColor:I

.field private mInitialized:Z

.field private mIsHorizontalDivision:Z

.field private mLastTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private mMaximizeGuideView:Z

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideBarRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideViewColor:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mDefaultHandleMoveThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mDuration:I

    return-void
.end method

.method private addView(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0205

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mIsHorizontalDivision:Z

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mDisplayWidth:I

    iget v4, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mDisplayHeight:I

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFocusedWindowingMode:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->initLayoutInfo(ZIII)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->generateWindowLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createScrollAnimator(II)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private generateWindowLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0xa37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "SideScreen GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object v0
.end method

.method private getDimFraction(I)F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v0, p1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private getPosition(Landroid/graphics/Rect;)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public static synthetic lambda$scrollGuideView$0(Lcom/samsung/android/systemui/sidescreen/GuideViewController;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->relayoutGuideView(Landroid/graphics/Rect;F)V

    return-void
.end method

.method private offsetTo(Landroid/graphics/Rect;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mIsHorizontalDivision:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method private relayoutGuideView(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->relayoutGuideView(Landroid/graphics/Rect;F)V

    return-void
.end method

.method private relayoutGuideView(Landroid/graphics/Rect;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->reLayout(Landroid/graphics/Rect;F)V

    :cond_0
    return-void
.end method

.method private removeView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    :cond_1
    return-void
.end method

.method private scrollGuideView(Landroid/graphics/Rect;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->getPosition(Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->createScrollAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$GuideViewController$x2NMkp-rFzjMP-U18W19LlgiVVg;-><init>(Lcom/samsung/android/systemui/sidescreen/GuideViewController;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private snapPosition(Landroid/graphics/Rect;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFirstTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-le p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->getDimFraction(I)F

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMaximizeGuideView:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMaximizeGuideView:Z

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {v2, p2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v2

    iget v3, v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    iget v3, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->scrollGuideView(Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMaximizeGuideView:Z

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMaximizeGuideView:Z

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->offsetTo(Landroid/graphics/Rect;I)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFirstTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v2, v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    const/16 v3, 0x64

    if-ge p2, v2, :cond_3

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFocusedWindowingMode:I

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v2, v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-le p2, v2, :cond_5

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFocusedWindowingMode:I

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->relayoutGuideView(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method addView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mGuideView:Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->addView(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public commitSnap(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissStart()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeSideScreen()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hideSideScreen()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method initGuideController(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;ZIII)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    invoke-virtual {p1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getFirstSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFirstTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    invoke-virtual {p1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mLastTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iput p3, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mDisplayWidth:I

    iput p4, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mDisplayHeight:I

    iput-boolean p2, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mIsHorizontalDivision:Z

    iput p5, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mFocusedWindowingMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mMaximizeGuideView:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mInitialized:Z

    return-void
.end method

.method public requestHide(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mInitialized:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->commitSnap(I)V

    invoke-direct {p0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->removeView()V

    return-void
.end method

.method public requestShow(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->addView()V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->relayoutGuideView(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public requestShow(Landroid/graphics/Rect;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->addView()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/sidescreen/GuideViewController;->snapPosition(Landroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method
