.class Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;
.super Landroid/animation/ValueAnimator;
.source "DividerCloseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerCloseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimDarknessAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerCloseController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->setStartDelay(J)V

    sget-object p1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$DimDarknessAnimator$KffptCV7qjIIC7ffLBTJiPw77CQ;

    invoke-direct {p1, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$DimDarknessAnimator$KffptCV7qjIIC7ffLBTJiPw77CQ;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimDarknessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerCloseController;->access$100(Lcom/android/systemui/stackdivider/DividerCloseController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
