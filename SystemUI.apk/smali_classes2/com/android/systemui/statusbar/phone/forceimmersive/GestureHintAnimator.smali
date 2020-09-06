.class public Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;
.super Ljava/lang/Object;
.source "GestureHintAnimator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentHintId:I

.field mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

.field private final mHintHeight:F

.field private mIsFixedOrientation:Z

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private final mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHintHeight:F

    return-void
.end method

.method private dipToPixel(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private hideHintView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$hide$1(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hideHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hideHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hideHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    return-void
.end method

.method public static synthetic lambda$onActionMove$2(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionMove - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mCurrentHintId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    const/high16 v1, 0x43520000    # 210.0f

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->dipToPixel(F)F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->dipToPixel(F)F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_EXTRA_HINT_AREA:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHintHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    :goto_0
    sub-float/2addr v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move v3, v4

    const v4, 0x3f947ae1    # 1.16f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v4, v5

    int-to-float v7, p1

    mul-float/2addr v6, v7

    div-float/2addr v6, v1

    add-float/2addr v5, v6

    cmpl-float v6, v5, v4

    if-lez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    move v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    if-nez v7, :cond_5

    if-eqz v6, :cond_5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    :cond_4
    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    neg-float v7, v3

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    :cond_5
    :goto_3
    neg-float v7, v3

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    :cond_6
    :goto_4
    return-void
.end method

.method public static synthetic lambda$reset$0(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->showHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->showHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->showHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_LEFT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_CENTER:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    sget v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_RIGHT:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->resetHintView(I)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "GestureHintAnimator"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetHintView(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetHintView - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->GESTURE_EXTRA_HINT_AREA:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHintHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    move v9, v3

    :goto_1
    goto :goto_2

    :cond_1
    if-ne v5, v7, :cond_2

    neg-float v6, v3

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    if-ne v5, v8, :cond_3

    move v6, v3

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    move v9, v3

    :goto_2
    const-string v10, "scaleX"

    new-array v11, v8, [F

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    aput v12, v11, v13

    invoke-static {v2, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-string v11, "scaleY"

    new-array v14, v8, [F

    aput v12, v14, v13

    invoke-static {v2, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string v12, "translationX"

    new-array v14, v8, [F

    aput v6, v14, v13

    invoke-static {v2, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    const-string v14, "translationY"

    new-array v15, v8, [F

    aput v9, v15, v13

    invoke-static {v2, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v10, v4, v13

    aput-object v11, v4, v8

    const/4 v8, 0x2

    aput-object v12, v4, v8

    aput-object v14, v4, v7

    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v15, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const v4, 0x3f4ccccd    # 0.8f

    const v7, 0x3f547ae1    # 0.83f

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void
.end method

.method private showHintView(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mToolViewController:Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/view/ImmersiveToolViewController;->getHintView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHintView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$LaDlhePigOzsg398Oi6M-HMCHNU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$LaDlhePigOzsg398Oi6M-HMCHNU;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActionMove(II)V
    .locals 2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mCurrentHintId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$5Oo4-x20lYc7YIYsEy6B4yeWSF8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$5Oo4-x20lYc7YIYsEy6B4yeWSF8;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mHandler:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$xiY0v3GtohNzXVDBxouH4XC2bpU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$xiY0v3GtohNzXVDBxouH4XC2bpU;-><init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->logDebug(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mCurrentHintId:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->mIsFixedOrientation:Z

    return-void
.end method
