.class public Lcom/android/systemui/sidescreen/applist/model/TaskInfo;
.super Lcom/android/systemui/sidescreen/applist/model/ItemInfo;
.source "TaskInfo.java"


# instance fields
.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mkey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->makeKeyFromTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mkey:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$makeKeyFromPackage$0(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$startApp$1(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$startApp$2(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->getCallback()Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/sidescreen/applist/model/ItemInfo$ItemCallback;->removeTask()V

    :cond_0
    return-void
.end method

.method private static makeKeyFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;->INSTANCE:Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$MaW6LaAi_HrpE82-bnBY3wEn8PQ;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static makeKeyFromTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->makeKeyFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mkey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startApp(Landroid/content/Context;I)V
    .locals 8

    if-nez p2, :cond_1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$BGJOC3pH1NpqNH84t8o4EMaIfoY;

    invoke-direct {v2, p0}, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$BGJOC3pH1NpqNH84t8o4EMaIfoY;-><init>(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getSidescreenWindowingMode()I

    move-result p2

    :cond_1
    new-instance v7, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$8144VO43iN43Z_2vT4EMRRG-mJY;

    invoke-direct {v7, p0}, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$8144VO43iN43Z_2vT4EMRRG-mJY;-><init>(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->getActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move v3, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method
