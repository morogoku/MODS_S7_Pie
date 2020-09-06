.class Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;
.super Landroid/widget/FrameLayout;
.source "SideScreenGuideView.java"


# instance fields
.field private mBarView:Landroid/widget/ImageView;

.field private mDimView:Landroid/widget/ImageView;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFocusedWindowingMode:I

.field private mGradientColor:[I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mGradientView:Landroid/widget/ImageView;

.field private mIsHorizontalDivision:Z

.field private mStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientColor:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    return-void
.end method

.method private setGradientDrawable(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mIsHorizontalDivision:Z

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public initLayoutInfo(ZIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mIsHorizontalDivision:Z

    iput p2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayWidth:I

    iput p3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayHeight:I

    iput p4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mFocusedWindowingMode:I

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mIsHorizontalDivision:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->internalSetPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->internalSetPadding(IIII)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0518

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDimView:Landroid/widget/ImageView;

    const v0, 0x7f0a0517

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mBarView:Landroid/widget/ImageView;

    const v0, 0x7f0a0519

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientColor:[I

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0601bd

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientColor:[I

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0601bc

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientColor:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mBarView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientColor:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public reLayout(Landroid/graphics/Rect;F)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mBarView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mGradientView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mIsHorizontalDivision:Z

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayHeight:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mFocusedWindowingMode:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayHeight:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayHeight:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayWidth:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mFocusedWindowingMode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayWidth:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDisplayWidth:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_0
    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mFocusedWindowingMode:I

    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->setGradientDrawable(I)V

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p2, v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->requestLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenGuideView;->invalidate()V

    return-void
.end method
