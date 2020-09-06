.class Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricSmallIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDexModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$500(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    return-void
.end method

.method public onFaceRecognitionAuthSucceeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onFaceRecognitionHelp(ILjava/lang/CharSequence;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$700(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setIrisHelpText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    nop

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onIBAuthFailed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    return-void
.end method

.method public onIBAuthenticated(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setIrisHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$900(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$900(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, -0x9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$800(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$802(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setIrisHelpText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$900(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$900(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iput-boolean p1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    if-nez p1, :cond_1

    const-string v0, "KeyguardBiometricSmallIconView"

    const-string/jumbo v1, "set text preview - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    :goto_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$102(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$300(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$1000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    :cond_1
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->access$300(Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;)V

    return-void
.end method
