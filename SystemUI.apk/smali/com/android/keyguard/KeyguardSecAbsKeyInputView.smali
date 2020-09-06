.class public abstract Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSecAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecAbsKeyInputView$AccountAnalyzer;
    }
.end annotation


# instance fields
.field protected m2StepVerification:Z

.field private mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mBouncerShowing:Z

.field private mCarrierText:Landroid/view/View;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mCurrentRotation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mEntry:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mInputContainer:Landroid/widget/LinearLayout;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsAccountExist:Z

.field private mIsMobileKeyboardCovered:I

.field protected mIsSubDisplay:Z

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

.field protected final mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field protected final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field protected mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field protected mPromptReason:I

.field private final mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mSecondsRemaining:I

.field private mSecurityView:Landroid/widget/LinearLayout;

.field private mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSwitchImeButton:Landroid/view/View;

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsMobileKeyboardCovered:I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$L6DMP_0heQGUHLXbeb0eMGh5kq4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$L6DMP_0heQGUHLXbeb0eMGh5kq4;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$6oBsVqm6yBuZ3fqz73Y-7_aGU-0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$6oBsVqm6yBuZ3fqz73Y-7_aGU-0;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsSubDisplay:Z

    new-instance v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

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

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayoutForAttemptRemainingBeforeWipe()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsAccountExist:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method private calculateLandscapeViewWidth()I
    .locals 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

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

    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string v1, "disableDevicePermanently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x104029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getStringFromId(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v9, p1, v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_0
    const-string v2, "KeyguardSecAbsKeyInputView"

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

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    move-object v2, v11

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object v11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private isHintText()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method private isPINSecurityView(I)Z
    .locals 1

    const v0, 0x7f0a028f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPasswordView(I)Z
    .locals 1

    const v0, 0x7f0a028d

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSimSecurityView(I)Z
    .locals 1

    const v0, 0x7f0a02a3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a029b

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02a4

    if-ne p1, v0, :cond_0

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

