.class public Lcom/android/systemui/servicebox/utils/SecTransition;
.super Ljava/lang/Object;
.source "SecTransition.java"


# instance fields
.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private mAdditionalTag:Ljava/lang/String;

.field private mAnimationState:I

.field private mAnimations:Landroid/animation/AnimatorSet;

.field private mContainer:Landroid/view/ViewGroup;

.field private mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

.field private final mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mSourceRootViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceRootViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSubOptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionOption;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRootView:Landroid/view/View;

.field private mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mTransitionNameWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionSourceViewParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;",
            ">;"
        }
    .end annotation
.end field

.field private mWithFade:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/systemui/servicebox/utils/SecTransitionOption;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    new-instance v2, Lcom/android/systemui/servicebox/utils/SecTransition$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/utils/SecTransition$1;-><init>(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v2, Lcom/android/systemui/servicebox/utils/SecTransition$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/utils/SecTransition$2;-><init>(Lcom/android/systemui/servicebox/utils/SecTransition;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-boolean p4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_WIDTH:I

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_HEIGHT:I

    iput-object p3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getTransitionType()I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    :cond_3
    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->searchTransitionName(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewParamsMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v3, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/utils/SecTransition;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/utils/SecTransition;->handleTransitionFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/utils/SecTransition;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/servicebox/utils/SecTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/servicebox/utils/SecTransition;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->removePreDrawListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/servicebox/utils/SecTransition;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->buildAnimations()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/servicebox/utils/SecTransition;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;",
            "Lcom/android/systemui/servicebox/utils/SecTransitionOption;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getStartDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasCustomInterpolator()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getCustomInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private addFadeAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-direct {p0, v0, p4}, Lcom/android/systemui/servicebox/utils/SecTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addGlobalAlphaAnimation(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v2

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addMoveAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v5, v3, [I

    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    if-nez p3, :cond_1

    new-instance v7, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v7, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    move-object v6, v7

    goto :goto_0

    :cond_1
    move-object/from16 v6, p3

    :goto_0
    iget v7, v6, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->locationOnScreenX:F

    float-to-int v7, v7

    const/4 v8, 0x0

    aput v7, v4, v8

    iget v7, v6, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->locationOnScreenY:F

    float-to-int v7, v7

    const/4 v9, 0x1

    aput v7, v4, v9

    new-array v7, v3, [I

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v10, v3, [I

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v11

    and-int/2addr v11, v9

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v11, :cond_2

    aget v11, v7, v8

    aget v13, v4, v8

    sub-int/2addr v11, v13

    aput v11, v10, v8

    goto :goto_1

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_3

    aget v11, v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v11, v13

    aget v13, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    sub-int/2addr v11, v13

    aput v11, v10, v8

    goto :goto_1

    :cond_3
    aget v11, v7, v8

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v14

    mul-float/2addr v13, v14

    mul-float/2addr v13, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    aget v13, v4, v8

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v15

    mul-float/2addr v14, v15

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    float-to-int v13, v13

    sub-int/2addr v11, v13

    aput v11, v10, v8

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_4

    aget v11, v7, v9

    aget v12, v4, v9

    sub-int/2addr v11, v12

    aput v11, v10, v9

    goto :goto_2

    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getMovePivot()I

    move-result v11

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_5

    aget v11, v7, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    aget v12, v4, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v10, v9

    goto :goto_2

    :cond_5
    aget v11, v7, v9

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    mul-float/2addr v13, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    aget v13, v4, v9

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v15

    mul-float/2addr v14, v15

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    float-to-int v12, v13

    sub-int/2addr v11, v12

    aput v11, v10, v9

    :goto_2
    new-array v11, v3, [I

    aget v12, v4, v8

    aget v13, v5, v8

    sub-int/2addr v12, v13

    aput v12, v11, v8

    aget v12, v4, v9

    aget v13, v5, v9

    sub-int/2addr v12, v13

    aput v12, v11, v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget v13, v6, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->x:F

    aget v14, v11, v8

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v14

    aget v15, v10, v8

    int-to-float v15, v15

    sub-float/2addr v14, v15

    iget v15, v6, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->y:F

    aget v8, v11, v9

    int-to-float v8, v8

    add-float/2addr v15, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v8

    aget v3, v10, v9

    int-to-float v3, v3

    sub-float/2addr v8, v3

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    move-object/from16 v17, v4

    const/4 v9, 0x2

    new-array v4, v9, [F

    const/4 v9, 0x0

    aput v13, v4, v9

    move-object/from16 v18, v5

    iget v5, v6, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->x:F

    move-object/from16 v19, v7

    aget v7, v11, v9

    int-to-float v7, v7

    add-float/2addr v5, v7

    aget v7, v10, v9

    int-to-float v7, v7

    add-float/2addr v5, v7

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v15, v5, v9

    iget v4, v6, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->y:F

    aget v9, v11, v7

    int-to-float v9, v9

    add-float/2addr v4, v9

    aget v9, v10, v7

    int-to-float v9, v9

    add-float/2addr v4, v9

    aput v4, v5, v7

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v15}, Landroid/view/View;->setY(F)V

    goto :goto_3

    :cond_6
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v7, 0x0

    aput v14, v5, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v9

    const/16 v16, 0x1

    aput v9, v5, v16

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v14}, Landroid/view/View;->setX(F)V

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v8, v4, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v4, v16

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Landroid/view/View;->setY(F)V

    :cond_7
    move-object/from16 v3, p0

    invoke-direct {v3, v12, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :cond_8
    :goto_4
    move-object/from16 v3, p0

    return-void
.end method

.method private addScaleAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez p3, :cond_1

    new-instance v4, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v4, v0}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    move-object v3, v4

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    iget v10, v3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->w:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v10, :cond_2

    move v10, v12

    goto :goto_1

    :cond_2
    iget v10, v3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->w:F

    div-float v10, v8, v10

    :goto_1
    iget v13, v3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->h:F

    cmpl-float v13, v13, v11

    if-nez v13, :cond_3

    move v13, v12

    goto :goto_2

    :cond_3
    iget v13, v3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;->h:F

    div-float v13, v9, v13

    :goto_2
    cmpl-float v14, v10, v11

    if-nez v14, :cond_4

    move v14, v12

    goto :goto_3

    :cond_4
    div-float v14, v12, v10

    :goto_3
    cmpl-float v15, v13, v11

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    div-float/2addr v12, v13

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v15

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    if-eqz v15, :cond_6

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotX(F)V

    goto :goto_5

    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v15

    and-int/2addr v15, v11

    if-eqz v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotX(F)V

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v17

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotX(F)V

    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v15

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v15

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v17

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotY(F)V

    :goto_6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasSourceViewCustomAnimation()Z

    move-result v17

    const/16 v18, 0x0

    if-nez v17, :cond_a

    move-object/from16 v19, v3

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    move/from16 v20, v8

    new-array v8, v11, [F

    aput v4, v8, v18

    mul-float v17, v4, v10

    aput v17, v8, v16

    invoke-static {v0, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v11, [F

    aput v5, v8, v18

    mul-float v17, v5, v13

    aput v17, v8, v16

    invoke-static {v0, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v19, v3

    move/from16 v20, v8

    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->hasTargetViewCustomAnimation()Z

    move-result v3

    if-nez v3, :cond_b

    mul-float v3, v6, v14

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    mul-float v3, v7, v12

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v11, [F

    mul-float v17, v6, v14

    aput v17, v8, v18

    aput v6, v8, v16

    invoke-static {v1, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v11, [F

    mul-float v11, v7, v12

    aput v11, v8, v18

    aput v7, v8, v16

    invoke-static {v1, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v8, p0

    invoke-direct {v8, v15, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addAnimations(Ljava/util/ArrayList;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-void

    :cond_c
    :goto_8
    move-object/from16 v8, p0

    return-void
.end method

.method private buildAnimations()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->addGlobalAlphaAnimation(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->consumeRemainedTransitionName(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SecTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty animations. Ignore transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mInternalAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private consumeRemainedTransitionName(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getClipBounds(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    neg-int v5, v5

    const/4 v6, 0x1

    aget v7, v2, v6

    neg-int v7, v7

    iget v8, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_WIDTH:I

    aget v4, v2, v4

    sub-int/2addr v8, v4

    iget v4, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->SCREEN_HEIGHT:I

    aget v6, v2, v6

    sub-int/2addr v4, v6

    invoke-direct {v3, v5, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :cond_3
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    :cond_4
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :cond_5
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_6
    return-object v3

    :cond_7
    :goto_0
    return-object v0

    :cond_8
    :goto_1
    return-object v0
.end method

.method private handleTransitionFinished(Z)V
    .locals 3

    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle transition finished. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const v1, 0x7f0a026a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    return-void
.end method

.method private hasFadeInSubOptions()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isFadeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method private isReadyToPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SecTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target view is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    if-eqz v0, :cond_1

    const-string v0, "SecTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation already started. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setAnimations(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->matchingTransitionName(Ljava/util/Set;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removePreDrawListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTopViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root view observer removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root view observer cannot removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target view observer removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target view observer cannot removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private searchTransitionName(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewNameMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    invoke-direct {v2, p1}, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->searchTransitionName(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setAnimations(Landroid/view/View;Landroid/view/View;)V
    .locals 10

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimations() targetView is invalid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isFadeEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mGlobalOption:Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-static {v3, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->combineOptions(Lcom/android/systemui/servicebox/utils/SecTransitionOption;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getClipFace()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;ZI)V

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getClipFace()I

    move-result v3

    invoke-direct {p0, p2, v4, v3}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;ZI)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionSourceViewParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;

    iget-object v5, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/animation/Animator;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getSourceViewCustomAnimator()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v9

    invoke-direct {p0, p1, v8, v9}, Lcom/android/systemui/servicebox/utils/SecTransition;->setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v5, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getTargetViewCustomAnimator()Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->getScalePivot()I

    move-result v8

    invoke-direct {p0, p2, v7, v8}, Lcom/android/systemui/servicebox/utils/SecTransition;->setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->needToTransition()Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isMoveEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addMoveAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->isScaleEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addScaleAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addFadeAnimation(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/servicebox/utils/SecTransitionViewParams;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    :cond_8
    return-void
.end method

.method private setClip(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;ZI)V

    return-void
.end method

.method private setClip(Landroid/view/View;ZI)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/servicebox/utils/SecTransition;->getClipBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private setTarget(Landroid/view/View;Landroid/animation/Animator;I)Landroid/animation/Animator;
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v0, p3, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    :goto_1
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    return-object p2

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTransitionNameWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->addOption(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V

    return-object p0
.end method

.method public addOption(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSubOptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 3

    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->removePreDrawListener()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/utils/SecTransition;->handleTransitionFinished(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    return-void
.end method

.method public go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "go targetView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->isReadyToPreDraw()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/servicebox/utils/SecTransition;->hasFadeInSubOptions()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mWithFade:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mSourceRootViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v0, "SecTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Predraw listener added. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->handleTransitionFinished(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mExternalAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mTargetRootView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public isReadyState()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    if-eqz v0, :cond_0

    const-string v0, "SecTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadyState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAdditionalTag(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/SecTransition;->mAdditionalTag:Ljava/lang/String;

    return-void
.end method

.method public setClipOnAll(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnParents(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    return-void
.end method

.method public setClipOnChildren(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;Z)V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnChildren(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setClipOnParents(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClip(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/servicebox/utils/SecTransition;->setClipOnParents(Landroid/view/View;Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
