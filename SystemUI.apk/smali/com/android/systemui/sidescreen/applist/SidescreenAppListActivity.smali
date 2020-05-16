.class public Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;
.super Landroid/app/Activity;
.source "SidescreenAppListActivity.java"

# interfaces
.implements Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;
    }
.end annotation


# static fields
.field public static sBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# instance fields
.field mConfig:Landroid/content/res/Configuration;

.field mEventBusObject:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;

.field mListView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

.field mProgressView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.sidescreen.applist.SidescreenAppListActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 3

    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$1;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->startLoader(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static getSidescreenWindowingMode()I
    .locals 4

    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method static synthetic lambda$reloadRecentTasks$0(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    return v1
.end method

.method private loadAppList()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    invoke-static {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->preload(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$LoadingTaskCallbacks;)V

    return-void
.end method

.method private reloadRecentTasks()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v3, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    new-instance v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iput v5, v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;->INSTANCE:Lcom/android/systemui/sidescreen/applist/-$$Lambda$SidescreenAppListActivity$dZTQK9s8UABhAeixJNJbg6TVgkg;

    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v11

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v6, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v13

    invoke-virtual {v13, v3, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    :goto_1
    if-gt v15, v12, :cond_1

    sub-int v7, v11, v15

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/recents/model/Task;

    new-instance v14, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;

    move-object/from16 v16, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3, v7}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mListView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    invoke-virtual {v3, v13}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->updateList(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string v3, "load time=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v17, v4

    move/from16 v18, v5

    sub-long v4, v14, v1

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v7, v5

    invoke-static {v3, v7}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getSidescreenWindowingMode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x1400

    if-eqz v1, :cond_0

    const-string v1, "changed : CONFIG_DENSITY | CONFIG_SCREEN_SIZE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/event/IconChangedEvent;

    invoke-direct {v2}, Lcom/android/systemui/sidescreen/applist/event/IconChangedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->setContentView(I)V

    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mListView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mProgressView:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;-><init>(Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mEventBusObject:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    return-void
.end method

.method public onPostExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->reloadRecentTasks()V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/LogHelper;->debug()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mEventBusObject:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mListView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->bind()V

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->loadAppList()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mEventBusObject:Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->mListView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->unbind()V

    invoke-static {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->clearIconCache()V

    invoke-static {p0}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    return-void
.end method
