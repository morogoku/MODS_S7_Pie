.class public Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;
.super Ljava/lang/Object;
.source "SecGlobalActionsAnimator.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionsAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsAnimator"


# instance fields
.field private final ALPHA_HIDE:F

.field private final ALPHA_SHOW:F

.field private final CONFIRM_ANIMATION_DURATION_DESCRIPTION:I

.field private final CONFIRM_ANIMATION_DURATION_ICON:I

.field private final CONFIRM_ANIMATION_DURATION_LIST:I

.field private final CONFIRM_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final CONFIRM_ANIMATION_SCALE:F

.field private final CONFIRM_ANIMATION_SCALE_ORIGIN:F

.field private final DIM_OPACITY:I

.field private final DIM_OPACITY_CONFIRM:I

.field private final HIDE_DIALOG_WITHOUT_DISMISS_DURATION:I

.field private final SAFE_MODE_CONFIRM_ANIMATION_DURATION_ALPHA:I

.field private final SHOW_DISMISS_ANIMATION_DURATION:I

.field private mBottomView:Landroid/view/View;

.field private mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

.field private final mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

.field private mConfirmDescriptionView:Landroid/view/View;

.field private mConfirmIconView:Landroid/view/ViewGroup;

.field private mConfirmationView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLandListView:Landroid/view/ViewGroup;

.field private mListView:Landroid/view/ViewGroup;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private mOriginalConfirmLocationX:F

.field private mOriginalConfirmLocationY:F

.field private mPowerOffIconView:Landroid/view/View;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelectedActionView:Landroid/view/ViewGroup;

.field private mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTargetListView:Landroid/view/ViewGroup;

.field private mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

.field private mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_SCALE_ORIGIN:F

    const v1, 0x3fa66666    # 1.3f

    iput v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_SCALE:F

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_DURATION_ICON:I

    const/16 v2, 0x190

    iput v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_DURATION_DESCRIPTION:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_DURATION_LIST:I

    iput v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->SHOW_DISMISS_ANIMATION_DURATION:I

    iput v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->SAFE_MODE_CONFIRM_ANIMATION_DURATION_ALPHA:I

    iput v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->HIDE_DIALOG_WITHOUT_DISMISS_DURATION:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->ALPHA_HIDE:F

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->ALPHA_SHOW:F

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0xcc

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->DIM_OPACITY:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->DIM_OPACITY_CONFIRM:I

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Lcom/samsung/android/globalactionsdlx/util/LogWrapper;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mBottomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addAnimatorListenerAdapter(Landroid/animation/AnimatorSet;Z)V
    .registers 4

    if-eqz p2, :cond_b

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$3;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$4;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_13
    return-void
.end method

