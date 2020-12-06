.class public Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;
.super Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecUnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method


# virtual methods
.method protected onPatternChecked(IZIZ)V
    .locals 9

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "KeyguardSecPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPatternChecked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " timeoutMs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1300(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v1, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1800(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0xc36b

    const/4 v4, -0x1

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v3, v4, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    if-eqz p4, :cond_a

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, p1, v2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    if-nez p3, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardHintTextArea;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto :goto_3

    :cond_6
    if-lez p3, :cond_9

    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v5, v3, v4}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecPatternView;->notifyKeyguardLockout()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1600(Lcom/android/keyguard/KeyguardSecPatternView;)V

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2100(Lcom/android/keyguard/KeyguardSecPatternView;I)V

    :cond_a
    if-nez p3, :cond_c

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v3

    const v4, 0x7f1205b7

    if-lez v3, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2200(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecPatternView;->access$2300(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f100003

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-virtual {v4, v7, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardSecPatternView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KeyguardSecPatternView"

    const-string/jumbo v1, "onPatternDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V

    return-void
.end method

.method public onPatternStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternStart()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1700(Lcom/android/keyguard/KeyguardSecPatternView;II)V

    return-void
.end method
