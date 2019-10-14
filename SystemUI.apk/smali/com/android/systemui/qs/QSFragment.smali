.class public Lcom/android/systemui/qs/QSFragment;
.super Landroid/app/Fragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mBarController:Lcom/android/systemui/bar/BarController;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mCurrentOrientation:I

.field private mDelay:J

.field private mExpandButtonContainer:Landroid/view/View;

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mInitDraw:Z

.field private final mInitDrawListerner:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mKeyguardShowing:Z

.field private mLastQSExpansion:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mInitDraw:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$4;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mInitDrawListerner:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/qs/QSFragment$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$5;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSFragment;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mInitDraw:Z

    return p1
.end method

.method private updateQsState()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    goto :goto_3

    :cond_3
    :goto_2
    nop

    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_6

    :cond_5
    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/QSServiceBox;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->pagedTileLayoutVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-eqz v3, :cond_7

    const/16 v2, 0x8

    nop

    :cond_7
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method public disable(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->disable(IIZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/bar/BarController;->disable(IIZ)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/bar/BarController;->getHiddenExpandedBarsHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getMeasuredHeight()I

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v1}, Lcom/android/systemui/bar/BarController;->getOnTopQSBarsHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public hideImmediately()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method isExpanded()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return v0
.end method

.method isListening()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyCustomizeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->hasFooter()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQsAnimator;->onRtlChanged()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mCurrentOrientation:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13038d

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0197

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isShowingDetail()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPanelHeightUpdated(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQsAnimator;->onPanelHeightUpdated(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQsMinExpansionHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/bar/BarController;->onPanelHeightUpdated(FI)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a0431

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mInitDrawListerner:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const v0, 0x7f0a042a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSServiceBox;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mExpandButtonContainer:Landroid/view/View;

    const v0, 0x7f0a0410

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    const v0, 0x7f0a0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v0, 0x7f0a0430

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/SecQuickStatusBarHeader;Landroid/view/View;Lcom/android/systemui/qs/QSServiceBox;)V

    new-instance v0, Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v3, 0x7f0a042d

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/qs/SecQsAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    const v0, 0x7f0a0429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    new-instance v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQsAnimator;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    if-eqz p2, :cond_0

    const-string v0, "expanded"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v0, "listening"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public setBarController(Lcom/android/systemui/bar/BarController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/BarController;->setQSPanel(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/BarController;->setQSBarCallback(Lcom/android/systemui/bar/BarController$QSBarCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setBarController(Lcom/android/systemui/bar/BarController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQsAnimator;->setBarController(Lcom/android/systemui/bar/BarController;)V

    :cond_1
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQsAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQsAnimator;->setOnKeyguard(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->setOnKeyguard(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bar/BarController;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    goto :goto_0

    :cond_1
    nop

    move v3, p2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mInitDraw:Z

    if-eqz v4, :cond_3

    if-ne v2, v3, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float v4, p1, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v8}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v8}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v9}, Lcom/android/systemui/bar/BarController;->getQSBarsTranslation()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mBarController:Lcom/android/systemui/bar/BarController;

    iget-boolean v10, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    move v0, p1

    :goto_2
    invoke-virtual {v9, v0}, Lcom/android/systemui/bar/BarController;->setPosition(F)V

    :cond_6
    int-to-float v0, v7

    mul-float/2addr v0, v1

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-boolean v10, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    invoke-virtual {v9, v10, p1, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setExpansion(ZFF)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanel;->getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/android/systemui/qs/QSTileRevealController;->setExpansion(F)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    int-to-float v10, v7

    mul-float/2addr v10, v1

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSSecurityFooter;->hasFooter()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v10

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isShowingDetail()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    move v5, v6

    :goto_3
    invoke-virtual {v10, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mServiceBox:Lcom/android/systemui/qs/QSServiceBox;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v6, :cond_9

    int-to-float v6, v7

    mul-float/2addr v6, v1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSServiceBox;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v5}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailShowingAnimating()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    int-to-float v6, v7

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDetail;->setTranslationY(F)V

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->setFullyExpanded(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/SecQsAnimator;->setPosition(F)V

    :cond_b
    return-void
.end method
