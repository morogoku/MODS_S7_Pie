.class public Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;
.super Landroid/widget/FrameLayout;
.source "SideScreenMenuShadowParent.java"


# instance fields
.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public setOutlineFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x30

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x5

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x50

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    neg-int v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowView;->setOutlineFrame(Landroid/graphics/Rect;)V

    return-void
.end method
