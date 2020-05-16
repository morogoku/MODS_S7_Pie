.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->loadResource()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->downPressed:Z

    return-void
.end method

.method public static synthetic lambda$onKey$0(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

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

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->downPressed:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->downPressed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->downPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->downPressed:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->downPressed:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$4$fZsXrtrEh7QYG8qcgIj-mxefgyo;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$4$fZsXrtrEh7QYG8qcgIj-mxefgyo;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v2
.end method
