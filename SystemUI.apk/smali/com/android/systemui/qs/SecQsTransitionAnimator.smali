.class public Lcom/android/systemui/qs/SecQsTransitionAnimator;
.super Ljava/lang/Object;
.source "SecQsTransitionAnimator.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;,
        Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;
    }
.end annotation


# static fields
.field private static final CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

.field private static final CustomInterpolatorPanelUp:Landroid/view/animation/Interpolator;

.field private static final SineInOut33:Landroid/view/animation/Interpolator;

.field private static final SineInOut90:Landroid/view/animation/Interpolator;

.field private static final SineOut33:Landroid/view/animation/Interpolator;

.field private static final SineOut60:Landroid/view/animation/Interpolator;

.field private static final SineOut80:Landroid/view/animation/Interpolator;


# instance fields
.field private mActiveArea:Landroid/view/View;

.field private mAvailableArea:Landroid/view/View;

.field private mBigClock:Landroid/view/View;

.field private mButtonArea:Landroid/view/View;

.field private mButtonContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mCustomizer:Landroid/view/View;

.field mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

.field private final mCustomizerHideAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCustomizerShowAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCustomizerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

.field private final mDetailHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mDetailShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDetailText:Landroid/widget/TextView;

.field private mDetailTextContainer:Landroid/view/View;

.field private mDetailView:Landroid/view/View;

.field private final mDetailViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailYDiff:I

.field private mExpandButtonContainer:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHideCustomizerSet:Landroid/animation/AnimatorSet;

.field private mHideDetailSet:Landroid/animation/AnimatorSet;

.field private mHideExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

.field private mIsCustomizerClosing:Z

.field private mIsCustomizerOpening:Z

.field private mIsCustomizerShowing:Z

.field private mIsDetailClosing:Z

.field private mIsDetailOpening:Z

.field private mIsDetailShowing:Z

.field private mOnKeyguard:Z

.field private mPanelHiddenYDiff:I

.field private mPanelShowingYDiff:I

.field private final mPanelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsFullyExpanded:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQuickQsPanel:Landroid/view/View;

.field private mShowCustomizerSet:Landroid/animation/AnimatorSet;

.field private mShowDetailSet:Landroid/animation/AnimatorSet;

.field private mShowExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

.field private mSmallTimeContainer:Landroid/view/View;

.field private mSummaryArea:Landroid/view/View;

.field private mSystemIconArea:Landroid/view/View;

.field private mTriggeredExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ed70a3d    # 0.42f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelUp:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f547ae1    # 0.83f

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v5, v5, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f2b851f    # 0.67f

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v6, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v5, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut60:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v5, v5, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/SecQsTransitionAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$2;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerShowAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/qs/SecQsTransitionAnimator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$4;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerHideAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearAnimationState()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mExpandButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/SecQsTransitionAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    return p1
.end method

