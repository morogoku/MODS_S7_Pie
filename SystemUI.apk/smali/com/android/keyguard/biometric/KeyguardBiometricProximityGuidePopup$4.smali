.class Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$4;
.super Ljava/lang/Object;
.source "KeyguardBiometricProximityGuidePopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->dismissAnimation()V
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

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$4;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$1400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

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
