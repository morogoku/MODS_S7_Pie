.class Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDexModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateLayout()V

    return-void
.end method

.method public onFaceRecognitionAuthFailed()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12056f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$500(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1205e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFaceRecognitionAuthSucceeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onFaceRecognitionError(ILjava/lang/CharSequence;)V
    .locals 3

    const/16 v0, 0x2715

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$300(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12056f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFaceRecognitionHelp(ILjava/lang/CharSequence;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceRecognitionHelp(ILjava/lang/CharSequence;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateProximityHelpText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateProximityHelpText(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const-string v1, "KeyguardBiometricIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailedUnlockAttemptChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$900(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onIBAuthFailed()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$700(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$800(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1205e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIBAuthenticated(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-boolean v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->handleHideGuidePopup()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->handleShowGuidePopup()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIBHelp(ILjava/lang/CharSequence;)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onIrisAuthFailed()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1205f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1205e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->handleHideGuidePopup()V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->handleShowGuidePopup()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getIconState()I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iput-boolean p1, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateLayout()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateHelpText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateErrorText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateVisualCueIcon()V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->updateIconVisibility()V

    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricIconView;->setVisibility(I)V

    :cond_0
    return-void
.end method
