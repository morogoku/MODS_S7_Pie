.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field protected mCellHeight:I

.field private mCellMarginTop:I

.field protected mCellVerticalMargin:I

.field protected mColumns:I

.field private mContentsColor:I

.field private mContext:Landroid/content/Context;

.field private final mDistribute:Ljava/lang/Runnable;

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mElevation:F

.field private mMarginBottom:I

.field private mPageBackground:Landroid/graphics/drawable/Drawable;

.field private mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mPageIndicatorPosition:F

.field private mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mRows:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    return p1
.end method

.method private addPage()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setContentsColor(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private distributeTiles()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    const v5, 0x7f0d017a

    const/4 v6, 0x0

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setContentsColor(I)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v7, v2

    move v2, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_4

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v2, v2, 0x1

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v2, v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v9, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setContentsColor(I)V

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v2, 0x1

    if-eq v1, v5, :cond_6

    :goto_1
    add-int/lit8 v1, v2, 0x1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    const-string v1, "CSTMPagedTileLayout"

    const-string v5, "mPages.remove"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    :cond_6
    move v1, v6

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method private movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v9

    iget v10, v8, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v0, 0xcc

    const/4 v1, 0x1

    if-ne v10, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v9, v2, :cond_1

    return-void

    :cond_0
    if-nez v9, :cond_1

    return-void

    :cond_1
    if-ne v10, v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    move v11, v2

    const/4 v2, 0x0

    if-ne v10, v0, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v3

    iget v4, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v3, v4

    sub-int/2addr v3, v1

    :goto_1
    move v12, v3

    if-ne v10, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v3, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v3

    sub-int/2addr v0, v1

    move v6, v0

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v3, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v3

    add-int/lit8 v13, v0, -0x1

    iget-object v0, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v12}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v14

    if-nez v14, :cond_5

    return-void

    :cond_5
    iget-object v0, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    iget-object v15, v8, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v0, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v15, v13, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v0, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v15}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v0, v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    new-instance v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$5;

    move-object v0, v4

    move-object v1, v7

    move v2, v9

    move v3, v11

    move-object v8, v4

    move-object v4, v15

    move/from16 v16, v10

    move-object v10, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$5;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    invoke-virtual {v10, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;

    invoke-direct {v0, v7, v9, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;II)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postDistributeTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removePage()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateTilesInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    if-ne v3, v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addPage()V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v5, v4, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v5, v4, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->postDistributeTiles()V

    return-void
.end method

.method public getColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mColumns:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 2

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getRtlPosition(I)I

    move-result v1

    return v1
.end method

.method public getMinimumTileNum()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRtlPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public getSpec()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v5, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "CSTMPagedTileLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newspecs =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTilesInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTotalPages()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    goto :goto_1

    :cond_0
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_1

    :cond_1
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xcb

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onAttachedToWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mVerticalMargin:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mMarginBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public removeAllPage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeAllViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setContentsColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    return-void
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setCallback(Lcom/android/systemui/qs/SecPageIndicator$Callback;)V

    return-void
.end method

.method public setPageMaxRows(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    return-void
.end method

.method public updateResources()Z
    .locals 10

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v4, 0x7f0b0076

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0b0077

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_0

    :cond_1
    const v4, 0x7f0b0074

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    :goto_0
    const-class v5, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSScreenGridResource;->getTilePageHeightToDisplaySize()I

    move-result v5

    const-class v6, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSScreenGridResource;->getTileDimensionToDisplayHeight()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    mul-int/2addr v6, v4

    sub-int v6, v5, v6

    add-int/lit8 v7, v4, 0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mMarginBottom:I

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    const/4 v7, 0x0

    if-gez v6, :cond_2

    iput v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    iput v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mMarginBottom:I

    iput v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    :cond_2
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0705a2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mMarginBottom:I

    if-le v8, v6, :cond_3

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mMarginBottom:I

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    :cond_3
    const-class v6, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSScreenGridResource;->getScreenGridColumns()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-ne v2, v6, :cond_4

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    if-ne v6, v8, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    :goto_1
    iput v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mVerticalMargin:I

    nop

    :goto_2
    move v6, v7

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    move-result v7

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateTilesInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    :cond_6
    return v8
.end method
