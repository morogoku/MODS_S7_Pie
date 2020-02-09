.class Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AffordanceArrowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/AffordanceArrowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$300(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$310(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$400(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$2;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$102(Lcom/android/systemui/statusbar/AffordanceArrowContainer;Z)Z

    return-void
.end method
