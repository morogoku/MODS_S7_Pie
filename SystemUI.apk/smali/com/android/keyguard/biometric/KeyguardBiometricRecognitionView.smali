.class public Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;
.super Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.source "KeyguardBiometricRecognitionView.java"


# instance fields
.field private mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsOccluded:Z

.field private mIsSIPShowing:Z

.field private mIsSubDisplay:Z

.field private mKeyguardRecognitionView:Landroid/widget/FrameLayout;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

.field private mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field private final mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mShowTextRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$Mzr-xmb63UHtDezUykX5uAkU_Nw;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$Mzr-xmb63UHtDezUykX5uAkU_Nw;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mIsSubDisplay:Z

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$qJQy9ZdIIAzmFU9rsiFPs_ARq68;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$qJQy9ZdIIAzmFU9rsiFPs_ARq68;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$BzijZQbZcaFVDLRn3D3XyKP5Dfo;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$BzijZQbZcaFVDLRn3D3XyKP5Dfo;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$GbyqFzRcVDOzMm0DWEB-TPKEk88;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRecognitionView$GbyqFzRcVDOzMm0DWEB-TPKEk88;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mShowTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView$1;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V

    :cond_1
    return-void
.end method

.method private canPlayFaceRecognitionVI()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

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

.method private clearAllTextIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private getCutoutHeight()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method private getDefaultTabletLandscapeIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0256

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const v3, 0x7f070263

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object v2
.end method

.method private getDefaultTabletLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0a0258

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0256

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v2, v3, v0, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v3
.end method

.method private isBiometricsCondition()Z
    .locals 2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isInDisplayFingerprintMarginAccepted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public static synthetic lambda$BzijZQbZcaFVDLRn3D3XyKP5Dfo(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateRecognitionView(Z)V

    return-void
.end method

.method public static synthetic lambda$GbyqFzRcVDOzMm0DWEB-TPKEk88(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->showBiometricsText()V

    return-void
.end method

.method public static synthetic lambda$Mzr-xmb63UHtDezUykX5uAkU_Nw(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateLayout(I)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateVisualCueIcon()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    :goto_0
    return-void
.end method

.method private showBiometricsText()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getProximityGuidePopupState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateCameraState()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardBiometricRecognitionIcon"

    const-string v1, "Stop IRIS recognition by rotating 180 degree on bouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardBiometricRecognitionIcon"

    const-string v1, "Stop IB recognition by rotating 180 degree on bouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFaceRecognitionViewOnDexStandalone()V
    .locals 7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a025a

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0a0258

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0a0256

    invoke-virtual {p0, v4}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v4, v6, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLayout(I)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateTabletLayout(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_1
    const v2, 0x105018c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getCutoutHeight()I

    move-result v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->isInDisplayFingerprintMarginAccepted()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_6

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eq p1, v6, :cond_5

    if-eq p1, v7, :cond_3

    const/16 v6, 0x31

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, -0x1

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->isInDisplayFingerprintMarginAccepted()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    goto :goto_0

    :cond_4
    move v6, v2

    :goto_0
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_5
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method private updateRecognitionView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mIsOccluded:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->handleHideGuidePopup()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->handleShowGuidePopup()V

    nop

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateCameraState()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->clearAllTextIcon()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateTabletLayout(ZZ)V

    return-void
.end method


# virtual methods
.method protected handleHideGuidePopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected handleShowGuidePopup()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mIsOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mShowTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mShowTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

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

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricRecognitionIcon"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0219

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a00a6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0257

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateVisualCueIcon()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconDrawable(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateLayout()V

    :cond_1
    return-void
.end method

.method public setPunchHoleVIView(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateErrorText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void
.end method

.method protected updateHelpText(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected updateIconVisibility()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateIconDrawable(I)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->canPlayFaceRecognitionVI()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected updateLayout()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateLayout(I)V

    return-void
.end method

.method protected updateProximityHelpText(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTabletLayout(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->isBiometricsCondition()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p1, :cond_0

    iget-boolean v3, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mIsSIPShowing:Z

    if-ne v3, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0256

    invoke-virtual {v0, v5}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f0a025a

    invoke-virtual {v0, v6}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v7, 0x7f0a0258

    invoke-virtual {v0, v7}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const v11, 0x7f070263

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x31

    const/4 v12, -0x2

    invoke-direct {v10, v12, v12, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    if-nez v7, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v11, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateFaceRecognitionViewOnDexStandalone()V

    return-void

    :cond_2
    iget-object v11, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v11

    const/4 v13, 0x1

    const v14, 0x7f0702d8

    const/4 v15, 0x0

    if-eq v11, v13, :cond_6

    const/4 v13, 0x3

    if-eq v11, v13, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getDefaultTabletLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    iget-object v12, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getDefaultTabletLandscapeIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    goto/16 :goto_3

    :cond_3
    iget-object v11, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getDefaultTabletLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    goto :goto_1

    :cond_4
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/16 v14, 0x15

    invoke-direct {v11, v13, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v12, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v8, v13

    const v12, 0x7f070261

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v5, v15, v15, v12, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const v12, 0x7f070265

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_5

    const v12, 0x7f07025e

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v12, 0x7f07025f

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_5
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    iput-boolean v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mIsSIPShowing:Z

    goto :goto_3

    :cond_6
    iget-object v11, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getDefaultTabletLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    :goto_1
    goto :goto_3

    :cond_7
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/16 v14, 0x13

    invoke-direct {v11, v13, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v12, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v8, v13

    const v12, 0x7f070261

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v5, v12, v15, v15, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const v12, 0x7f070265

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_8

    const v12, 0x7f07025e

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v12, 0x7f07025f

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_8
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_2
    iput-boolean v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mIsSIPShowing:Z

    nop

    :cond_9
    :goto_3
    iget-object v12, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_a

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    nop

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, v0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v13, 0x7f0702f9

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v15, v13}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    return-void

    :cond_b
    :goto_4
    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method protected updateVisualCueIcon()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const-string/jumbo v3, "smart_scan_unlocking_ic_whitebg.json"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "smart_scan_unlocking_ic.json"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_2

    const-string v3, "face_unlocking_ic_whitebg.json"

    goto :goto_1

    :cond_2
    const-string v3, "face_unlocking_ic.json"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_4

    const-string v3, "iris_unlocking_ic_whitebg.json"

    goto :goto_2

    :cond_4
    const-string v3, "iris_unlocking_ic.json"

    :goto_2
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070267

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mBouncerShowing:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->getIconState()I

    move-result v2

    if-ne v2, v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    :cond_7
    return-void
.end method
