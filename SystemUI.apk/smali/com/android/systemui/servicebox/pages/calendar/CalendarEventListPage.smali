.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;
.super Landroid/widget/LinearLayout;
.source "CalendarEventListPage.java"


# instance fields
.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mNavigationBarHeight:I

.field private mStatusBarHeight:I

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mNavigationBarHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mStatusBarHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mNavigationBarHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mStatusBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/16 v1, 0x8

    new-array v8, v1, [F

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07074b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v9, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11200ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_1

    iput v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mNavigationBarHeight:I

    :cond_1
    const/4 v11, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mNavigationBarHeight:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x3f1c28f6    # 0.61f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v1, v4

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v5, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    int-to-float v3, v2

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    int-to-float v3, v1

    mul-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mNavigationBarHeight:I

    mul-int/2addr v4, v3

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListPage;->mNavigationBarHeight:I

    mul-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v2, v4

    :cond_4
    :goto_1
    move v12, v1

    move v13, v2

    int-to-float v2, v11

    const/4 v3, 0x0

    int-to-float v4, v12

    int-to-float v5, v13

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v1, v0

    move-object v6, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
