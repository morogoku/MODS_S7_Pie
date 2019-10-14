.class Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPinBasedInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDexModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$600(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$200(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$200(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$400(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$500(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$502(Lcom/android/keyguard/KeyguardSecPinBasedInputView;I)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$600(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$002(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Z)Z

    return-void
.end method
