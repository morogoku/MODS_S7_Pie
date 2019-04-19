.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

.field final synthetic val$curAngularSum:F


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v2

    cmpg-float v1, v1, v2

    const v2, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    invoke-static {v1, v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v0, v4

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-static {v1, v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->val$curAngularSum:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    if-eqz v0, :cond_4

    nop

    :goto_3
    move v1, v3

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->access$2402(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F

    :cond_4
    return-void
.end method
