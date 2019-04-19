.class public Lcom/android/systemui/stackdivider/FocusedFrameView;
.super Landroid/view/View;
.source "FocusedFrameView.java"


# instance fields
.field private mAdjustedForIme:Z

.field private mAnimating:Z

.field protected mBackground:Landroid/view/View;

.field private mDividerButtonsVisible:Z

.field protected mDockSide:I

.field private mDockedStackMinimized:Z

.field private mFocusedStackWindowingMode:I

.field private mGuideViewVisible:Z

.field private mRemovedDockDivider:Z

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideViewVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method public static synthetic lambda$setDockSide$0(Lcom/android/systemui/stackdivider/FocusedFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method public static synthetic lambda$setFocusedStack$1(Lcom/android/systemui/stackdivider/FocusedFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method public static synthetic lambda$setMinimizedDockStack$2(Lcom/android/systemui/stackdivider/FocusedFrameView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    return-void
.end method

.method public static synthetic lambda$setMinimizedDockStack$3(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    return-void
.end method

.method private layoutFocusedFrameView()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->needToHideFocusedFrameView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isPrimaryFocused(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    goto/16 :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isPrimaryFocused(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isPrimaryFocused(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isPrimaryFocused(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layout(IIII)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAlpha(F)V

    return-void
.end method

.method private needToHideFocusedFrameView()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideViewVisible:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDividerButtonsVisible:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->rawInitDockSide()V

    :cond_7
    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->isAllowedDockSide(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_8
    :goto_0
    return v1
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    return-void
.end method

.method protected isAllowedDockSide(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

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
        :pswitch_0
    .end packed-switch
.end method

.method protected isPrimaryFocused(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected rawInitDockSide()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    return-void
.end method

.method setAdjustedForIme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAdjustedForIme:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method public setDockSide(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockSide:I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$f1jGMDp8LuET7OfOI3NNv4LMOYw;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$f1jGMDp8LuET7OfOI3NNv4LMOYw;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setFocusedStack(Landroid/app/ActivityManager$StackInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackWindowingMode:I

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$NAByAMvCuyZkA4GqyBStMFTafv4;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setGuideView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mGuideViewVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method setMinimizedDockStack(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mAnimating:Z

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mDockedStackMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method

.method setMinimizedDockStack(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$wfgTxv16SpQrkO3ii2rB4gV_-qc;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$wfgTxv16SpQrkO3ii2rB4gV_-qc;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/-$$Lambda$FocusedFrameView$zO5Ti6HXgCyh_lswArP0I9cQ4Xc;-><init>(Lcom/android/systemui/stackdivider/FocusedFrameView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method setRemovedDockDivider(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mRemovedDockDivider:Z

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/FocusedFrameView;->layoutFocusedFrameView()V

    return-void
.end method
