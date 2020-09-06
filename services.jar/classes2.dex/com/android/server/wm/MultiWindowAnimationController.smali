.class public Lcom/android/server/wm/MultiWindowAnimationController;
.super Ljava/lang/Object;
.source "MultiWindowAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowAnimationController$MultiWindowChangeType;
    }
.end annotation


# static fields
.field static final CHANGE_TYPE_FREEFORM:I = 0x4

.field static final CHANGE_TYPE_FREEFORM_RESIZE:I = 0x5

.field static final CHANGE_TYPE_FULLSCREEN_RESIZE_IN_FORCE_SCALE:I = 0x8

.field static final CHANGE_TYPE_NONE:I = 0x0

.field static final CHANGE_TYPE_SIDE_SCREEN_RESIZE:I = 0x7

.field static final CHANGE_TYPE_SPLIT:I = 0x1

.field static final CHANGE_TYPE_SPLIT_DISMISS:I = 0x3

.field static final CHANGE_TYPE_SPLIT_RESIZE:I = 0x2

.field static final CHANGE_TYPE_TO_SIDE_SCREEN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MultiWindowAnimationController"

.field private static final WAIT_TIMEOUT_FOR_DRAWN:I = 0xbb8


# instance fields
.field private final ALL_BOUNDS_CHANGES:I

.field private final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field private mChangeType:I

.field private mFrozenDisplayId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mChangeType:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->ALL_BOUNDS_CHANGES:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpStableRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    return-void
.end method

.method private applyChangeType(Lcom/android/server/wm/DisplayContent;III)I
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_c

    move v6, v5

    goto :goto_d

    :cond_c
    move v6, v4

    :goto_d
    and-int/lit8 v7, p4, 0x3

    const/4 v8, 0x3

    if-ne v7, v8, :cond_14

    move v7, v5

    goto :goto_15

    :cond_14
    move v7, v4

    :goto_15
    if-eqz v6, :cond_1d

    and-int/lit8 v8, p4, -0x3

    if-nez v8, :cond_1d

    move v8, v5

    goto :goto_1e

    :cond_1d
    move v8, v4

    :goto_1e
    if-eqz v6, :cond_26

    and-int/lit8 v9, p4, -0x2

    if-nez v9, :cond_26

    move v4, v5

    nop

    :cond_26
    const/4 v9, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/MultiWindowAnimationController;->inFreeformWindowingMode(I)Z

    move-result v10

    if-nez v10, :cond_d1

    invoke-direct {v0, v2}, Lcom/android/server/wm/MultiWindowAnimationController;->inFreeformWindowingMode(I)Z

    move-result v10

    if-eqz v10, :cond_35

    goto/16 :goto_d1

    :cond_35
    invoke-direct {v0, v2}, Lcom/android/server/wm/MultiWindowAnimationController;->inSplitScreenWindowingMode(I)Z

    move-result v10

    if-eqz v10, :cond_c5

    invoke-direct {v0, v1}, Lcom/android/server/wm/MultiWindowAnimationController;->inPinnedWindowingMode(I)Z

    move-result v10

    if-nez v10, :cond_c5

    move-object/from16 v10, p1

    iget-object v5, v10, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->isAnimatingOrAdjustedForIme()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v12, :cond_68

    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_68

    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v15, :cond_68

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v16

    if-eqz v16, :cond_68

    const/4 v14, 0x1

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v13

    :cond_68
    if-nez v13, :cond_98

    if-nez v14, :cond_98

    if-eqz v11, :cond_6f

    goto :goto_98

    :cond_6f
    if-eqz v8, :cond_73

    const/4 v9, 0x2

    goto :goto_c4

    :cond_73
    if-eqz v4, :cond_81

    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v15, :cond_c4

    const-string v15, "MultiWindowAnimationController"

    const-string v3, "applyChangeType: moving split"

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    :cond_81
    if-eqz v7, :cond_95

    invoke-direct {v0, v2}, Lcom/android/server/wm/MultiWindowAnimationController;->inSplitScreenPrimaryWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_95

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_c4

    const-string v3, "MultiWindowAnimationController"

    const-string v15, "applyChangeType: creating primaryStack"

    invoke-static {v3, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    :cond_95
    const/4 v3, 0x1

    move v9, v3

    goto :goto_c4

    :cond_98
    :goto_98
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_c4

    const-string v3, "MultiWindowAnimationController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "applyChangeType: splitScreenMode isMinimized="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isHomeOrRecentsVisible="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isAnimatingForIme="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    :goto_c4
    goto :goto_ea

    :cond_c5
    move-object/from16 v10, p1

    invoke-direct {v0, v1}, Lcom/android/server/wm/MultiWindowAnimationController;->inSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_ea

    if-ne v2, v5, :cond_ea

    const/4 v9, 0x3

    goto :goto_ea

    :cond_d1
    :goto_d1
    move-object/from16 v10, p1

    if-eqz v7, :cond_d7

    const/4 v9, 0x5

    goto :goto_ea

    :cond_d7
    if-eqz v8, :cond_db

    const/4 v9, 0x5

    goto :goto_ea

    :cond_db
    if-eqz v4, :cond_e9

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_ea

    const-string v3, "MultiWindowAnimationController"

    const-string v5, "applyChangeType: moving freeform"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    :cond_e9
    const/4 v9, 0x4

    :cond_ea
    :goto_ea
    return v9
.end method

.method private applyResizeAnimation(Lcom/android/server/wm/AppWindowToken;)V
    .registers 14

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_db

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "MultiWindowAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyResizeAnimation: appToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_67

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->offset(II)V

    :cond_67
    goto :goto_6d

    :cond_68
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getRelativePosition(Landroid/graphics/Point;)V

    :goto_6d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_77
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9c

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v1

    if-nez v1, :cond_9c

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v4}, Lcom/android/server/wm/RemoteAnimationController;->createAnimationAdapter(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v4

    :goto_9b
    goto :goto_cc

    :cond_9c
    const/16 v1, 0x12

    invoke-virtual {p1, v4, v1, v3, v2}, Lcom/android/server/wm/AppWindowToken;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_cb

    new-instance v2, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v4, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v9

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v10

    const/4 v11, 0x1

    move-object v5, v4

    move-object v6, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZ)V

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v2, v4, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v4, v2

    goto :goto_9b

    :cond_cb
    nop

    :goto_cc
    move-object v1, v4

    if-eqz v1, :cond_db

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/AppWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    :cond_db
    return-void
