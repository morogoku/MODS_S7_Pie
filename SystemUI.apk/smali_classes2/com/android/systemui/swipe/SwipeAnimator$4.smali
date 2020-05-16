.class Lcom/android/systemui/swipe/SwipeAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private tapAnimationCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "SwipeAnimator"

    const-string v1, "Tap Animation cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->tapAnimationCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->tapAnimationCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v7}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v9}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1100(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v3}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$4;->tapAnimationCancelled:Z

    return-void
.end method
