.class Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->appearAnimation(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120526

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->val$type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-virtual {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120528

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$300(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$500(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;FFLandroid/view/View;J)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricToastView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricToastView;->access$002(Lcom/android/keyguard/biometric/KeyguardBiometricToastView;Z)Z

    return-void
.end method
