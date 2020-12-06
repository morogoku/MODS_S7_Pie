.class Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;
.super Ljava/lang/Object;
.source "SemFingerprintPromptView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$300(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$202(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;I)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$500(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$402(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;I)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintPromptView$2;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintPromptView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintPromptView;->access$300(Lcom/android/systemui/fingerprint/SemFingerprintPromptView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
