.class Lcom/android/systemui/qs/QSDetail$7;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideDetailAnimEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$600(Lcom/android/systemui/qs/QSDetail;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetail;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->access$702(Lcom/android/systemui/qs/QSDetail;Z)Z

    return-void
.end method

.method public showDetailAnimEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->access$402(Lcom/android/systemui/qs/QSDetail;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$7;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$500(Lcom/android/systemui/qs/QSDetail;)V

    return-void
.end method
