.class Lcom/android/systemui/swipe/SwipeAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/swipe/SwipeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$focus:Z

.field final synthetic val$leftShortcut:Landroid/widget/ImageView;

.field final synthetic val$rightShortcut:Landroid/widget/ImageView;


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->isAnimationCanceled:Z

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-nez v3, :cond_3

    const/4 v2, 0x4

    nop

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->isAnimationCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$leftShortcut:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$rightShortcut:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$5;->val$focus:Z

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    nop

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
