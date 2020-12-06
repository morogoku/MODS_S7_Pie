.class public Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricSmallIconView.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field protected mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

.field protected mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mBiometricUnlockRoot:Landroid/widget/FrameLayout;

.field protected mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

.field protected mBouncerShowing:Z

.field private mCurrentMobileKeyboardState:I

.field protected mDisplay:Landroid/view/Display;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPlayingAnimation:Z

.field private mIsShowingUnlockIcon:Z

.field private mIsTouched:Z

.field private mKeyguardShowing:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field protected mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSupportMKeyboardModel:Z

.field private final mUpdateHelpTextRunnable:Ljava/lang/Runnable;

.field protected mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    new-instance v1, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$saWPt0OR8t1gXCCwJwk70pPUMOg;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$saWPt0OR8t1gXCCwJwk70pPUMOg;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iput-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsTouched:Z

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsTouched:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private canPlayCamaraAffodanceVI()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_AFFORDANCE_VI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDisplayCutoutHideNotch()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canPlayFaceRecognitionVI()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDisplayCutoutHideNotch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBiometricRunning()Z
    .locals 2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceRecognitionAuthenticated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIBAuthenticated(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isInViewArea(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getX()F

    move-result v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getY()F

    move-result v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isTimerRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$saWPt0OR8t1gXCCwJwk70pPUMOg(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method private updateErrorText(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setBiometricNoMatchText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateIconVisibility()V
    .locals 6

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isTimerRunning()Z

    move-result v1

    const/16 v5, 0x8

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSwipeLockBeforeTimeout()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricCondition()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->canPlayFaceRecognitionVI()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateTabletLayout()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->canPlayCamaraAffodanceVI()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setAffordanceVI()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    invoke-virtual {p0, v4}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateUnlockIcon()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070279

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const-string v3, "lock_unlocking_ic_whitebg.json"

    goto :goto_0

    :cond_0
    const-string v3, "lock_unlocking_ic.json"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    :cond_1
    return-void
.end method

.method private updateVisualCueIcon()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const-string/jumbo v3, "smart_scan_unlocking_ic_whitebg.json"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "smart_scan_unlocking_ic.json"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_2

    const-string v3, "face_unlocking_ic_whitebg.json"

    goto :goto_1

    :cond_2
    const-string v3, "face_unlocking_ic.json"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_4

    const-string v3, "iris_unlocking_ic_whitebg.json"

    goto :goto_2

    :cond_4
    const-string v3, "iris_unlocking_ic.json"

    :goto_2
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070274

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isBiometricCondition()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected clearWithPreviewText(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isBiometricCondition()Z
    .locals 2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "any_screen_running"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "display_cutout_hide_notch"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardBiometricSmallIconView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a025e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a025d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSupportMKeyboardModel:Z

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSupportMKeyboardModel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mCurrentMobileKeyboardState:I

    :cond_0
    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$TfnpafC8kXclc9OZyRp42FCmLTA;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$TfnpafC8kXclc9OZyRp42FCmLTA;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->isInViewArea(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v3

    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateCameraState()V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setBiometricNoMatchText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setIrisHelpText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisTimeoutErrorCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_0
    return-void
.end method

.method public setPunchHoleVIView(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method public setUnlockIconVisibility(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updateAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsPlayingAnimation:Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateCameraState()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardBiometricSmallIconView"

    const-string v1, "Stop Face recognition by touching on small preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardBiometricSmallIconView"

    const-string v1, "Stop IRIS recognition by touching on small preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsTouched:Z

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardBiometricSmallIconView"

    const-string v1, "Stop IB recognition by touching on small preview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateTabletLayout()V
    .locals 0

    return-void
.end method

.method protected updateUnlockAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    :cond_3
    return-void
.end method
