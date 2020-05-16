.class public Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;
.super Ljava/lang/Object;
.source "MultiStarSystemProxyImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field private mIam:Landroid/app/IActivityManager;

.field private mIwm:Landroid/view/IWindowManager;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method


# virtual methods
.method public closeFocusedTaskInSplitScreenMode()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    const-string v3, "1005"

    const-string v4, "Dismiss split view"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public createAppPairShortcut()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->createAppPairShortcut()V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDockSide()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIwm:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method

.method public getRunningTask(III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p3, p2}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public hasSoftNavigationBar()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v0

    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v0

    return v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSnapWindowEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setSnapWindowEnabled(Z)V

    return-void
.end method

.method public showRecentApps()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/Recents;->showRecentApps(Z)V

    return-void
.end method

.method public swapTasksInSplitScreenMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->swapTasksInSplitScreenMode()V

    return-void
.end method
