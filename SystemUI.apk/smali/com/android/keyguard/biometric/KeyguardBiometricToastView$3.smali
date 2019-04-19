.class Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->appearAnimation(Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

.field final synthetic val$resId:I

.field final synthetic val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;ILcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->val$resId:I

    iput-object p3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;

    invoke-static/range {v1 .. v7}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$800(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;JLcom/android/keyguard/biometric/KeyguardBiometricToastView$ToastType;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$002(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$700(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iget v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$3;->val$resId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->setIcon(I)V

    return-void
.end method
