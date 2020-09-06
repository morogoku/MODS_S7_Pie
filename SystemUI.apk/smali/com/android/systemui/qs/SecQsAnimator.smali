.class public Lcom/android/systemui/qs/SecQsAnimator;
.super Ljava/lang/Object;
.source "SecQsAnimator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTopYDiff:I

.field private mBarController:Lcom/android/systemui/bar/BarController;

.field private mBigClock:Lcom/android/systemui/statusbar/policy/QSClock;

.field private mBigDate:Lcom/android/systemui/statusbar/policy/DateView;

.field private mBigTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mContext:Landroid/content/Context;

.field private mDetailText:Landroid/view/View;

.field private mExpandButtonsContainer:Landroid/view/View;

.field private mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeaderButtonsAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderButtonsContainer:Landroid/view/View;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mLastRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMoreAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mMultiUserSwitch:Landroid/view/View;

.field private mMultiUserSwitchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonFirstPageTopRowEndDelay:F

.field private mNonFirstPageTopRowStartDelay:F

.field private mNonfirstPageOtherRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageTopRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mOtherRowEndDelay:F

.field private mOtherRowStartDelay:F

.field private mPageIndicatorAlphaAnimation:Lcom/android/systemui/qs/TouchAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mPowerAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mPowerButtonContainer:Landroid/view/View;

.field private mQSSecurityFooterAlphaAnimation:Lcom/android/systemui/qs/TouchAnimator;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

.field private mQuickQsLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSearchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mSearchButtonContainer:Landroid/view/View;

.field private mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSecondRowEndDelay:F

.field private mSecondRowStartDelay:F

.field private mSettingAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingButtonnContainer:Landroid/view/View;

.field private mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

.field private mSmallDate:Landroid/view/View;

.field private mSmallTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTileLayout:Landroid/view/View;

.field private final mTopFiveQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopLastQs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopRowEndDelay:F

.field private mTopSecondRowQuickQsBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

