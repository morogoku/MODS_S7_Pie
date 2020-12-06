.class Lcom/android/keyguard/KeyguardSecSimPinView$2;
.super Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;
.source "KeyguardSecSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSimPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinView;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iput p4, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->val$subId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecSimPinView$SecCheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onSimCheckResponse$0(Lcom/android/keyguard/KeyguardSecSimPinView$2;III)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$102(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, p2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$202(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecSimPinView;->resetPasswordText(ZZ)V

    if-nez p2, :cond_4

    const-string v0, "KeyguardSecSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSimCheckResponse "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$202(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$102(Lcom/android/keyguard/KeyguardSecSimPinView;I)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$302(Lcom/android/keyguard/KeyguardSecSimPinView;Z)Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_UNLOCK_TOAST:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$400(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120730

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$500(Lcom/android/keyguard/KeyguardSecSimPinView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KeyguardSecSimPinView"

    const-string v1, "ForceHideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecSimPinView;->access$302(Lcom/android/keyguard/KeyguardSecSimPinView;Z)Z

    if-ne p2, v2, :cond_a

    const-string v0, "KeyguardSecSimPinView"

    const-string/jumbo v3, "verifyPasswordAndUnlock : PIN_PASSWORD_INCORRECT"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f120603

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->formatMessage(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    if-ne p1, v2, :cond_8

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f12053e

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f1206e9

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f12053f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f1206ea

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-interface {v0, v3, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->formatMessage(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-string v0, "KeyguardSecSimPinView"

    const-string/jumbo v1, "verifyPasswordAndUnlock : Fail - Unknown Error"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_ALL_RAT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12022c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1206e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v0, "KeyguardSecSimPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSimPinView$2;->val$subId:I

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSimPinView$2$xrMoqH8uVFLkrxmUXW3sW9ARvQY;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView$2;III)V

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecSimPinView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
