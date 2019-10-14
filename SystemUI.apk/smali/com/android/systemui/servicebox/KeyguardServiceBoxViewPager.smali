.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "KeyguardServiceBoxViewPager.java"


# instance fields
.field private mCurrentPosition:I

.field private mMinHeight:I

.field private mPeekTouchEventListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mSwipeLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mMinHeight:I

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isRtl()Z

    move-result v0

    return v0
.end method

.method private getCachedClockPage()Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
    .locals 5

    const-string/jumbo v0, "servicebox_clock"

    const-string v1, "clone_clock"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v1, v4

    check-cast v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMeasuredClockHeight(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;II)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->measure(II)V

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private isClockPage(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRtl()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateMinHeight()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getMinHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getMinHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mMinHeight:I

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->updateMinHeight()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/widget/ViewPager;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->updateMinHeight()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mCurrentPosition:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mCurrentPosition:I

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-le v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_5

    iget v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mMinHeight:I

    const/4 v7, 0x0

    nop

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isClockPage(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0, v9, p1, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getMeasuredClockHeight(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;II)I

    move-result v7

    if-ge v6, v7, :cond_1

    move v6, v7

    :cond_1
    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCachedClockPage()Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    move-result-object v1

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getMeasuredClockHeight(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;II)I

    move-result v7

    if-ge v6, v7, :cond_4

    move v6, v7

    :cond_4
    move v3, v6

    :cond_5
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mPeekTouchEventListener:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mCurrentPosition:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mCurrentPosition:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mCurrentPosition:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mPeekTouchEventListener:Ljava/util/function/Consumer;

    invoke-interface {v2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setOnPeekTouchEventListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mPeekTouchEventListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-void
.end method

.method public setSwipeLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->mSwipeLocked:Z

    return-void
.end method