.end method

.method private calculateCropRect(Lcom/android/server/wm/DisplayContent;ILandroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private inFreeformWindowingMode(I)Z
    .registers 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private inMultiWindowMode(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private inPinnedWindowingMode(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private inSplitScreenPrimaryWindowingMode(I)Z
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private inSplitScreenWindowingMode(I)Z
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static synthetic lambda$waitForMultiWindowsDrawnLocked$0(Lcom/android/server/wm/MultiWindowAnimationController;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowFreezeAnimationLocked(I)Lcom/android/server/wm/MultiWindowFreezeAnimation;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mChangeType:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiWindowFreezeAnimation;->dismiss(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAnimationController;->stopFreezingLocked()V

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private waitForMultiWindowsDrawnLocked()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAnimationController;->isMultiWindowFrozenLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "MultiWindowAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForMultiWindowsDrawnLocked: clear previous mWaitingForDrawn callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiWindowAnimationController$TLYijKaUc6xJbtLmH5RWXt73ChA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$MultiWindowAnimationController$TLYijKaUc6xJbtLmH5RWXt73ChA;-><init>(Lcom/android/server/wm/MultiWindowAnimationController;)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    return-void
.end method


# virtual methods
.method addWindowToWaitForDrawnLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "MultiWindowAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWindowToWaitForDrawnLocked: add mWaitingForDrawn win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CallStacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_51

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    :cond_51
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    :cond_56
    return-void
.end method

.method applyAppAnimation(Lcom/android/server/wm/AppWindowToken;)V
    .registers 2

    return-void
.end method

.method checkDrawnMultiWindowsLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAnimationController;->isMultiWindowFrozenLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iget v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    if-eq v0, v2, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_6d

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_6d

    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v2

    if-eqz v2, :cond_4c

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_8e

    const-string v2, "MultiWindowAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDrawnMultiWindowsLocked: relaunching app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    :cond_4c
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_6b

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_8e

    const-string v2, "MultiWindowAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDrawnMultiWindowsLocked: not yet allDrawn app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    :cond_6b
    const/4 v0, 0x0

    goto :goto_8e

    :cond_6d
    :goto_6d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_87

    const-string v2, "MultiWindowAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDrawnMultiWindowsLocked: remove win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8e
    :goto_8e
    return v0
.end method

.method isMultiWindowFrozenLocked()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method startFreezingLocked(Lcom/android/server/wm/DisplayContent;IIIZ)V
    .registers 10

    if-eqz p1, :cond_75

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_9

    goto :goto_75

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAnimationController;->isMultiWindowFrozenLocked()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowFreezeAnimationLocked(I)Lcom/android/server/wm/MultiWindowFreezeAnimation;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_74

    :cond_1c
    if-nez p5, :cond_1f

    return-void

    :cond_1f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowAnimationController;->applyChangeType(Lcom/android/server/wm/DisplayContent;III)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mChangeType:I

    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mChangeType:I

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/wm/MultiWindowAnimationController;->calculateCropRect(Lcom/android/server/wm/DisplayContent;ILandroid/graphics/Rect;)V

    new-instance v0, Lcom/android/server/wm/MultiWindowFreezeAnimation;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mChangeType:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/wm/MultiWindowFreezeAnimation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowAnimator;->setMultiWindowFreezeAnimationLocked(ILcom/android/server/wm/MultiWindowFreezeAnimation;)V

    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowAnimationController;->waitForMultiWindowsDrawnLocked()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_73

    const-string v1, "MultiWindowAnimationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartFreezing for displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return-void

    :cond_74
    :goto_74
    return-void

    :cond_75
    :goto_75
    return-void
.end method

.method stopFreezingLocked()V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mChangeType:I

    iput v1, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mFrozenDisplayId:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2e
    return-void
.end method
