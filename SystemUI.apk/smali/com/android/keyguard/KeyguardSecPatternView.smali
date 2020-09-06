.class public Lcom/android/keyguard/KeyguardSecPatternView;
.super Lcom/android/keyguard/KeyguardPatternView;
.source "KeyguardSecPatternView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;
    }
.end annotation


# instance fields
.field private m2StepVerification:Z

.field private mAttached:Z

.field private mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBouncerShowing:Z

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mCurrentRotation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mEnableHaptics:Z

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsAccountExist:Z

.field private mIsIrisRunning:Z

.field private mIsMobileKeyboardCovered:I

.field private mIsSubDisplay:Z

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

.field private final mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field private mPatternIrisHelpText:Landroid/widget/TextView;

.field private mPromptReason:I

.field private final mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mSecondsRemaining:I

.field private mSecurityView:Landroid/widget/LinearLayout;

.field private mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentOrientation:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$sUUIoyihNMy4r5NRJ-4ZcZQLyIw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$sUUIoyihNMy4r5NRJ-4ZcZQLyIw;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$qKw_mFi-dDrb955MCLxr3bBpZ_I;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$qKw_mFi-dDrb955MCLxr3bBpZ_I;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsSubDisplay:Z

    new-instance v0, Lcom/android/keyguard/KeyguardSecPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPatternView$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecPatternView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPatternView$2;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecPatternView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPatternView$4;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p1}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecPatternView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/KeyguardSecPatternView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecPatternView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mGoingToSleep:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSecPatternView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternView;->setSubSecurityMessage(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEnableHaptics:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardSecPatternView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->reportAuditLog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayoutForAttemptRemainingBeforeWipe()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardSecPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateMobileKeyboardView()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecPatternView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePatternVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculateLandscapeViewWidth()I
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isInDisplayFingerprintMarginAccepted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v2

    sget v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    :cond_0
    return v1
.end method

.method private disableDevicePermanently()V
    .locals 3

    const-string v0, "KeyguardSecPatternView"

    const-string v1, "disableDevicePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    const v2, 0x104029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v9, p1, v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_0
    const-string v2, "KeyguardSecPatternView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    move-object v2, v11

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v11, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private isHintText()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInDisplayFingerprintMarginAccepted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStrongAuthPromptMessage()Z
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$2(Lcom/android/keyguard/KeyguardSecPatternView;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSecPatternView"

    const-string v1, "Stop recognition by touch on patternView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v1, -0x9

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->irisAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$sUUIoyihNMy4r5NRJ-4ZcZQLyIw(Lcom/android/keyguard/KeyguardSecPatternView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout(I)V

    return-void
.end method

.method private reportAuditLog(I)V
    .locals 7

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v0, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has exceeded number of authentication failure limit when using pattern authentication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setSubSecurityMessage(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentRotation:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateLandscapeLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v2, 0x7f0702fc

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v5, v4, Landroid/graphics/Point;->y:I

    const v6, 0x7f07030b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    const v6, 0x7f070222

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->calculateLandscapeViewWidth()I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x7f070234

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateLayout()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout(I)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentRotation:I

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->updateTabletLayout(I)V

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateMaxScreenZoomLayout()V

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLandscapeLayout()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePortraitLayout()V

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayoutForAttemptRemainingBeforeWipe()V

    :goto_2
    return-void
.end method

.method private updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 13

    const v0, 0x7f0a029f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateMaxScreenZoomLayout()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v4, v6, :cond_2

    const/4 v10, 0x3

    if-eq v4, v10, :cond_2

    iget v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070222

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f070309

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v11, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v6

    sub-int/2addr v11, v7

    iget-object v12, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v5, v9, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    nop

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private updateMaxScreenZoomLayout()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x140

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    const v2, 0x7f0702fb

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070337

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const v4, 0x7f07032e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecEmergencyCarrierArea;

    invoke-virtual {v1}, Lcom/android/keyguard/SecEmergencyCarrierArea;->updateTextSize()V

    :cond_1
    return-void
.end method

.method private updateMobileKeyboardView()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBouncerShowing:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    invoke-static {}, Lcom/android/systemui/Rune;->isFingerprintSensorRear()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    :cond_0
    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePatternVisibility(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePatternVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePatternVisibility(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePortraitLayout()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v4, 0x51

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, 0x7f07030c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v3, 0x7f07030a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, -0x1

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x7f07030d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v3, 0x7f070234

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v6, 0x7f070309

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x7f07030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x7f07030a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const v2, 0x7f0702fe

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_6

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v6, v4, v5

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    div-int/lit8 v7, v6, 0x2

    const/4 v8, 0x1

    if-eq p1, v8, :cond_3

    const/4 v8, 0x3

    if-eq p1, v8, :cond_2

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v3, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    sub-int v9, v6, v7

    add-int v10, v6, v7

    invoke-virtual {v8, v9, v3, v10, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    add-int v9, v6, v7

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v3, v10, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    nop

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v3, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const v5, 0x7f0702fb

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    const v3, 0x7f07030d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x7f070234

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isStrongAuthPromptMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSecPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    const v1, 0x7f120533

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView;->setSubSecurityMessage(II)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView;->setSubSecurityMessage(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040458

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v8, Lcom/android/keyguard/KeyguardSecPatternView$3;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSecPatternView$3;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;JJ)V

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecPatternView$3;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 1

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateMobileKeyboardView()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onFinishInflate()V

    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a020f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a023b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurUpdateFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateStyle(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEnableHaptics:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mVibrator:Landroid/os/Vibrator;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePatternVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$ynnKx5Q9EcnTF2Yx29B0PSGdkZI;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$ynnKx5Q9EcnTF2Yx29B0PSGdkZI;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->onResume(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSecPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged() visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v2, "dead_zone_port_x1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_x2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_y1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070281

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v2, "dead_zone_port_x1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_x2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_y1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 10

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    goto/16 :goto_3

    :cond_2
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisRunning:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsMobileKeyboardCovered:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v1

    cmp-long v4, v1, v7

    if-eqz v4, :cond_8

    cmp-long v4, v5, v7

    if-nez v4, :cond_8

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView;->handleBiometricsAttemptLockout(J)V

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->disableDevicePermanently()V

    :cond_a
    :goto_3
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->showMessage(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 5

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    const/16 v0, 0x1388

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :goto_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 7

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0x14d

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method public updateStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    instance-of v0, v0, Lcom/android/keyguard/SecLockPatternView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    check-cast v0, Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecLockPatternView;->updateViewStyle(I)V

    :cond_0
    return-void
.end method
