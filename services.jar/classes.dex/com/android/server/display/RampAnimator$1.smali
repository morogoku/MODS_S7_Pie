.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    const v3, 0x3c83126f    # 0.016f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_104

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/IntProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    if-eq v3, v4, :cond_3e

    goto/16 :goto_104

    :cond_3e
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v3, v0, v1}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_59

    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    int-to-float v5, v5

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v4, v5}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_a6

    :cond_59
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v5, :cond_69

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    :cond_69
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-le v5, v6, :cond_8f

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_a6

    :cond_8f
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    sub-float/2addr v6, v4

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    :goto_a6
    iget-object v4, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v4}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    # setter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$402(Lcom/android/server/display/RampAnimator;I)I

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    if-eq v4, v5, :cond_d8

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_d8
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v6

    if-eq v5, v6, :cond_ec

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)V

    goto :goto_103

    :cond_ec
    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimating:Z
    invoke-static {v5, v6}, Lcom/android/server/display/RampAnimator;->access$902(Lcom/android/server/display/RampAnimator;Z)Z

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    if-eqz v5, :cond_103

    iget-object v5, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v5}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_103
    :goto_103
    return-void

    :cond_104
    :goto_104
    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v3}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)V

    return-void
.end method
