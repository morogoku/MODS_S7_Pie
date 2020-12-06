.class public Lcom/android/systemui/qs/QSIntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "QSIntervalSeekBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# instance fields
.field private activeColrFilter:Landroid/graphics/ColorFilter;

.field private mIntervalPaint:Landroid/graphics/Paint;

.field private mIntervalRect:Landroid/graphics/Rect;

.field private normalColrFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSIntervalSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0705ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSIntervalSeekBar;->updateQSColoringResources(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isInScrollingContainer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingTop:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingTop:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingRight:I

    sub-int v4, v0, v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingLeft:I

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->isEnabled()Z

    move-result v7

    const/16 v8, 0x42

    const/16 v9, 0xff

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getMax()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingLeft:I

    sub-int v7, v0, v7

    iget v10, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    int-to-float v10, v6

    div-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getProgress()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getLayoutDirection()I

    move-result v11

    if-ne v11, v5, :cond_2

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, v7

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    const/4 v11, 0x0

    invoke-virtual {p1, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v11, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    if-ge v7, v10, :cond_3

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    goto :goto_4

    :cond_3
    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->normalColrFilter:Landroid/graphics/ColorFilter;

    :goto_4
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v11, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v9

    goto :goto_5

    :cond_4
    move v12, v8

    :goto_5
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v11, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060246

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060247

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_0
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->normalColrFilter:Landroid/graphics/ColorFilter;

    return-void
.end method
