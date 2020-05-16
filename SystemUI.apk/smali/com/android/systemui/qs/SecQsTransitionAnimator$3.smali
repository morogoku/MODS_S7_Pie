.class Lcom/android/systemui/qs/SecQsTransitionAnimator$3;
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
.field final synthetic this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$100(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Customizer show animation canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$902(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$1002(Lcom/android/systemui/qs/SecQsTransitionAnimator;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQsTransitionAnimator;->mCustomizerCallback:Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator$CustomizerCallback;->showCustomizerAnimEnd()V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$400(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$500(Lcom/android/systemui/qs/SecQsTransitionAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsTransitionAnimator$3;->this$0:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->access$602(Lcom/android/systemui/qs/SecQsTransitionAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    const-string v0, "SecQsTransitionAnimator"

    const-string v1, "Customizer show animation end."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
