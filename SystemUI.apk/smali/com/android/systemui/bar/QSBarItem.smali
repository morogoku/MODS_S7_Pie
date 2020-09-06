.class public abstract Lcom/android/systemui/bar/QSBarItem;
.super Lcom/android/systemui/bar/BarItem;
.source "QSBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/QSBarItem$QSCallback;
    }
.end annotation


# static fields
.field private static final SineInOut33:Landroid/view/animation/Interpolator;


# instance fields
.field protected mBarRootView:Landroid/view/ViewGroup;

.field protected mFraction:F

.field protected mOrientation:I

.field protected mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

.field protected mShowingExpandedBarAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field protected mStatusBarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/bar/QSBarItem;->SineInOut33:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/BarItem;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/bar/QSBarItem;->mFraction:F

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mShowingExpandedBarAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->updateAnimator()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mShowingExpandedBarAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getBarHeight()I
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected hideShowingExpandedBar(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mBarRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method

.method protected isKeyguardShowing()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/QSBarItem;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/QSBarItem;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowingWhenExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mOrientation:I

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public setPosition(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mFraction:F

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setQSCallback(Lcom/android/systemui/bar/QSBarItem$QSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/QSBarItem;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/bar/QSBarItem;->mStatusBarState:I

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bar/QSBarItem;->hideShowingExpandedBar(Z)V

    :cond_0
    return-void
.end method

.method public updateAlphaForAfterImages(F)V
    .locals 0

    return-void
.end method

.method public updateAnimator()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/bar/QSBarItem;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bar/QSBarItem;->SineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/QSBarItem;->mShowingExpandedBarAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
