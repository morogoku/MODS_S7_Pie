.class Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;
.super Ljava/lang/Object;
.source "KeyguardSecPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$000(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSecPinBasedInputView"

    const-string v2, "Update iris preview caused due to click on password entry"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, -0x8

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$100(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1204a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->irisAuthenticationHelp(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$200(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->access$300(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