.method public static synthetic lambda$L6DMP_0heQGUHLXbeb0eMGh5kq4(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout(I)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    return-void
.end method

.method private reportAuditLog(ILjava/lang/String;)V
    .locals 13

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "KeyguardSecAbsKeyInputView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has exceeded number of authentication failure limit when using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " authentication"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "KeyguardSecAbsKeyInputView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has exceeded number of authentication failure limit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v12, p1

    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private updateLandscapeLayout(I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v5, 0x7f08036b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v5, 0x7f08036a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v6, 0x7f070324

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->calculateLandscapeViewWidth()I

    move-result v5

    const v7, 0x7f0702fc

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v10

    if-eqz v10, :cond_3

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    :cond_3
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const v10, 0x7f070310

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int/2addr v2, v10

    const v10, 0x7f07030f

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int/2addr v2, v10

    const v10, 0x7f070222

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int/2addr v2, v10

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x7f07031d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_7

    move-object v4, v2

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x51

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-nez v4, :cond_9

    const v4, 0x7f070303

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_9
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private updateLayout()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout(I)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentRotation:I

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateTabletLayout(II)V

    goto :goto_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateMaxScreenZoomLayout(I)V

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLandscapeLayout(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updatePortraitLayout(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayoutForAttemptRemainingBeforeWipe()V

    :goto_2
    return-void
.end method

.method private updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a029f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateMaxScreenZoomLayout(I)V

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v6, v8, :cond_2

    const/4 v12, 0x3

    if-eq v6, v12, :cond_2

    iget v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    if-ltz v6, :cond_1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_1
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    if-ltz v6, :cond_4

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702fd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f070222

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070309

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0707b4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iget v15, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v15, v8

    sub-int/2addr v15, v12

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v16

    if-eqz v16, :cond_3

    sub-int/2addr v15, v14

    :cond_3
    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7, v11, v7, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    nop

    :goto_0
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private updateMaxScreenZoomLayout(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x140

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    const v2, 0x7f0702fb

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070337

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v1, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v1, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setTextSize(IF)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const v4, 0x7f07032e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHintTextArea;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v4, 0x7f070234

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v3, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setTextSize(IF)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPINSecurityView(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updatePINView()V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/SecEmergencyCarrierArea;

    invoke-virtual {v2}, Lcom/android/keyguard/SecEmergencyCarrierArea;->updateTextSize()V

    :cond_3
    return-void
.end method

.method private updatePortraitLayout(I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v2, 0x7f070320

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v5, 0x7f08036b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v5, 0x7f08036a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v6, 0x7f070324

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    const/16 v5, 0x51

    const/16 v6, 0x50

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v9, -0x2

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f070321

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_3
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v2, 0x7f070311

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v2, 0x7f07030e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v2, 0x7f07031d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f070302

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_9
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v5, 0x7f070312

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private updateTabletLayout(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v4, 0x7f08036b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const v4, 0x7f08036a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v5, 0x7f070324

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const v5, 0x7f070320

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const v3, 0x7f0702fe

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_9

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v6, v4, v5

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_4
    div-int/lit8 v7, v6, 0x2

    const/4 v8, 0x1

    if-eq p2, v8, :cond_6

    const/4 v8, 0x3

    if-eq p2, v8, :cond_5

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    sub-int v9, v6, v7

    add-int v10, v6, v7

    invoke-virtual {v8, v9, v2, v10, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    add-int v9, v6, v7

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v2, v10, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    nop

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v4, 0x7f07031d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v1, :cond_d

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v1, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isSimSecurityView(I)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_b
    move-object v3, v4

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x51

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_c
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v6, 0x7f070312

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 0

    return-void
.end method

.method protected getSecurityViewId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v8, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;JJ)V

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

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

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DIRECT_CALL_TO_ECC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a018e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a023a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    const v0, 0x7f0a03d1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    const v0, 0x7f0a0595

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    const v0, 0x7f0a020f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsMobileKeyboardCovered:I

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method protected onPasswordChecked(IZIZLjava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v2, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v7, v0

    const-string v0, "KeyguardSecAbsKeyInputView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPasswordChecked "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " timeoutMs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz v3, :cond_6

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v8}, Lcom/android/systemui/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v9

    invoke-virtual {v8, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.password.ChooseLockPassword"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "lockscreen.password_type"

    invoke-virtual {v12, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "lockscreen.password_min"

    invoke-virtual {v12, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "lockscreen.password_max"

    invoke-virtual {v12, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "lockscreen.password_old"

    iget-object v14, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "password"

    iget-object v14, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "confirm_credentials"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v13, "isRecovery"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x400000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x800000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v2, :cond_3

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v13

    const-string v14, "KeyguardSecAbsKeyInputView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetPassword : encyptionStatus is "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v13, v0, :cond_2

    const/4 v0, 0x3

    if-ne v13, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v5, "resetPassword : extra_require_password won\'t be set as true."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "extra_require_password"

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v5, "resetPassword : extra_require_password will be set as true."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_3
    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v5, "resetPassword : it\'s not for owner."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v12, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v5, "KeyguardSecAbsKeyInputView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t find the component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v5, "onPasswordChecked"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v6, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v7, :cond_5

    iput-boolean v6, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDismissing:Z

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v6, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_5
    move-object/from16 v8, p5

    goto/16 :goto_9

    :cond_6
    iget-boolean v5, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v5, :cond_7

    const v5, 0xc36b

    const/4 v8, -0x1

    sget-object v9, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v8, v9}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v5

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8, v5}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_7
    if-eqz p4, :cond_d

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v9, 0x0

    invoke-interface {v8, v2, v9, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v8}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v8}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    const/16 v8, 0x8

    if-nez v4, :cond_9

    iget-object v9, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v9

    if-ne v9, v8, :cond_9

    sget-boolean v8, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v8, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_6

    :cond_9
    if-lez v4, :cond_c

    sget-boolean v9, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v9, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v9, v8}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_a
    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->notifyKeyguardLockout()V

    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableDevicePermanently()V

    :cond_c
    :goto_6
    move-object/from16 v8, p5

    invoke-direct {v1, v2, v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reportAuditLog(ILjava/lang/String;)V

    goto :goto_7

    :cond_d
    move-object/from16 v8, p5

    :goto_7
    int-to-long v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_f

    iget-object v9, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v9

    invoke-direct {v1, v9}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v9

    if-lez v0, :cond_e

    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100003

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v0, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v10, v9}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v10}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    :cond_f
    :goto_9
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v0, ""

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:Ljava/lang/String;

    :cond_10
    xor-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v6, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometric/KeyguardBiometricsCountDownTimer;

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reset()V

    return-void
.end method

.method protected onUserInput()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    return-void
.end method

.method public reset()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDismissing:Z

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_1

    :cond_2
    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->shouldLockout(J)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleBiometricsAttemptLockout(J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableDevicePermanently()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected setSubSecurityMessage(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v3, p1, v4}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    :goto_0
    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentRotation:I

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showMessage(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPromptReason:I

    const/16 v0, 0x1388

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    :goto_0
    return-void
.end method

.method protected updatePINView()V
    .locals 0

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v1, "verifyPasswordAndUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:Ljava/lang/String;

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    return-void
.end method
