.class public Lcom/android/server/wm/EnsureDockedViewInternal;
.super Ljava/lang/Object;
.source "EnsureDockedViewInternal.java"


# static fields
.field private static final MIN_CONTENT_SIZE_DP:I = 0x30


# instance fields
.field private mAdjustForIme:Z

.field private mEnabled:Z

.field private final mEnsureDockedBounds:Landroid/graphics/Rect;

.field private final mH:Landroid/os/Handler;

.field private final mLastConfig:Landroid/content/res/Configuration;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mLastConfig:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mH:Landroid/os/Handler;

    return-void
.end method

.method private ensureDockedResize(Landroid/graphics/Rect;Z)V
    .registers 5

    iput-boolean p2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mAdjustForIme:Z

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mH:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_20
    return-void
.end method

.method private getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->setSnapAlgorithm()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method private isImeTargetAtBottom()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    const/4 v2, 0x4

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method private setSnapAlgorithm()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v6, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v8, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v9, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface/range {v4 .. v9}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-void
.end method


# virtual methods
.method public continueStartingAnimations()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    :cond_18
    return-void
.end method

.method public deferStartingAnimations()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mAdjustForIme:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v1, 0xce

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_1e
    return-void
.end method

.method public getMinTopStackBottom(Landroid/graphics/Rect;)I
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v1, v2, :cond_16

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMinimalSizeResizableTask()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    return v1
.end method

.method public initEnsureDock(Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v4, v5

    if-le v3, v4, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    invoke-virtual {p0, v3}, Lcom/android/server/wm/EnsureDockedViewInternal;->setEnable(Z)V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x1480

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->setSnapAlgorithm()V

    :cond_d
    return-void
.end method

.method public resetEnsureDockedMode()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    :cond_11
    return-void
.end method

.method public resetEnsureDockedModeIfNeeded(Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/wm/SnapWindowInternal;->mSnapWindowRunning:Z

    if-nez v3, :cond_64

    if-eqz p1, :cond_1f

    goto :goto_64

    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isImeGoingAwayLocked()Z

    move-result v7

    if-eqz v7, :cond_35

    move v7, v5

    goto :goto_36

    :cond_35
    move v7, v6

    :goto_36
    move v0, v7

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v7

    if-eqz v7, :cond_40

    goto :goto_41

    :cond_40
    move v5, v6

    :goto_41
    move v1, v5

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    :try_start_4a
    iget-object v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mH:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget-object v3, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_61} :catch_62

    goto :goto_6f

    :catch_62
    move-exception v2

    goto :goto_6f

    :cond_64
    :goto_64
    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_69
    move-exception v3

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_6f
    :goto_6f
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnabled:Z

    return-void
.end method

.method public setEnsureDockedMode(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/server/wm/EnsureDockedViewInternal;->isImeTargetAtBottom()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    :cond_17
    return-void
.end method
