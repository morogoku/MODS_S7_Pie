.class Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;
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

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$000(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$102(Lcom/android/systemui/statusbar/AffordanceArrowContainer;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$010(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/AffordanceArrowContainer$1;->this$0:Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->access$200(Lcom/android/systemui/statusbar/AffordanceArrowContainer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method
