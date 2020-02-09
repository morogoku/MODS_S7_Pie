.class public Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;
.super Ljava/lang/Object;
.source "InterpolateOnScrollPositionChangeHelper.java"


# instance fields
.field private containerLocation:[I

.field private containingScrollView:Landroid/widget/ScrollView;

.field private materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

.field private scrollLocation:[I

.field private shapedView:Landroid/view/View;


# virtual methods
.method public updateInterpolationForScreenPosition()V
    .locals 9

    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->scrollLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containerLocation:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->containingScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    iget-object v5, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    add-int v5, v0, v1

    if-le v5, v2, :cond_2

    add-int v5, v0, v1

    sub-int/2addr v5, v2

    iget-object v6, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    int-to-float v7, v5

    int-to-float v8, v1

    div-float/2addr v7, v8

    sub-float v7, v4, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v3}, Landroid/support/design/shape/MaterialShapeDrawable;->getInterpolation()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->materialShapeDrawable:Landroid/support/design/shape/MaterialShapeDrawable;

    invoke-virtual {v3, v4}, Landroid/support/design/shape/MaterialShapeDrawable;->setInterpolation(F)V

    iget-object v3, p0, Landroid/support/design/shape/InterpolateOnScrollPositionChangeHelper;->shapedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
