.class public Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;
.super Landroid/widget/FrameLayout;
.source "SideScreenMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;
    }
.end annotation


# instance fields
.field private final LONGPRESS_TIMEOUT:I

.field private mBottomShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

.field private mContentFrame:Landroid/graphics/Rect;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

.field private mEditModeView:Landroid/view/View;

.field private mLeftShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

.field private mOutlineFrame:Landroid/graphics/Rect;

.field private mOutlineInsets:Landroid/graphics/Rect;

.field private mOutlineView:Landroid/view/View;

.field private mPadding:I

.field private mRightShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

.field private mShadowControlView:Landroid/view/View;

.field private mSubWindowHandlerView:Landroid/widget/FrameLayout;

.field private mTopShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->LONGPRESS_TIMEOUT:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    return-object v0
.end method


# virtual methods
.method exitEditMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mEditModeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mEditModeView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getHandlerTouchableRegion(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mLeftShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mTopShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mTopShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mTopShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mRightShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mBottomShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mBottomShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mBottomShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070775

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v2, 0x7f070774

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0807d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mEditModeView:Landroid/view/View;

    const v0, 0x7f0a0589

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView$SubWindowHandlerTouchListener;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0526

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mShadowControlView:Landroid/view/View;

    const v0, 0x7f0a0521

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineView:Landroid/view/View;

    const v0, 0x7f0a0523

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mLeftShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    const v0, 0x7f0a0525

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mTopShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    const v0, 0x7f0a0524

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mRightShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    const v0, 0x7f0a0522

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mBottomShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070773

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mPadding:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mPadding:I

    invoke-virtual {v4, v2, v5, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mPadding:I

    invoke-virtual {v4, v2, v2, v5, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mPadding:I

    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/16 v2, 0x13

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mLeftShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->setOutlineFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mTopShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->setOutlineFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mRightShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->setOutlineFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mBottomShadow:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;

    iget-object v4, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuShadowParent;->setOutlineFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->putHandlerTouchableRegion()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mController:Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuController;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setVisibility(II)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mSubWindowHandlerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mOutlineView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mShadowControlView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenMenuView;->mShadowControlView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
