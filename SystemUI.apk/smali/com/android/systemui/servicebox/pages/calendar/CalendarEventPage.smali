.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "CalendarEventPage.java"


# instance fields
.field private mBottomMarginView:Landroid/view/View;

.field private mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

.field private final mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mHolder:Landroid/widget/FrameLayout;

.field private mInformationAreaView:Landroid/view/View;

.field private mLayoutId:I

.field private mListBigView:Landroid/view/View;

.field private mListPageView:Landroid/view/View;

.field private mListRootView:Landroid/view/View;

.field private mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

.field private mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarEventPage$HufmmJF3McWGLRiOwqhVdoWDc1A;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarEventPage$HufmmJF3McWGLRiOwqhVdoWDc1A;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0a0501

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static synthetic lambda$initViews$1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;Landroid/view/View;)V
    .locals 2

    const-string v0, "CalendarEventPage"

    const-string v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->showServiceBox()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateListViewLayout()V

    return-void
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private setGravity(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->updateDay()V

    :cond_0
    return-void
.end method

.method private updateLandscapeViewMargin(Landroid/widget/LinearLayout$LayoutParams;)Z
    .locals 7

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mLayoutId:I

    const/4 v1, 0x0

    const v2, 0x7f0d01fc

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->isLandscape()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070725

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eq v0, v2, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    nop

    return v1

    :cond_2
    iget v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNavigationBarHeight:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNavigationBarHeight:I

    iput v5, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    iget v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNavigationBarHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v1, v1, v6, v1}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    iget v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNavigationBarHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6, v1, v1, v1}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->setPadding(IIII)V

    :cond_4
    :goto_1
    return v2

    :cond_5
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNavigationBarHeight:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v2
.end method

.method private updateListViewLayout()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mIsMKeyboardConnected:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateLandscapeViewMargin(Landroid/widget/LinearLayout$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private updateNoEventsLayout()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mIsMKeyboardConnected:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-nez v3, :cond_1

    :cond_0
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateLandscapeViewMargin(Landroid/widget/LinearLayout$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getEventCnt()I

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method

.method private updateScrollBarView()V
    .locals 11

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollCache"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "scrollBar"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setVerticalThumbDrawable"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805f9

    iget-object v10, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v1, v9

    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805f8

    iget-object v10, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v1, v9

    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private updateTabView()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3f1c28f6    # 0.61f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    int-to-float v4, v0

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, v1

    mul-float/2addr v4, v5

    float-to-int v1, v4

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateTabViewParams(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateTabViewParams(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070728

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v5, 0x800053

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListBigView:Landroid/view/View;

    if-eqz v4, :cond_4

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3ef6872a    # 0.48149997f

    mul-float/2addr v5, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    const v6, 0x3ec7ae14    # 0.39f

    mul-float/2addr v5, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListBigView:Landroid/view/View;

    invoke-virtual {v5, v4, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mBottomMarginView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070745

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateTabViewParams(Landroid/view/View;II)V

    :goto_2
    return-void
.end method

.method private updateTabViewParams(Landroid/view/View;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    return-void
.end method

.method private updateViewStyleOnWhiteWallpaper()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViewStyleOnWhiteWallpaper()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v1, 0x7f0805f7

    goto :goto_0

    :cond_1
    const v1, 0x7f0805f6

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private updateViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->updateViews()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected closeWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    return-void
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 4

    const v0, 0x7f0d01fc

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mLayoutId:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d01fb

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mLayoutId:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mLayoutId:I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_calendar"

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a04db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const v1, 0x7f0a04dd

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListPageView:Landroid/view/View;

    const v0, 0x7f0a0502

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListBigView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListRootView:Landroid/view/View;

    :goto_0
    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    if-ne v0, v2, :cond_1

    const v0, 0x7f0a0503

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0a04da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mBottomMarginView:Landroid/view/View;

    :cond_1
    const v0, 0x7f0a04dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    const v0, 0x7f0a04fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    :cond_2
    const v0, 0x7f0a04f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    :cond_3
    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mDateView:Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->isBigView()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarEventPage$b3oOBnu-LOe6MGaERKmvXXammbs;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarEventPage$b3oOBnu-LOe6MGaERKmvXXammbs;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateNoEventsLayout()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateListViewLayout()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateScrollBarView()V

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateTabView()V

    :cond_6
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateViews()V

    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->init()V

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/servicebox/utils/SecTransition;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "servicebox_event_list"

    new-instance v1, Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    invoke-direct {v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setClipFace(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/systemui/servicebox/utils/SecTransitionOption;)Lcom/android/systemui/servicebox/utils/SecTransition;

    return-void
.end method

.method public refreshViews(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->updateDate()V

    return-void
.end method

.method public updateGravity(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mPageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mGravity:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mNoEventView:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->setGravity(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mListView:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->setGravity(Landroid/view/View;I)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mInformationAreaView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->setGravity(Landroid/view/View;I)V

    :cond_3
    iput p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->mGravity:I

    return-void

    :cond_4
    :goto_0
    return-void
.end method
