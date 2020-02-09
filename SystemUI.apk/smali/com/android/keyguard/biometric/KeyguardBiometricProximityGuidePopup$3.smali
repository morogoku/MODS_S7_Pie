.class Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;
.super Ljava/lang/Object;
.source "KeyguardBiometricProximityGuidePopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->playPopupAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1100(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1300(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1200(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1300(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1200(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
