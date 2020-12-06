.class public Lcom/android/server/wm/PinnedStackWindowController;
.super Lcom/android/server/wm/StackWindowController;
.source "PinnedStackWindowController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mTmpFromBounds:Landroid/graphics/Rect;

.field private mTmpToBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$animateResizePinnedStack$0(Lcom/android/server/wm/PinnedStackWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    move-object v2, v0

    check-cast v2, Lcom/android/server/wm/BoundsAnimationTarget;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    return-void
.end method


# virtual methods
.method public animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 24

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    iget-object v12, v9, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v12

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_110

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Pip] animateResizePinnedStack - toBounds : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  sourceHintBounds : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  animationDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_11a

    move/from16 v13, p3

    :try_start_30
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  fromFullscreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7f

    if-nez v11, :cond_7f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Pip] out of bounds - toBounds : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  displayBounds : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12
    :try_end_7b
    .catchall {:try_start_30 .. :try_end_7b} :catchall_122

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7f
    :try_start_7f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_91

    move v4, v3

    goto :goto_92

    :cond_91
    const/4 v4, 0x0

    :goto_92
    move v14, v4

    if-eqz v14, :cond_de

    if-nez v11, :cond_d6

    const/4 v2, 0x1

    iget-object v4, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v4, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->hasSplitScreenPrimaryStack()Z

    move-result v4

    if-eqz v4, :cond_ac

    iget-object v3, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/PinnedStackWindowController;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;)V

    goto :goto_b3

    :cond_ac
    iget-object v4, v9, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v5}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    :goto_b3
    iget-object v3, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c4

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v1, v3

    goto :goto_e1

    :cond_c4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v3

    iget-object v3, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v3, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_e1

    :cond_d6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_de
    .catchall {:try_start_7f .. :try_end_de} :catchall_122

    :cond_de
    if-eqz v11, :cond_e1

    const/4 v2, 0x2

    :cond_e1
    :goto_e1
    move-object v15, v1

    move/from16 v16, v2

    :try_start_e4
    iget-object v1, v9, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v10, v15, v14}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move-object v4, v15

    move/from16 v6, v16

    iget-object v1, v9, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v7, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;

    move-object v1, v7

    move-object v2, v9

    move-object v3, v0

    move v5, v13

    move-object/from16 v17, v0

    move-object v0, v7

    move v7, v11

    move-object v9, v8

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;-><init>(Lcom/android/server/wm/PinnedStackWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v12
    :try_end_109
    .catchall {:try_start_e4 .. :try_end_109} :catchall_10d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10d
    move-exception v0

    move-object v1, v15

    goto :goto_11d

    :cond_110
    move/from16 v13, p3

    :try_start_112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pinned stack container not found :("

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_11a
    move-exception v0

    move/from16 v13, p3

    :goto_11d
    monitor-exit v12
    :try_end_11e
    .catchall {:try_start_112 .. :try_end_11e} :catchall_122

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_122
    move-exception v0

    goto :goto_11d
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_12

    goto :goto_42

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_21

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_21
    nop

    :try_start_22
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    if-nez p2, :cond_2d

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->getDefaultOrLastSavedBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object p2, v3

    :cond_2d
    invoke-virtual {v2, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p1, v3}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v3

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p2

    :cond_42
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    const/4 v6, 0x0

    if-nez v5, :cond_3b

    move v5, v1

    goto :goto_3c

    :cond_3b
    move v5, v6

    :goto_3c
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_4b

    move v7, v1

    goto :goto_4c

    :cond_4b
    move v7, v6

    :goto_4c
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v8}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v8

    if-nez v5, :cond_62

    if-eqz v7, :cond_5c

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    iput v9, p1, Landroid/graphics/Rect;->right:I

    goto :goto_6f

    :cond_5c
    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    iput v9, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6f

    :cond_62
    if-eqz v7, :cond_6a

    iget v9, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v8

    iput v9, p1, Landroid/graphics/Rect;->left:I

    goto :goto_6f

    :cond_6a
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v8

    iput v9, p1, Landroid/graphics/Rect;->top:I

    :goto_6f
    if-nez v5, :cond_72

    goto :goto_73

    :cond_72
    move v1, v6

    :goto_73
    invoke-static {p1, v1}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    :cond_76
    return-void
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPictureInPictureActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_11

    goto :goto_25

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPictureInPictureAspectRatio(F)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_11

    goto :goto_62

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackWindowController;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    :cond_4e
    nop

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_58

    nop

    move v2, p1

    goto :goto_5a

    :cond_58
    const/high16 v2, -0x40800000    # -1.0f

    :goto_5a
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    :cond_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/PinnedStackWindowListener;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    :cond_b
    return-void
.end method
