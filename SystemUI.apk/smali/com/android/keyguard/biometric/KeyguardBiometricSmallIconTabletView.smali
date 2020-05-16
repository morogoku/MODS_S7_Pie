.class public Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;
.super Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;
.source "KeyguardBiometricSmallIconTabletView.java"


# instance fields
.field private mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

.field private mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

.field private mKeyguardSmallIconView:Landroid/view/ViewGroup;

.field private mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

.field private mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconTabletView$Qe86rWHMKIhYJZ9BFjnbT4Ront4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconTabletView$Qe86rWHMKIhYJZ9BFjnbT4Ront4;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconTabletView$jatt7oQ41cLWdCZsXJaAryghiQc;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconTabletView$jatt7oQ41cLWdCZsXJaAryghiQc;-><init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    const v0, 0x7f0a0280

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardSmallIconView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    return-void
.end method

.method private getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz p1, :cond_0

    const v2, 0x7f07025e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const v2, 0x7f070272

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-object v1
.end method

.method private hideCueIconView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$Qe86rWHMKIhYJZ9BFjnbT4Ront4(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->hideCueIconView(Z)V

    return-void
.end method

.method public static synthetic lambda$jatt7oQ41cLWdCZsXJaAryghiQc(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->onRotationChanged(I)V

    return-void
.end method

.method private onRotationChanged(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateTabletLayout(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateCameraState()V

    :cond_0
    return-void
.end method

.method private updateMaxWidth(Z)V
    .locals 5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v3, 0x7f070270

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v3, 0x7f07026f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    :goto_0
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->isBiometricCondition()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07026d

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v5, :cond_3

    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    invoke-direct {p0, v5}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateMaxWidth(Z)V

    invoke-direct {p0, v6}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v5}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateMaxWidth(Z)V

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5, v2, v6, v2, v6}, Lcom/android/systemui/widget/SystemUITextView;->setPaddingRelative(IIII)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v4, v5

    nop

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v5}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    :goto_0
    goto :goto_2

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateMaxWidth(Z)V

    iget-object v5, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5, v2, v6, v2, v6}, Lcom/android/systemui/widget/SystemUITextView;->setPaddingRelative(IIII)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v4, v5

    nop

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    :goto_1
    move-object v3, v4

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardSmallIconView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method protected clearWithPreviewText(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateAnimation(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateAnimation(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateUnlockAnimation(Z)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateTabletLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

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

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricSmallIconTabletView"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a027d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a027e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateTabletLayout()V

    return-void
.end method

.method protected setBiometricNoMatchText(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBouncerShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected setIrisHelpText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBouncerShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisTimeoutErrorCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mIrisHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateAnimation(Z)V

    :cond_3
    return-void
.end method

.method protected updateTabletLayout()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconTabletView;->updateTabletLayout(I)V

    return-void
.end method
