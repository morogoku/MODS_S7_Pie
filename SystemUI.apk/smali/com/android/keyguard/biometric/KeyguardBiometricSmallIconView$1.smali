.class Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricSmallIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;

    iget-object v1, v1, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method
