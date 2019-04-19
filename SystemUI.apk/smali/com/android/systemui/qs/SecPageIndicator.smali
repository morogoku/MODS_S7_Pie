.class public Lcom/android/systemui/qs/SecPageIndicator;
.super Landroid/widget/LinearLayout;
.source "SecPageIndicator.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/SecPageIndicator$Callback;
    }
.end annotation


# instance fields
.field private indicatorColor:I

.field private mAnimating:Z

.field private mCallback:Lcom/android/systemui/qs/SecPageIndicator$Callback;

.field private mNumPages:I

.field private final mPageIndicatorContainerHeight:I

.field private final mPageIndicatorContainerWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->indicatorColor:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$Callback;

    return-object v0
.end method

.method private animate(II)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {p0, v5, v2}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    move-object v2, v4

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    iput-boolean v5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mAnimating:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private playAnimation(Landroid/widget/ImageView;Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_1

    const/16 v1, 0x96

    if-eqz p2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetIndicator(I)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v1, p1, :cond_0

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_0
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method private setPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->animate(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->resetIndicator(I)V

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method


# virtual methods
.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/SecPageIndicator$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$Callback;

    return-void
.end method

.method public setLocation(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    sub-int/2addr v3, v1

    sub-int v2, v3, v2

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setPosition(I)V

    :cond_2
    return-void
.end method

.method public setNumPages(I)V
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/systemui/qs/SecPageIndicator;->mAnimating:Z

    if-eqz v3, :cond_1

    const-string v3, "PageIndicator"

    const-string/jumbo v4, "setNumPages during animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->removeViewAt(I)V

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_2
    if-ge v3, p1, :cond_5

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0804bf

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0804be

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v1

    iget v7, p0, Lcom/android/systemui/qs/SecPageIndicator;->indicatorColor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    aget-object v7, v6, v2

    iget v8, p0, Lcom/android/systemui/qs/SecPageIndicator;->indicatorColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    aget-object v7, v6, v1

    iget v8, p0, Lcom/android/systemui/qs/SecPageIndicator;->indicatorColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    new-instance v7, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const-class v8, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v8}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const-class v8, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v8, v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/TransitionDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    move v8, v3

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerWidth:I

    iget v12, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorContainerHeight:I

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v10, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    const v11, 0x7f120096

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v1

    invoke-virtual {v10, v11, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/android/systemui/qs/SecPageIndicator$1;

    invoke-direct {v10, p0, v8}, Lcom/android/systemui/qs/SecPageIndicator$1;-><init>(Lcom/android/systemui/qs/SecPageIndicator;I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    iget v12, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/SecPageIndicator;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->resetIndicator(I)V

    return-void
.end method
