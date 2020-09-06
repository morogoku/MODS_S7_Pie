.class public Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;
.super Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.source "KeyguardBiometricRetryView.java"


# instance fields
.field private mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field private mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field private mDisplay:Landroid/view/Display;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOccluded:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

.field private mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private final mShowRetryButtonRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$tOi5yh9v6s5qltUUhZDzaspI4VQ;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$tOi5yh9v6s5qltUUhZDzaspI4VQ;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$xfq36UMPk5KgHvtStCbNg0k0fgs;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$xfq36UMPk5KgHvtStCbNg0k0fgs;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mIsOccluded:Z

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$DBsIeUubW7lIo9Qiz14hNFBoXCA;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$DBsIeUubW7lIo9Qiz14hNFBoXCA;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method private isBiometricRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

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

.method private isBiometricsCondition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public static synthetic lambda$DBsIeUubW7lIo9Qiz14hNFBoXCA(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->showRetryButton()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconDrawable(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->isBiometricRetryIconSelected(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    const-string v4, "102"

    const-string v5, "1013"

    const-string v6, "2"

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    const-string v4, "102"

    const-string v5, "1013"

    const-string v6, "3"

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    const-string v4, "102"

    const-string v5, "1013"

    const-string v6, "1"

    invoke-static {v4, v5, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public static synthetic lambda$tOi5yh9v6s5qltUUhZDzaspI4VQ(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateRetryView(Z)V

    return-void
.end method

.method public static synthetic lambda$xfq36UMPk5KgHvtStCbNg0k0fgs(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->onRotationChanged(I)V

    return-void
.end method

.method private onRotationChanged(I)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mIsOccluded:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getProximityGuidePopupState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->isBiometricRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private showRetryButton()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->isBiometricRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getProximityGuidePopupState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRetryView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mIsOccluded:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->handleHideGuidePopup()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->handleShowGuidePopup()V

    nop

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected handleHideGuidePopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    return-void
.end method

.method protected handleShowGuidePopup()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mIsOccluded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricRetryIcon"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0218

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const v0, 0x7f0a021a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12056f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$n7Tt7wLOquTZTKlr5DhBEaPn80A;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRetryView$n7Tt7wLOquTZTKlr5DhBEaPn80A;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120557

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconDrawable(I)V

    return-void
.end method

.method protected updateIconDrawable(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_retry_pressed"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_retry_pressed_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_cancel_pressed"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_cancel_pressed_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_cancel"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_cancel_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_retry"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_retry_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected updateIconVisibility()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->updateIconDrawable(I)V

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mState:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricCancelIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRetryView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method
