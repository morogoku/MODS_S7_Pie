.class Lcom/android/keyguard/KeyguardSecPasswordView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintAuthenticated(I)V
    .locals 0

    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->m2StepVerification:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$100(Lcom/android/keyguard/KeyguardSecPasswordView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$202(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z

    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$000(Lcom/android/keyguard/KeyguardSecPasswordView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$200(Lcom/android/keyguard/KeyguardSecPasswordView;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$100(Lcom/android/keyguard/KeyguardSecPasswordView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$102(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z

    :cond_0
    return-void
.end method
