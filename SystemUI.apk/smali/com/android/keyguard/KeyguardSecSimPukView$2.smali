.class Lcom/android/keyguard/KeyguardSecSimPukView$2;
.super Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;
.source "KeyguardSecSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecSimPukView$SecCheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onSimLockChangedResponse$0(Lcom/android/keyguard/KeyguardSecSimPukView$2;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPukView;->resetPasswordText(ZZ)V

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mRemainingAttempts:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mShowDefaultMessage:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_UNLOCK_TOAST:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$300(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12072e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$400(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120609

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$500(Lcom/android/keyguard/KeyguardSecSimPukView;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPukView;->access$600(Lcom/android/keyguard/KeyguardSecSimPukView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "KeyguardSimPukView"

    const-string v1, "ForceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mShowDefaultMessage:Z

    if-ne p1, v2, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v2, p2, v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ALL_RAT:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12022c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1206e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPukView$2$8sJJyf7Rz5I30RvGgUNqYDG2hMA;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView$2;II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSimPukView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