.method private clearAnimationState()V
    .locals 4

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "clearAnimationState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    instance-of v3, v1, Lcom/android/systemui/qs/QSPanel;

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;->hideDetailAnimEnd()V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;->hideCustomizerAnimEnd()V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1, v2, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFII",
            "Landroid/animation/TimeInterpolator;",
            "Landroid/animation/Animator$AnimatorListener;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p8, :cond_0

    invoke-virtual {v0, p8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070587

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    const v1, 0x7f070588

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    const v1, 0x7f070569

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->updateView()V

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->updateAnimator()V

    return-void
.end method

.method public static synthetic lambda$showCustomizer$0(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowCustomizerSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateAnimator()V
    .locals 25

    move-object/from16 v9, p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowDetailSet:Landroid/animation/AnimatorSet;

    iget-object v10, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowDetailSet:Landroid/animation/AnimatorSet;

    const/16 v11, 0xa

    new-array v12, v11, [Landroid/animation/Animator;

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v13, 0x0

    aput-object v0, v12, v13

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v12, v14

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v15, 0x2

    aput-object v0, v12, v15

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v16, 0x3

    aput-object v0, v12, v16

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v17, 0x4

    aput-object v0, v12, v17

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v18, 0x5

    aput-object v0, v12, v18

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v19, 0x6

    aput-object v0, v12, v19

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v20, 0x7

    aput-object v0, v12, v20

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v21, 0x8

    aput-object v0, v12, v21

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    iget-object v8, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v22, 0x9

    aput-object v0, v12, v22

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideDetailSet:Landroid/animation/AnimatorSet;

    iget-object v10, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideDetailSet:Landroid/animation/AnimatorSet;

    new-array v12, v11, [Landroid/animation/Animator;

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    const/16 v6, 0x32

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v13

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v14

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v15

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v16

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v17

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    iget-object v8, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v18

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v19

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v20

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v21

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v22

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    iget-object v10, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    const/16 v12, 0xb

    new-array v8, v12, [Landroid/animation/Animator;

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    const/16 v23, 0x0

    move-object v0, v9

    move-object v12, v8

    move-object/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v13

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelUp:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v14

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v15

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelUp:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v16

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v17

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelUp:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v18

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v19

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x32

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v20

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v21

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v22

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    iget-object v8, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailShowAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    const/16 v6, 0x87

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v11

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    iget-object v10, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    const/16 v0, 0xb

    new-array v12, v0, [Landroid/animation/Animator;

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

    const/16 v5, 0x12c

    const/16 v6, 0x44

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v13

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v14

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v15

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v16

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x32

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v17

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v18

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v19

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v20

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v21

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

    iget-object v8, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailHideAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x85

    const/16 v6, 0xeb

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v22

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->CustomInterpolatorPanelDown:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v11

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowCustomizerSet:Landroid/animation/AnimatorSet;

    iget-object v10, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowCustomizerSet:Landroid/animation/AnimatorSet;

    const/16 v12, 0xf

    new-array v8, v12, [Landroid/animation/Animator;

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSystemIconArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    move-object v0, v9

    move-object v12, v8

    move-object/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v13

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v14

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v15

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v16

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v17

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v18

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v19

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v20

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelHiddenYDiff:I

    neg-int v0, v0

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v21

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v22

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v11

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v12, v1

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v23, 0xc

    aput-object v0, v12, v23

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v24, 0xd

    aput-object v0, v12, v24

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    iget-object v8, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerShowAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v12, v1

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideCustomizerSet:Landroid/animation/AnimatorSet;

    iget-object v10, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideCustomizerSet:Landroid/animation/AnimatorSet;

    const/16 v0, 0x11

    new-array v12, v0, [Landroid/animation/Animator;

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSystemIconArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x53

    const/16 v6, 0x32

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v13

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v14

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v15

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v16

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v17

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v18

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v19

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut33:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xe9

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v20

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelShowingYDiff:I

    neg-int v0, v0

    int-to-float v3, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    iget-object v8, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerHideAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v21

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x53

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v22

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v11

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v12, v1

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v23

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v12, v24

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v12, v1

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineOut80:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v5, 0x53

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v12, v1

    iget-object v1, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v0, v9, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailYDiff:I

    int-to-float v4, v0

    sget-object v7, Lcom/android/systemui/qs/SecQsTransitionAnimator;->SineInOut90:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    const/16 v5, 0x12c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->getAnimator(Landroid/view/View;Landroid/util/Property;FFIILandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v12, v1

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private updateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0434

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSystemIconArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSystemIconArea:Landroid/view/View;

    const-string v1, "SystemIcon"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    const-string v1, "ButtonContainer"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mExpandButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mExpandButtonContainer:Landroid/view/View;

    const-string v1, "ExpandButtonContainer"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    const-string v1, "BigClock"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    const-string v1, "SmallTimeContainer"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0414

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    const-string v1, "DetailTextContainer"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailText:Landroid/widget/TextView;

    const-string v1, "DetailText"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0431

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const-string v1, "QsPanel"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    const-string v1, "DetailView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    const-string v1, "QuickQsPanel"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizer:Landroid/view/View;

    const-string v1, "Customizer"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    const-string v1, "SummaryArea"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0405

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    const-string v1, "AvailableArea"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0401

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    const-string v1, "ActiveArea"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    const-string v1, "ButtonArea"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSystemIconArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mBigClock:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSmallTimeContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQuickQsPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailTextContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mSummaryArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mAvailableArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mActiveArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mButtonArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "SecQsTransitionAnimator state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsDetailOpening="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsDetailShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsDetailClosing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsCustomizerOpening="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsCustomizerShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsCustomizerClosing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mPanelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(F)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public isCustomizerShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

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

.method public isDetailExpandTriggeredAnimating()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    if-ne v0, v1, :cond_0

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

.method public isDetailShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

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

.method public isDetailShowingAnimating()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowDetailSet:Landroid/animation/AnimatorSet;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransitionAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

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

.method public setCustomizerCallback(Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

    return-void
.end method

.method public setDetailCallback(Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    return-void
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsFullyExpanded:Z

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mOnKeyguard:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isCustomizerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearAnimationState()V

    :cond_1
    return-void
.end method

.method public showCustomizer(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isTransitionAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerOpening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$XuTQEJSSf0MRrCR6mzcxuOhb5uc;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$SecQsTransitionAnimator$XuTQEJSSf0MRrCR6mzcxuOhb5uc;-><init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Customizer show animation started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsFullyExpanded:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearAnimationState()V

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsCustomizerClosing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideCustomizerSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Customizer hide animation started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showDetailView(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isTransitionAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailOpening:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mShowDetailSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    :goto_0
    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Detail show animation started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mQsFullyExpanded:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->clearAnimationState()V

    return-void

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mIsDetailClosing:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mTriggeredExpand:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideExpandTriggeredDetailSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mHideDetailSet:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    :goto_1
    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Detail hide animation started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
