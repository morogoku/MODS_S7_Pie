.class Lcom/android/keyguard/KeyguardKnoxGuardView$4;
.super Ljava/lang/Object;
.source "KeyguardKnoxGuardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxGuardView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->onUserInput()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$4;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->access$400(Lcom/android/keyguard/KeyguardKnoxGuardView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
