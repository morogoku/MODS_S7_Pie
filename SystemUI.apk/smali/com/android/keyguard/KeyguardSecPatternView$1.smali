.class Lcom/android/keyguard/KeyguardSecPatternView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 7

    const-string v0, "KeyguardSecPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricsLockoutChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v3

    if-eqz v3, :cond_0

    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x7530

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v6, v4, v5}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1100(Lcom/android/keyguard/KeyguardSecPatternView;J)V

    goto :goto_0

    :cond_0
    const-string v4, "KeyguardSecPatternView"

    const-string v5, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDexModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$700(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->reset()V

    :cond_0
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1302(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$800(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->reset()V

    :cond_0
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$402(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$500(Lcom/android/keyguard/KeyguardSecPatternView;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$600(Lcom/android/keyguard/KeyguardSecPatternView;Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$600(Lcom/android/keyguard/KeyguardSecPatternView;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$202(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$300(Lcom/android/keyguard/KeyguardSecPatternView;)V

    return-void
.end method

.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1002(Lcom/android/keyguard/KeyguardSecPatternView;I)I

    :cond_0
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v2, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1302(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$000(Lcom/android/keyguard/KeyguardSecPatternView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$002(Lcom/android/keyguard/KeyguardSecPatternView;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
