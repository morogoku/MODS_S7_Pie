.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewScaleAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    return-void
.end method
