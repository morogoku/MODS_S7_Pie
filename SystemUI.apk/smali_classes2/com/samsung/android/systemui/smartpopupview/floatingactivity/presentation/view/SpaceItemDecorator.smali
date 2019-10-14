.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/SpaceItemDecorator;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpaceItemDecorator.java"


# instance fields
.field private mLeft:I

.field private mRight:I

.field private mTop:I


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/SpaceItemDecorator;->mLeft:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/SpaceItemDecorator;->mRight:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/SpaceItemDecorator;->mRight:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/SpaceItemDecorator;->mLeft:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    if-lt v0, v2, :cond_2

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/SpaceItemDecorator;->mTop:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    return-void
.end method
