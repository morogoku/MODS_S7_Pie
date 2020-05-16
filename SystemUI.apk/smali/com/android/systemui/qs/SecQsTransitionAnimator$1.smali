.class Lcom/android/systemui/qs/SecQsTransitionAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecQsTransitionAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQsTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->mIsCanceled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$002(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;->showDetailAnimEnd()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$100(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Detail show animation canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->mIsCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->mIsCanceled:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$002(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$202(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$300(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$DetailCallback;->showDetailAnimEnd()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$400(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$500(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$602(Lcom/android/systemui/qs/SecQsTransitionAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Detail show animation end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
