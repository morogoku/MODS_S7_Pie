.class public Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricProximityGuidePopup.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBouncerShowing:Z

.field private mDisplay:Landroid/view/Display;

.field private mErrorString:Ljava/lang/String;

.field private mGuideText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mHandler:Landroid/os/Handler;

.field private final mHidePopupRunnable:Ljava/lang/Runnable;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAnimating:Z

.field private mIsLeftArrow:Z

.field private mIsOccluded:Z

.field private mIsSIPShowing:Z

.field private mKeyguardGuidePopup:Landroid/view/ViewGroup;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPlayPopupAnimationRunnable:Ljava/lang/Runnable;

.field private mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

.field private mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mTranslationXPosition:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$DejnglRvILzx0XlXRJJbjnMkI0M;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$DejnglRvILzx0XlXRJJbjnMkI0M;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mPlayPopupAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$1wxZz0zZPjqsYZh7vZyyl53N2sA;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$1wxZz0zZPjqsYZh7vZyyl53N2sA;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$IZ-3gFHrsmM7Ir7j7oS2vJqggTA;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$IZ-3gFHrsmM7Ir7j7oS2vJqggTA;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$jK9m9x4CJsWYoL9GPH5O2uAVp6Q;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricProximityGuidePopup$jK9m9x4CJsWYoL9GPH5O2uAVp6Q;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mImm:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0a0290

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updatePopupVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->playPopupAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mPlayPopupAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateGuideText()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->handleShow()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->handleHide()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    return p1
.end method

.method private clearGuidePopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setProximityGuidePopupState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->dismissAnimation()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateTabletLayout()V

    return-void
.end method

.method private dismissAnimation()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x1

    new-array v4, v3, [F

    iget v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    int-to-float v5, v5

    aput v5, v4, v0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    invoke-static {v2, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v1, v5, v0

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$4;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    nop

    const v2, 0x7f070272

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v1
.end method

.method private getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07025b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07025c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    const/4 v5, -0x2

    if-eqz v4, :cond_1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v5, :cond_0

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-boolean v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v5, :cond_2

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    mul-int/2addr v5, v2

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-object v4
.end method

.method private handleHide()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setProximityGuidePopupState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setBiometricGuideText()V

    return-void
.end method

.method private isBiometricsCondition()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

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

.method private isTimerRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static synthetic lambda$DejnglRvILzx0XlXRJJbjnMkI0M(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->playPopupAnimation()V

    return-void
.end method

.method public static synthetic lambda$IZ-3gFHrsmM7Ir7j7oS2vJqggTA(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateGuidePopup(Z)V

    return-void
.end method

.method public static synthetic lambda$jK9m9x4CJsWYoL9GPH5O2uAVp6Q(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateTabletLayout(I)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method private playMoveAnimation()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    const v1, 0x7f07025d

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v1, "translationX"

    const/4 v2, 0x1

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricProximityInterpolator;

    invoke-direct {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_0

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playPopupAnimation()V
    .locals 13

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x11b

    iget-boolean v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v6, "translationX"

    new-array v7, v5, [F

    const/high16 v8, -0x40800000    # -1.0f

    mul-float v9, v0, v8

    mul-float v10, v1, v8

    add-float/2addr v9, v10

    aput v9, v7, v4

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v7, "translationX"

    new-array v9, v5, [F

    mul-float v10, v0, v8

    aput v10, v9, v4

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v9, "translationX"

    new-array v10, v5, [F

    mul-float v11, v0, v8

    mul-float v12, v1, v8

    add-float/2addr v11, v12

    aput v11, v10, v4

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v10, "translationX"

    new-array v11, v5, [F

    mul-float/2addr v8, v0

    aput v8, v11, v4

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v6, "translationX"

    new-array v7, v5, [F

    add-float v8, v0, v1

    aput v8, v7, v4

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v7, "translationX"

    new-array v8, v5, [F

    aput v0, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v8, "translationX"

    new-array v9, v5, [F

    add-float v10, v0, v1

    aput v10, v9, v4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo v9, "translationX"

    new-array v10, v5, [F

    aput v0, v10, v4

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    :goto_0
    const-wide/16 v9, 0x11b

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v6, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v9}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v3, v10, v4

    aput-object v6, v10, v5

    const/4 v4, 0x2

    aput-object v7, v10, v4

    const/4 v4, 0x3

    aput-object v8, v10, v4

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private setBiometricGuideText()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->showProximityErrorMessage()V

    :cond_3
    return-void
.end method

.method private showProximityErrorMessage()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    nop

    :goto_0
    nop

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->playMoveAnimation()V

    return-void
.end method

.method private updateGuidePopup(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->handleShow()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->handleHide()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateGuideText()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1205ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mErrorString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updatePopupVisibility()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->clearGuidePopup()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabletLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateTabletLayout(I)V

    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setPaddingRelative(IIII)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->dismissAnimation()V

    move-object v3, v2

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07026f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardProximityPopup"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setVisibility(I)V

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateGuideText()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->updateTabletLayout()V

    return-void
.end method
