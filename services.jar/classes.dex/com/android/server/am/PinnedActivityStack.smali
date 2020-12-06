.class Lcom/android/server/am/PinnedActivityStack;
.super Lcom/android/server/am/ActivityStack;
.source "PinnedActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/PinnedStackWindowListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/ActivityStack<",
        "Lcom/android/server/wm/PinnedStackWindowController;",
        ">;",
        "Lcom/android/server/wm/PinnedStackWindowListener;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Z)V
    .registers 12

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V

    return-void
.end method

.method private skipResizeAnimation(Z)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v0, 0x1

    nop

    :cond_1a
    return v0
.end method


# virtual methods
.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 8

    const/4 v0, 0x1

    if-nez p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/server/am/PinnedActivityStack;->skipResizeAnimation(Z)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/PinnedActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/PinnedActivityStack;->mStackId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_1d

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    :goto_1d
    return-void
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/PinnedStackWindowController;
    .registers 12

    new-instance v7, Lcom/android/server/wm/PinnedStackWindowController;

    iget v1, p0, Lcom/android/server/am/PinnedActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/PinnedStackWindowController;-><init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    return-object v7
.end method

.method bridge synthetic createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/PinnedActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/PinnedStackWindowController;

    move-result-object p1

    return-object p1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackWindowController;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    return v0
.end method

.method getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingBoundsToFullscreen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackWindowController;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    return v0
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackWindowController;->setPictureInPictureActions(Ljava/util/List;)V

    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackWindowController;->setPictureInPictureAspectRatio(F)V

    return-void
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/am/PinnedActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
