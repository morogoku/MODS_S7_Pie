.class public Lcom/android/systemui/sidescreen/applist/view/ItemListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ItemListView.java"


# instance fields
.field mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->init()V

    return-void
.end method

.method private exceptOtherWindowingModeVisibleTasks()V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getSidescreenWindowingMode()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$S9KcHZikoYomV5bLEP_bbu0ny8E;

    invoke-direct {v5, v3}, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$S9KcHZikoYomV5bLEP_bbu0ny8E;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string/jumbo v5, "otherVisibleTasks size=%d"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iget v13, v8, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v10, v11, v12, v13}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->makeKeyFromTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$3FSRHrlkJSJqc-DbAKRChdi8BvI;

    invoke-direct {v7, v5}, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$3FSRHrlkJSJqc-DbAKRChdi8BvI;-><init>(Ljava/util/List;)V

    iget-object v8, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iput-object v8, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v8, "load time=%d"

    new-array v6, v6, [Ljava/lang/Object;

    sub-long v12, v10, v0

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v9

    invoke-static {v8, v6}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;-><init>(Lcom/android/systemui/sidescreen/applist/view/ItemListView;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;-><init>(Lcom/android/systemui/sidescreen/applist/view/ItemListView;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method

.method static synthetic lambda$exceptOtherWindowingModeVisibleTasks$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$exceptOtherWindowingModeVisibleTasks$1(Ljava/util/List;Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)Z
    .locals 5

    const-string v0, "itemInfo=%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "itemInfo filtered. itemInfo=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_0
    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public bind()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->stopScroll()V

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->clearIconCache()V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getAppInfosExceptRecentsList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->exceptOtherWindowingModeVisibleTasks()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
