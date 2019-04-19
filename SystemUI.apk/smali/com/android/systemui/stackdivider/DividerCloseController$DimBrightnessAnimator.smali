.class Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;
.super Landroid/animation/ValueAnimator;
.source "DividerCloseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerCloseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimBrightnessAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerCloseController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stackdivider/DividerCloseController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$DimBrightnessAnimator$kNytp0LUcgRaYymLJdDn3o5rskk;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerCloseController$DimBrightnessAnimator$kNytp0LUcgRaYymLJdDn3o5rskk;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator$1;-><init>(Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;Lcom/android/systemui/stackdivider/DividerCloseController;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerCloseController$DimBrightnessAnimator;->this$0:Lcom/android/systemui/stackdivider/DividerCloseController;

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
