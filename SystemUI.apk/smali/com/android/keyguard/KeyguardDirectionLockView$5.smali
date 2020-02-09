.class Lcom/android/keyguard/KeyguardDirectionLockView$5;
.super Landroid/os/Handler;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$200(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/16 v4, 0x23

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$502(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2500(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v4

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2608(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4, v1, v3, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2800(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3000(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2902(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2500(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v3

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v3

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5, v3, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3100(Lcom/android/keyguard/KeyguardDirectionLockView;J)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3200(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3300(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3500(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2900(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3400(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2200(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2900(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2200(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    const v3, 0xc371

    const/4 v4, -0x1

    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v3, v4, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :goto_1
    goto :goto_2

    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x25

    if-ne v2, v4, :cond_6

    const-string v2, "KeyguardDirectionLock"

    const-string/jumbo v4, "verifyPasswordAndUnlock"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v1, v4, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$2602(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$5;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v4, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_6
    :goto_2
    return-void
.end method
