.class Lcom/android/keyguard/KeyguardKnoxGuardView$5;
.super Ljava/lang/Object;
.source "KeyguardKnoxGuardView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->verifyPasswordAndUnlock()V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
