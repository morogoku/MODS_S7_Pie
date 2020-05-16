.class public Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/applist/model/AppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->removePackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->addPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private addPackage(Ljava/lang/String;I)Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v5

    :cond_0
    if-ne v5, p2, :cond_2

    iget-object v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-virtual {v6, v3}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v6, v7}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$100(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/systemui/sidescreen/applist/model/AppInfo;

    invoke-direct {v6, v3}, Lcom/android/systemui/sidescreen/applist/model/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    iget-object v7, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget v8, v6, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->userId:I

    invoke-virtual {v7, v4, v8}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    const-string v8, ""

    :goto_1
    iput-object v8, v6, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->title:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v8, v8, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v9, v9, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8

    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private onPackageChangedCommon(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$500(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$2;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removePackage(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v1, v1, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v2, v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v3, v3, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/sidescreen/applist/model/AppInfo;

    iget v4, v3, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->userId:I

    if-ne v4, p2, :cond_0

    iget-object v4, v3, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v4, v4, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    iget-object v5, v3, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->key:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$700(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->onPackageChangedCommon(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->onPackageChangedCommon(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$500(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$1;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$500(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$3;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->access$500(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor$4;-><init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
