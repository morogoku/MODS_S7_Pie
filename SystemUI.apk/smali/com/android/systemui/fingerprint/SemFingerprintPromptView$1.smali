.class Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;
.super Ljava/lang/Object;
.source "SemFingerprintPromptView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintPromptView;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->downPressed:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->downPressed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->downPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->downPressed:Z

    if-eqz v1, :cond_3

    const-string v1, "SemFingerprintPromptView"

    const-string v3, "Handle Back Key"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->downPressed:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$100(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$1;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$000(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_0
    return v2
.end method