.field private mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    new-instance v0, Lcom/android/systemui/qs/SecQsAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsAnimator$1;-><init>(Lcom/android/systemui/qs/SecQsAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    new-instance v0, Lcom/android/systemui/qs/SecQsAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsAnimator$2;-><init>(Lcom/android/systemui/qs/SecQsAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iput-object p3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iput-object p4, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQsAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    goto :goto_0

    :cond_1
    const-string v1, "SecQsAnimator"

    const-string v2, "QS Not using page layout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a0542

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QSClock;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->useWallpaperTextColor(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v3, 0x7f0a0543

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a00a3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/QSClock;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBigClock:Lcom/android/systemui/statusbar/policy/QSClock;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBigClock:Lcom/android/systemui/statusbar/policy/QSClock;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QSClock;->useWallpaperTextColor(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBigDate:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a04a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0507

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingButtonnContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0332

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0355

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiUserSwitch:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mDetailText:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0190

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mExpandButtonsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsContainer:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecQsAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecQsAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/SecQsAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastPosition:F

    return v0
.end method

.method private clearAnimationState()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eq p2, p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method private updateAnimators()V
    .locals 65

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v9, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v13, v12, [I

    new-array v14, v12, [I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v12, :cond_1

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v12}, Lcom/android/systemui/bar/BarController;->getOnTopQSBarsHeight()I

    move-result v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v15, :cond_2

    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v15}, Lcom/android/systemui/bar/BarController;->getHiddenExpandedBarsHeight()I

    move-result v15

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    move/from16 v18, v11

    iget-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v11

    move-object/from16 v19, v9

    iget-object v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v12

    sub-int/2addr v9, v15

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v9, v8

    sub-int/2addr v11, v9

    iget-object v8, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v8}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v9}, Lcom/android/systemui/qs/PagedTileLayout;->getRowCount()I

    move-result v9

    move-object/from16 v21, v7

    iget-object v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v22, v6

    const v6, 0x7f070603

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v7}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v12

    int-to-float v7, v7

    move/from16 v23, v12

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v24, v10

    move/from16 v10, v18

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    move/from16 v25, v9

    const/16 v26, 0x0

    const/16 v27, 0x1

    if-eqz v18, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Lcom/android/systemui/plugins/qs/QSTile;

    move-object/from16 v28, v12

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v12, v9}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v12

    if-nez v12, :cond_3

    move-object/from16 v29, v5

    const-string v5, "SecQsAnimator"

    move-object/from16 v30, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v3

    const-string/jumbo v3, "tileView is null "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object v9, v2

    move v2, v8

    move-object/from16 v39, v13

    move-object/from16 v37, v14

    move/from16 v40, v15

    goto/16 :goto_4

    :cond_3
    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v29, v5

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v3

    move-object v4, v12

    check-cast v4, Lcom/android/systemui/qs/tileimpl/QSTileView;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getLabel()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v5

    if-ge v10, v8, :cond_7

    move/from16 v32, v8

    iget-object v8, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v8

    if-nez v8, :cond_4

    move-object v9, v2

    move-object/from16 v39, v13

    move-object/from16 v37, v14

    move/from16 v40, v15

    move/from16 v2, v32

    goto/16 :goto_4

    :cond_4
    move-object/from16 v33, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->setAlpha(F)V

    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v13, v2, v5}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    invoke-direct {v0, v14, v3, v5}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v2, 0x0

    aget v18, v14, v2

    aget v34, v13, v2

    sub-int v2, v18, v34

    aget v18, v14, v27

    aget v34, v13, v27

    sub-int v18, v18, v34

    move-object/from16 v35, v3

    add-int v3, v18, v15

    iput v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBackgroundTopYDiff:I

    if-nez v10, :cond_6

    if-eqz v11, :cond_6

    move-object/from16 v36, v5

    iget-boolean v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v5, :cond_5

    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v5

    aget v18, v14, v27

    move-object/from16 v37, v14

    iget-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v14, v9}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/plugins/qs/QSTileView;->getHeight()I

    move-result v14

    add-int v14, v18, v14

    int-to-float v14, v14

    aget v18, v13, v27

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v34

    move-object/from16 v38, v5

    add-int v5, v18, v34

    int-to-float v5, v5

    sub-float v5, v7, v5

    move-object/from16 v39, v13

    int-to-float v13, v15

    add-float/2addr v5, v13

    sub-float v13, v7, v5

    sub-float v13, v14, v13

    move/from16 v40, v15

    int-to-float v15, v11

    div-float/2addr v13, v15

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v13, v15, v13

    iput v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    sub-float v13, v7, v5

    sub-float v13, v14, v13

    move-object/from16 v41, v9

    int-to-float v9, v11

    div-float/2addr v13, v9

    sub-float v9, v15, v13

    iput v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageTopRowEndDelay:F

    int-to-float v9, v6

    sub-float v9, v14, v9

    sub-float v13, v7, v5

    sub-float/2addr v9, v13

    int-to-float v13, v11

    div-float/2addr v9, v13

    iput v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageTopRowStartDelay:F

    goto :goto_3

    :cond_5
    move-object/from16 v41, v9

    move-object/from16 v39, v13

    move-object/from16 v37, v14

    move/from16 v40, v15

    goto :goto_3

    :cond_6
    move-object/from16 v36, v5

    move-object/from16 v41, v9

    move-object/from16 v39, v13

    move-object/from16 v37, v14

    move/from16 v40, v15

    :goto_3
    const-string/jumbo v5, "translationX"

    const/4 v9, 0x2

    new-array v13, v9, [F

    const/4 v14, 0x0

    aput v26, v13, v14

    int-to-float v15, v2

    aput v15, v13, v27

    invoke-virtual {v1, v8, v5, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    const-string/jumbo v13, "translationY"

    new-array v15, v9, [F

    aput v26, v15, v14

    int-to-float v14, v3

    aput v14, v15, v27

    invoke-virtual {v5, v8, v13, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    const-string/jumbo v13, "translationX"

    new-array v14, v9, [F

    neg-int v15, v2

    int-to-float v15, v15

    const/16 v17, 0x0

    aput v15, v14, v17

    aput v26, v14, v27

    invoke-virtual {v5, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    const-string/jumbo v13, "translationY"

    new-array v14, v9, [F

    neg-int v9, v3

    int-to-float v9, v9

    aput v9, v14, v17

    aput v26, v14, v27

    invoke-virtual {v5, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    iget v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v5, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string v5, "alpha"

    const/4 v9, 0x2

    new-array v13, v9, [F

    fill-array-data v13, :array_0

    move-object/from16 v9, v33

    invoke-virtual {v9, v4, v5, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    const v13, 0x3e4ccccd    # 0.2f

    invoke-virtual {v5, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v5

    iget v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v5, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v45, v1

    move-object v15, v4

    move/from16 v60, v7

    move-object/from16 v43, v9

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move-object/from16 v54, v22

    move-object/from16 v52, v29

    move-object/from16 v49, v30

    move-object/from16 v48, v31

    move/from16 v59, v32

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move-object/from16 v8, v37

    move/from16 v57, v40

    move-object/from16 v58, v41

    goto/16 :goto_9

    :cond_7
    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move/from16 v32, v8

    move-object/from16 v41, v9

    move-object/from16 v39, v13

    move-object/from16 v37, v14

    move/from16 v40, v15

    move-object v9, v2

    move/from16 v2, v32

    if-gt v2, v10, :cond_b

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    if-ge v10, v3, :cond_b

    iget-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v5, v41

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/QuickQSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_4
    move v8, v2

    move-object v2, v9

    move/from16 v9, v25

    move-object/from16 v12, v28

    move-object/from16 v5, v29

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v14, v37

    move-object/from16 v13, v39

    move/from16 v15, v40

    goto/16 :goto_2

    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8}, Lcom/android/systemui/plugins/qs/QSTileView;->setAlpha(F)V

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move-object/from16 v8, v37

    invoke-direct {v0, v8, v13, v14}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    aget v15, v8, v27

    aget v18, v39, v27

    sub-int v15, v15, v18

    if-ne v10, v2, :cond_a

    if-eqz v11, :cond_a

    move/from16 v42, v15

    iget-boolean v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v15, :cond_9

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v15

    aget v18, v8, v27

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v32

    add-int v18, v18, v32

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v32

    move-object/from16 v43, v9

    add-int v9, v18, v32

    int-to-float v9, v9

    aget v18, v39, v27

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v32

    move-object/from16 v44, v15

    add-int v15, v18, v32

    int-to-float v15, v15

    sub-float v15, v7, v15

    move-object/from16 v45, v1

    move-object/from16 v46, v4

    move/from16 v1, v40

    int-to-float v4, v1

    add-float/2addr v15, v4

    int-to-float v4, v6

    sub-float v4, v9, v4

    sub-float v18, v7, v15

    sub-float v4, v4, v18

    move/from16 v47, v1

    int-to-float v1, v11

    div-float/2addr v4, v1

    iput v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    sub-float v1, v7, v15

    sub-float v1, v9, v1

    int-to-float v4, v11

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    iput v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowEndDelay:F

    goto :goto_5

    :cond_9
    move-object/from16 v45, v1

    move-object/from16 v46, v4

    move-object/from16 v43, v9

    move/from16 v47, v40

    goto :goto_5

    :cond_a
    move-object/from16 v45, v1

    move-object/from16 v46, v4

    move-object/from16 v43, v9

    move/from16 v42, v15

    move/from16 v47, v40

    :goto_5
    const-string/jumbo v1, "translationY"

    const/4 v4, 0x2

    new-array v9, v4, [F

    const/4 v15, 0x0

    aput v26, v9, v15

    iget v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBackgroundTopYDiff:I

    int-to-float v15, v15

    aput v15, v9, v27

    move-object/from16 v15, v31

    invoke-virtual {v15, v3, v1, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v9, "alpha"

    move-object/from16 v48, v15

    new-array v15, v4, [F

    fill-array-data v15, :array_1

    invoke-virtual {v1, v3, v9, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v1, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    const-string/jumbo v1, "translationY"

    new-array v9, v4, [F

    neg-int v15, v6

    int-to-float v15, v15

    const/16 v16, 0x0

    aput v15, v9, v16

    aput v26, v9, v27

    move-object/from16 v15, v30

    invoke-virtual {v15, v12, v1, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v9, "alpha"

    move-object/from16 v49, v15

    new-array v15, v4, [F

    fill-array-data v15, :array_2

    invoke-virtual {v1, v12, v9, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowEndDelay:F

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move/from16 v59, v2

    move-object/from16 v58, v5

    move/from16 v60, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move-object/from16 v54, v22

    move-object/from16 v52, v29

    goto :goto_6

    :cond_b
    move-object/from16 v45, v1

    move-object/from16 v46, v4

    move-object/from16 v43, v9

    move-object/from16 v49, v30

    move-object/from16 v48, v31

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move-object/from16 v8, v37

    move/from16 v47, v40

    move-object/from16 v5, v41

    invoke-direct {v0, v10}, Lcom/android/systemui/qs/SecQsAnimator;->isIconInAnimatedRow(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "translationY"

    const/4 v3, 0x2

    new-array v4, v3, [F

    neg-int v9, v6

    int-to-float v9, v9

    const/4 v15, 0x0

    aput v9, v4, v15

    aput v26, v4, v27

    move-object/from16 v9, v29

    invoke-virtual {v9, v12, v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v4, "alpha"

    new-array v15, v3, [F

    fill-array-data v15, :array_3

    invoke-virtual {v1, v12, v4, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowEndDelay:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move/from16 v59, v2

    move-object/from16 v58, v5

    move/from16 v60, v7

    move-object/from16 v52, v9

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move-object/from16 v54, v22

    :goto_6
    move-object/from16 v15, v46

    move/from16 v57, v47

    goto/16 :goto_9

    :cond_c
    move-object/from16 v9, v29

    mul-int v1, v2, v25

    if-ge v10, v1, :cond_e

    mul-int/lit8 v1, v2, 0x2

    if-ne v10, v1, :cond_d

    if-eqz v11, :cond_d

    iget-boolean v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v1, :cond_d

    invoke-direct {v0, v8, v13, v14}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v3

    aget v4, v8, v27

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v4, v15

    move-object/from16 v15, v46

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v4, v4, v18

    int-to-float v4, v4

    aget v18, v39, v27

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v29

    move-object/from16 v50, v1

    add-int v1, v18, v29

    int-to-float v1, v1

    sub-float v1, v7, v1

    move-object/from16 v51, v3

    move-object/from16 v52, v9

    move/from16 v3, v47

    int-to-float v9, v3

    add-float/2addr v1, v9

    int-to-float v9, v6

    sub-float v9, v4, v9

    sub-float v18, v7, v1

    sub-float v9, v9, v18

    move/from16 v53, v3

    int-to-float v3, v11

    div-float/2addr v9, v3

    iput v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOtherRowStartDelay:F

    sub-float v3, v7, v1

    sub-float v3, v4, v3

    int-to-float v9, v11

    div-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v3

    iput v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOtherRowEndDelay:F

    goto :goto_7

    :cond_d
    move-object/from16 v52, v9

    move-object/from16 v15, v46

    move/from16 v53, v47

    :goto_7
    const-string/jumbo v1, "translationY"

    const/4 v3, 0x2

    new-array v4, v3, [F

    neg-int v9, v6

    int-to-float v9, v9

    const/16 v16, 0x0

    aput v9, v4, v16

    aput v26, v4, v27

    move-object/from16 v9, v22

    invoke-virtual {v9, v12, v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v4, "alpha"

    move-object/from16 v54, v9

    new-array v9, v3, [F

    fill-array-data v9, :array_4

    invoke-virtual {v1, v12, v4, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOtherRowStartDelay:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOtherRowEndDelay:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move/from16 v59, v2

    move-object/from16 v58, v5

    move/from16 v60, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move/from16 v57, v53

    goto/16 :goto_9

    :cond_e
    move-object/from16 v52, v9

    move-object/from16 v54, v22

    move-object/from16 v15, v46

    move/from16 v53, v47

    mul-int v1, v2, v25

    rem-int v1, v10, v1

    if-ge v1, v2, :cond_11

    mul-int v1, v2, v25

    rem-int v1, v10, v1

    if-nez v1, :cond_f

    if-eqz v11, :cond_f

    iget-boolean v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-nez v1, :cond_f

    invoke-direct {v0, v8, v13, v14}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v3

    aget v4, v8, v27

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    aget v9, v39, v27

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v9, v9, v18

    int-to-float v9, v9

    sub-float v9, v7, v9

    move-object/from16 v55, v1

    move-object/from16 v56, v3

    move/from16 v1, v53

    int-to-float v3, v1

    add-float/2addr v9, v3

    mul-int v3, v2, v25

    div-int v3, v10, v3

    move/from16 v57, v1

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentItem()I

    move-result v1

    if-ne v3, v1, :cond_10

    sub-float v1, v7, v9

    sub-float v1, v4, v1

    int-to-float v3, v11

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    iput v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageTopRowEndDelay:F

    int-to-float v1, v6

    sub-float v1, v4, v1

    sub-float v3, v7, v9

    sub-float/2addr v1, v3

    int-to-float v3, v11

    div-float/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageTopRowStartDelay:F

    goto :goto_8

    :cond_f
    move/from16 v57, v53

    :cond_10
    :goto_8
    const-string/jumbo v1, "translationY"

    const/4 v3, 0x2

    new-array v4, v3, [F

    neg-int v9, v6

    int-to-float v9, v9

    const/16 v16, 0x0

    aput v9, v4, v16

    aput v26, v4, v27

    move-object/from16 v9, v21

    invoke-virtual {v9, v12, v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v4, "alpha"

    move-object/from16 v58, v5

    new-array v5, v3, [F

    fill-array-data v5, :array_5

    invoke-virtual {v1, v12, v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageTopRowStartDelay:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageTopRowEndDelay:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move/from16 v59, v2

    move/from16 v60, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_9

    :cond_11
    move-object/from16 v58, v5

    move-object/from16 v9, v21

    move/from16 v57, v53

    mul-int v1, v2, v25

    rem-int v1, v10, v1

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_12

    const-string/jumbo v1, "translationY"

    const/4 v3, 0x2

    new-array v4, v3, [F

    neg-int v5, v6

    int-to-float v5, v5

    const/16 v16, 0x0

    aput v5, v4, v16

    aput v26, v4, v27

    move-object/from16 v5, v20

    invoke-virtual {v5, v12, v1, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v4, "alpha"

    move/from16 v59, v2

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    invoke-virtual {v1, v12, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowStartDelay:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowEndDelay:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move/from16 v60, v7

    move-object/from16 v4, v19

    goto :goto_9

    :cond_12
    move/from16 v59, v2

    move-object/from16 v5, v20

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v3, v2, [F

    neg-int v4, v6

    int-to-float v4, v4

    const/16 v16, 0x0

    aput v4, v3, v16

    aput v26, v3, v27

    move-object/from16 v4, v19

    invoke-virtual {v4, v12, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const-string v3, "alpha"

    move/from16 v60, v7

    new-array v7, v2, [F

    fill-array-data v7, :array_7

    invoke-virtual {v1, v12, v3, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOtherRowStartDelay:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mOtherRowEndDelay:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :goto_9
    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    nop

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object v14, v8

    move-object/from16 v21, v9

    move/from16 v9, v25

    move-object/from16 v12, v28

    move-object/from16 v13, v39

    move-object/from16 v2, v43

    move-object/from16 v1, v45

    move-object/from16 v3, v48

    move-object/from16 v4, v49

    move-object/from16 v5, v52

    move-object/from16 v22, v54

    move/from16 v15, v57

    move/from16 v8, v59

    move/from16 v7, v60

    goto/16 :goto_2

    :cond_13
    move-object/from16 v45, v1

    move-object/from16 v43, v2

    move-object/from16 v48, v3

    move-object/from16 v49, v4

    move-object/from16 v52, v5

    move/from16 v60, v7

    move/from16 v59, v8

    move-object/from16 v39, v13

    move-object v8, v14

    move/from16 v57, v15

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    move-object/from16 v54, v22

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    const/4 v7, 0x2

    new-array v12, v7, [F

    int-to-float v7, v11

    const/4 v13, 0x0

    aput v7, v12, v13

    aput v26, v12, v27

    invoke-virtual {v1, v2, v3, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    const/4 v7, 0x2

    new-array v12, v7, [F

    fill-array-data v12, :array_8

    invoke-virtual {v1, v2, v3, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQSSecurityFooterAlphaAnimation:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v45

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v2, v43

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v3, v48

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowQuickQsBuilder:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v7, v49

    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v12

    iput-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v12, v52

    invoke-virtual {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    move-object/from16 v13, v54

    invoke-virtual {v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/qs/SecQsAnimator;->mLastRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v14, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v15, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    move-object/from16 v61, v1

    const-string/jumbo v1, "translationY"

    move-object/from16 v62, v2

    move-object/from16 v63, v3

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/16 v16, 0x0

    aput v26, v3, v16

    int-to-float v2, v6

    aput v2, v3, v27

    invoke-virtual {v14, v15, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const-string v3, "alpha"

    const/4 v14, 0x2

    new-array v15, v14, [F

    fill-array-data v15, :array_9

    invoke-virtual {v1, v2, v3, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageTopRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageOtherRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v2, 0x3f6e147b    # 0.93f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_a

    invoke-virtual {v1, v2, v3, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPageIndicatorAlphaAnimation:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateHeaderAnimators()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateHeightAnimators()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        -0x3fa00000    # -3.5f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        -0x3fa00000    # -3.5f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateHeaderAnimators()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070602

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    if-eqz v1, :cond_2

    neg-float v6, v6

    :cond_2
    new-array v7, v5, [I

    new-array v8, v5, [I

    iget-object v9, v0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v9}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsContainer:Landroid/view/View;

    invoke-direct {v0, v7, v10, v9}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    iget-object v10, v0, Lcom/android/systemui/qs/SecQsAnimator;->mExpandButtonsContainer:Landroid/view/View;

    invoke-direct {v0, v8, v10, v9}, Lcom/android/systemui/qs/SecQsAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    aget v10, v8, v3

    aget v11, v7, v3

    sub-int/2addr v10, v11

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallClock:Lcom/android/systemui/statusbar/policy/QSClock;

    const-string v13, "alpha"

    new-array v14, v5, [F

    fill-array-data v14, :array_0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallDate:Landroid/view/View;

    const-string v13, "alpha"

    new-array v14, v5, [F

    fill-array-data v14, :array_1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBigClock:Lcom/android/systemui/statusbar/policy/QSClock;

    const-string v13, "alpha"

    new-array v14, v5, [F

    fill-array-data v14, :array_2

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBigDate:Lcom/android/systemui/statusbar/policy/DateView;

    const-string v13, "alpha"

    new-array v14, v5, [F

    fill-array-data v14, :array_3

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mDetailText:Landroid/view/View;

    const-string v13, "alpha"

    new-array v14, v5, [F

    fill-array-data v14, :array_4

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v12, v13, v12

    const v14, 0x3f266666    # 0.65f

    mul-float/2addr v12, v14

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mBigTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsContainer:Landroid/view/View;

    const-string/jumbo v15, "translationY"

    new-array v14, v5, [F

    const/16 v16, 0x0

    aput v16, v14, v2

    if-eqz v4, :cond_3

    move/from16 v13, v16

    goto :goto_2

    :cond_3
    int-to-float v13, v10

    :goto_2
    aput v13, v14, v3

    invoke-virtual {v11, v12, v15, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchButtonContainer:Landroid/view/View;

    const-string/jumbo v13, "translationX"

    new-array v14, v5, [F

    aput v6, v14, v2

    aput v16, v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchButtonContainer:Landroid/view/View;

    const-string v13, "alpha"

    new-array v14, v5, [F

    sget-boolean v15, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_BIXBY_ON_POWER_KEY:Z

    if-eqz v15, :cond_4

    move/from16 v15, v16

    goto :goto_3

    :cond_4
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_3
    aput v15, v14, v2

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    sget-boolean v12, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_BIXBY_ON_POWER_KEY:Z

    if-eqz v12, :cond_5

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    sub-float v13, v15, v12

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v13, v12

    goto :goto_4

    :cond_5
    move/from16 v13, v16

    :goto_4
    invoke-virtual {v11, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingButtonnContainer:Landroid/view/View;

    const-string/jumbo v13, "translationX"

    new-array v14, v5, [F

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v15

    if-eqz v15, :cond_6

    move/from16 v15, v16

    goto :goto_5

    :cond_6
    move v15, v6

    :goto_5
    aput v15, v14, v2

    aput v16, v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiUserSwitch:Landroid/view/View;

    const-string/jumbo v13, "translationX"

    new-array v14, v5, [F

    aput v6, v14, v2

    aput v16, v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiUserSwitchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreButtonContainer:Landroid/view/View;

    const-string v13, "alpha"

    new-array v14, v5, [F

    fill-array-data v14, :array_5

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v12

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v13, v12

    invoke-virtual {v11, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v11, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerButtonContainer:Landroid/view/View;

    const-string/jumbo v13, "translationX"

    new-array v5, v5, [F

    aput v6, v5, v2

    aput v16, v5, v3

    invoke-virtual {v11, v12, v13, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/qs/SecQsAnimator;->mTopRowEndDelay:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x3fa00000    # -3.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        -0x3fa00000    # -3.5f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3fc00000    # 1.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3fc00000    # 1.5f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3fc00000    # 1.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateHeightAnimators()V
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickQSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    :goto_1
    move v1, v2

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopFiveQs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTileLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopLastQs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onPanelHeightUpdated(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/bar/BarController;->getOnTopQSBarsHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, p1, v2

    sub-float v6, v1, v2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sysui_qqs_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNumQuickTiles:I

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qqs_count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_0
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public setBarController(Lcom/android/systemui/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBarController:Lcom/android/systemui/bar/BarController;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->updateAnimators()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsAnimator;->clearAnimationState()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBigTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiUserSwitchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    return-void
.end method

.method public setPosition(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnKeyguard:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBigTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isTransitionAnimating()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    iget-object v6, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailExpandTriggeredAnimating()Z

    move-result v6

    if-eqz v6, :cond_7

    move v1, v2

    nop

    :cond_7
    iput p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastPosition:F

    iget-boolean v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mOnFirstPage:Z

    if-eqz v2, :cond_d

    if-nez v3, :cond_8

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QuickQSPanel;->setAlpha(F)V

    :cond_8
    if-nez v3, :cond_9

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/QuickQSPanel;->setTranslationY(F)V

    :cond_9
    if-nez v3, :cond_a

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_a
    if-nez v3, :cond_b

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowQuickQsBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_b
    if-nez v3, :cond_c

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mTopSecondRowTileBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQuickQsLabelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mLastRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageQuickAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageTopRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageSecondRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mNonfirstPageOtherRowAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mStaticHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPageIndicatorAlphaAnimation:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQSSecurityFooterAlphaAnimation:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSmallTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_e

    move v4, v5

    goto :goto_6

    :cond_e
    move v4, p1

    :goto_6
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mBigTimeAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_f

    move v4, v5

    goto :goto_7

    :cond_f
    move v4, p1

    :goto_7
    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    if-nez v3, :cond_10

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSearchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_10
    if-nez v3, :cond_11

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mSettingAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_11
    if-nez v3, :cond_12

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMoreAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_12
    if-nez v3, :cond_13

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mMultiUserSwitchAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_13
    if-nez v3, :cond_14

    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mPowerAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_14
    iget-object v2, p0, Lcom/android/systemui/qs/SecQsAnimator;->mHeaderButtonsAnimBuilder:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_16

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    move v5, p1

    nop

    :cond_16
    :goto_8
    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    return-void
.end method

.method public setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator;->mQsTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    return-void
.end method