.method private getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .registers 15

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const-string/jumbo v2, "scaleX"

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const v5, 0x3fa66666    # 1.3f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1f

    move v8, v5

    goto :goto_20

    :cond_1f
    move v8, v7

    :goto_20
    const/4 v9, 0x1

    aput v8, v4, v9

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const-string/jumbo v4, "scaleY"

    new-array v8, v3, [F

    iget-object v10, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v10

    aput v10, v8, v6

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move v5, v7

    :goto_3a
    aput v5, v8, v9

    invoke-static {v2, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const-string/jumbo v5, "y"

    new-array v8, v3, [F

    iget-object v10, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    aput v10, v8, v6

    if-eqz p1, :cond_54

    iget v10, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    goto :goto_5b

    :cond_54
    iget-object v10, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v10}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    :goto_5b
    aput v10, v8, v9

    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const-string/jumbo v8, "x"

    new-array v10, v3, [F

    iget-object v11, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getX()F

    move-result v11

    aput v11, v10, v6

    if-eqz p1, :cond_7d

    iget v11, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationX:F

    iget-object v12, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v11, v12

    goto :goto_91

    :cond_7d
    iget-object v11, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v12, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v11, v12}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    :goto_91
    aput v11, v10, v9

    invoke-static {v5, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    const-string v10, "alpha"

    new-array v11, v3, [F

    iget-object v12, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v6

    if-eqz p1, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v7, 0x0

    :goto_a9
    aput v7, v11, v9

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0x190

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v10, "alpha"

    new-array v11, v3, [I

    iget-object v12, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v12

    aput v12, v11, v6

    if-eqz p1, :cond_d7

    const/16 v12, 0xff

    goto :goto_d9

    :cond_d7
    const/16 v12, 0xcc

    :goto_d9
    aput v12, v11, v9

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v1, v10, v6

    aput-object v2, v10, v9

    aput-object v7, v10, v3

    const/4 v3, 0x3

    aput-object v8, v10, v3

    const/4 v3, 0x4

    aput-object v4, v10, v3

    const/4 v3, 0x5

    aput-object v5, v10, v3

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->CONFIRM_ANIMATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0x12c

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->addAnimatorListenerAdapter(Landroid/animation/AnimatorSet;Z)V

    return-object v0
.end method

.method private getOriginalLocationX(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method private getOriginalLocationY(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method private getSafeModeConfirmAnimation(Z)Landroid/animation/AnimatorSet;
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const-string/jumbo v3, "scaleX"

    const/4 v4, 0x2

    new-array v5, v4, [F

    iget-object v6, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const v6, 0x3fa66666    # 1.3f

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p1, :cond_21

    move v9, v6

    goto :goto_22

    :cond_21
    move v9, v8

    :goto_22
    const/4 v10, 0x1

    aput v9, v5, v10

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const-string/jumbo v5, "scaleY"

    new-array v9, v4, [F

    iget-object v11, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getScaleY()F

    move-result v11

    aput v11, v9, v7

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v6, v8

    :goto_3c
    aput v6, v9, v10

    invoke-static {v3, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const-string/jumbo v6, "y"

    new-array v9, v4, [F

    iget-object v11, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    aput v11, v9, v7

    if-eqz p1, :cond_56

    iget v11, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    goto :goto_5d

    :cond_56
    iget-object v11, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {v0, v11}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    :goto_5d
    aput v11, v9, v10

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v9, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v6, v9

    div-int/2addr v6, v4

    iget-object v9, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const-string/jumbo v11, "x"

    new-array v12, v4, [F

    iget-object v13, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    aput v13, v12, v7

    if-eqz p1, :cond_8f

    iget v13, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationX:F

    int-to-float v14, v6

    add-float/2addr v13, v14

    iget-object v14, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    goto :goto_a3

    :cond_8f
    iget-object v13, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v14, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v13, v14}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v13

    iget-object v14, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    :goto_a3
    aput v13, v12, v10

    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v2, v11, v7

    aput-object v3, v11, v10

    aput-object v5, v11, v4

    const/4 v12, 0x3

    aput-object v9, v11, v12

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_e1

    iget-object v13, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const-string v14, "alpha"

    new-array v4, v4, [F

    iget-object v12, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v12

    aput v12, v4, v7

    aput v8, v4, v10

    invoke-static {v13, v14, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v8, v10, [Landroid/animation/Animator;

    aput-object v4, v8, v7

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v8, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_102

    :cond_e1
    iget-object v12, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const-string v13, "alpha"

    new-array v4, v4, [F

    iget-object v14, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v4, v7

    aput v8, v4, v10

    invoke-static {v12, v13, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v8, v10, [Landroid/animation/Animator;

    aput-object v4, v8, v7

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v8, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_102
    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v11, v4, v7

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method private initViews()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getListView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getLandscapeListView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getBottomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mBottomView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmationView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    return-void
.end method

.method private initializeConfirmView()Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->createConfirmView()Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmationView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmDescriptionView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    return-object v0
.end method

.method private initializeConfirmViewForSafeMode()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initializeConfirmView()Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getPowerOffViewForSafeModeVI(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    return-void
.end method

.method public static synthetic lambda$startSetSafeModeAnimation$2(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->startAnimationForSafeModeOnConfirm(F)V

    return-void
.end method

.method public static synthetic lambda$startShowConfirmAnimation$0(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->saveOriginalConfirmViewLocation()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->setLocationForDescriptionView(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic lambda$startShowSafeModeAnimation$1(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->saveOriginalConfirmViewLocation()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->setLocationForDescriptionView(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getSafeModeConfirmAnimation(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private saveOriginalConfirmViewLocation()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationX(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationX:F

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getOriginalLocationY(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    return-void
.end method

.method private setLocationForDescriptionView(F)V
    .registers 5

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    sub-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    float-to-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private startAnimationForSafeModeOnConfirm(F)V
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mOriginalConfirmLocationY:F

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmDescriptionView:Landroid/view/View;

    float-to-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmIconView:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_7c

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mPowerOffIconView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v3, [F

    fill-array-data v5, :array_84

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$5;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v5, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v3, v5}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_7c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_84
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cancelHideConfirmAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public cancelShowConfirmAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public initializeSelectedActionView()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getSelectedActionView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mSelectedActionView:Landroid/view/ViewGroup;

    return-void
.end method

.method public isHideConfirmAnimationRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isSafeModeConfirm()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->isSafeModeConfirm()Z

    move-result v0

    return v0
.end method

.method public isShowConfirmAnimationRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mShowConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public setCallback(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initViews()V

    return-void
.end method

.method public setListViewLand()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setListViewPort()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mTargetListView:Landroid/view/ViewGroup;

    return-void
.end method

.method public showMainViewLand()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->setListViewLand()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public showMainViewPort()V
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->setListViewPort()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mListView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mLandListView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public startDismissAnimation(Z)V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    const-string v3, "alpha"

    new-array v6, v2, [F

    iget-object v7, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v7

    aput v7, v6, v5

    const/4 v7, 0x0

    aput v7, v6, v4

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_4f

    const-wide/16 v4, 0xc8

    goto :goto_51

    :cond_4f
    const-wide/16 v4, 0x12c

    :goto_51
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$2;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;Z)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mCallback:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;

    invoke-interface {v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v5, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startDismissConfirmAnimation()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startDismissSafeModeAnimation()V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getDefaultConfirmAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->getSafeModeConfirmAnimation(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mDismissConfirmAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startSetSafeModeAnimation()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->saveOriginalConfirmViewLocation()V

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initializeConfirmViewForSafeMode()V

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsAnimator$-VYtIDuqbxozKrtcBzXTq9H3Brw;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsAnimator$-VYtIDuqbxozKrtcBzXTq9H3Brw;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public startShowAnimation()V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    const-string v1, "#fafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_21

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    const-string v1, "#0A0A0A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :goto_21
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_6c

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mRootView:Landroid/view/ViewGroup;

    const-string v3, "alpha"

    new-array v4, v2, [F

    fill-array-data v4, :array_74

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator$1;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v4, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_6c
    .array-data 4
        0x0
        0xcc
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startShowConfirmAnimation()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initializeConfirmView()Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initializeSelectedActionView()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsAnimator$0pwmOWod9BEnjBpnTSCYpsXKRQ0;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsAnimator$0pwmOWod9BEnjBpnTSCYpsXKRQ0;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public startShowSafeModeAnimation()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initializeConfirmViewForSafeMode()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->initializeSelectedActionView()V

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->setState(Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;)V

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsAnimator$MoPDWv8qD8VA0JRhRNn8F4vDuiA;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsAnimator$MoPDWv8qD8VA0JRhRNn8F4vDuiA;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mConfirmationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimator;->mViewTreeObserverListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
