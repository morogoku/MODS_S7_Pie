.class public Lcom/android/server/wm/SideScreenManagerInternal;
.super Ljava/lang/Object;
.source "SideScreenManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;
    }
.end annotation


# static fields
.field private static final SHADOW_THICKNESS:F = 24.0f

.field private static final TAG:Ljava/lang/String; = "SideScreenManagerInternal"


# instance fields
.field final mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

.field mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private mDividerHalfSize:I

.field private mDividerInset:I

.field private mDividerTouchIntercept:Lcom/android/server/wm/WindowState;

.field private mDockSide:I
    .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenDockSide;
    .end annotation
.end field

.field private mDockedHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mDockedVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mDraggingTask:Lcom/android/server/wm/Task;

.field private mForceScaleFullscreenWindows:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mImeHeight:I

.field private mIsDimensionLoaded:Z

.field private mIsImeShowing:Z

.field private mIsSnapAlgorithmInitialized:Z

.field private mLastConfig:Landroid/content/res/Configuration;

.field private mMenuContentInset:I

.field private mMinimizedDock:Z

.field private mMinimizedRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mOutlineThickness:I

.field private final mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

.field private mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

.field private mRotation:I

.field private final mScaleAnimSourceRect:Landroid/graphics/Rect;

.field private final mScaledWindowingMode:Landroid/util/SparseBooleanArray;

.field private mScreenDivider:Lcom/android/server/wm/WindowState;

.field private mScreenHeight:I

.field private mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

.field private mScreenWidth:I

.field private final mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

.field private mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShadowThickness:I

.field private final mSideScreenBounds:Landroid/graphics/Rect;

.field private mSideScreenDocked:Z

.field final mSideScreenInnerRect:Landroid/graphics/Rect;

.field private mSideScreenMode:I

.field final mSideScreenOuterRect:Landroid/graphics/Rect;

.field private mSideScreenVisible:Z

.field private mStackDivider:Lcom/android/server/wm/WindowState;

.field private mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

.field private final mTargetStackBoundsOfMenu:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskTouchRegion:Landroid/graphics/Region;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpStackBounds:Landroid/graphics/Rect;

.field private mVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

.field private mWindowingModeAdjustedForIme:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaleAnimSourceRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    new-instance v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    const/16 v1, 0x65

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerTouchIntercept:Lcom/android/server/wm/WindowState;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenInnerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mLastConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTaskTouchRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsSnapAlgorithmInitialized:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRectF:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    new-instance v1, Lcom/android/server/wm/SideScreenBoundsAnimationController;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    return-void
.end method

.method private checkAndInitialSnapAlgorithm()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsSnapAlgorithmInitialized:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsSnapAlgorithmInitialized:Z

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_e
    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm()V

    :cond_11
    return-void
.end method

.method private getDividerInset(I)I
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_7
    packed-switch p1, :pswitch_data_2c

    const-string v0, "SideScreenManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDividerInset() what is mode? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :pswitch_25
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerInset:I

    return v0

    :pswitch_28
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerHalfSize:I

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method private getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .registers 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0

    :cond_b
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    return-object v0
.end method

.method private getTargetStackBoundsOfMenu(I)Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private isFullscreenResizable()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-nez v2, :cond_1e

    const-string v3, "SideScreenManagerInternal"

    const-string v4, "isFullscreenResizable(). task is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v1

    return v1

    :cond_27
    return v1
.end method

.method public static synthetic lambda$animateScaleStack$2(Lcom/android/server/wm/SideScreenManagerInternal;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaleAnimSourceRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move v6, v4

    goto :goto_11

    :cond_f
    const/4 v2, 0x0

    move v6, v2

    :goto_11
    const/4 v5, -0x1

    move-object v2, p1

    move-object v4, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->animateBounds(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$finishScreenPositioning$0(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenPositioner;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$finishStackPositioning$1(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenStackPositioner;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$notifyDockedStackMinimizedChanged$5(Lcom/android/server/wm/SideScreenManagerInternal;Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenMinimizedChanged(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method public static synthetic lambda$scheduleHideSideScreen$3(Lcom/android/server/wm/SideScreenManagerInternal;)V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->hideSideScreen()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public static synthetic lambda$setAdjustedForIme$6(Lcom/android/server/wm/SideScreenManagerInternal;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1e
    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$setMinimizedDockedStack$4(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method private loadDimension()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerInset:I

    const v1, 0x105035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerHalfSize:I

    const v1, 0x105035f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iput v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    return-void
.end method

.method private notifyDockedStackMinimizedChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetCurrentBoundsAndSnapTarget()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenDocked()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    goto :goto_1e

    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    :goto_1e
    nop

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-eqz v1, :cond_25

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private resetDockSide()V
    .registers 3

    nop

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setDockSide(IZ)V

    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isHomeStackResizable()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm(ZZ)V

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v4, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5aUgSVQf_hAssRy5ZF5qWkt_oMA;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    return-void
.end method

.method private setSnapAlgorithm()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm(ZZ)V

    return-void
.end method

.method private setSnapAlgorithm(ZZ)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v10, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v11, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    move v3, v10

    move v4, v8

    move v5, v9

    move-object v6, v11

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_3b

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-static {v12, v8, v9, v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x2

    invoke-static {v12, v8, v9, v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_3b
    if-eqz p2, :cond_57

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    move-object v2, v12

    move v3, v8

    move v4, v9

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedVerticalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    move-object v2, v12

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;->getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockedHorizontalDividerSnapAlgorithm:Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    :cond_57
    return-void
.end method

.method private setTargetStackBoundsOfMenu(ILandroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_11

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_14

    :cond_11
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_14
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTargetStackBoundsOfMenu:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private updateCurrentBoundsAndSnapTarget()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenDocked()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    goto :goto_3d

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    goto :goto_3d

    :cond_27
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_34

    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_34
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    nop

    :goto_3d
    nop

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-eqz v1, :cond_44

    iput-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method addingDecorRect(Landroid/graphics/Rect;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_7
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method adjustForceScaleFullScreenWindow(Lcom/android/server/wm/WindowStateAnimator;Z)Z
    .registers 14

    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getForceScaleFullscreenWindows()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9a

    if-eqz v0, :cond_9a

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_9a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_9a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    goto/16 :goto_9a

    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getScreenDivider()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_30

    return v2

    :cond_30
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v4, :cond_4c

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    goto :goto_5a

    :cond_4c
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    :goto_5a
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v4, v8

    iput v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    iput v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    iget v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_85

    iget v8, p1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_81

    goto :goto_85

    :cond_81
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->requestIgnoreParentCrop(Z)V

    goto :goto_88

    :cond_85
    :goto_85
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->requestIgnoreParentCrop(Z)V

    :goto_88
    iget-object v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    int-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v2, v8, v9, p2}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    return v3

    :cond_9a
    :goto_9a
    return v2
.end method

.method adjustForceScaleFullScreenWindowDimmer(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Z
    .registers 15

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    goto :goto_2a

    :cond_d
    instance-of v1, p1, Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_19

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    goto :goto_2a

    :cond_19
    instance-of v1, p1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v0, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_2a

    :cond_23
    instance-of v1, p1, Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2a

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/TaskStack;

    :cond_2a
    :goto_2a
    const/4 v1, 0x0

    if-nez v0, :cond_2e

    return v1

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getScreenDivider()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_35

    return v1

    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v3, :cond_4d

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    goto :goto_5b

    :cond_4d
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    :goto_5b
    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v7

    const/4 v9, 0x1

    if-nez v8, :cond_7d

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_79

    goto :goto_7d

    :cond_79
    invoke-virtual {p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setIgnoreParentCrop(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_80

    :cond_7d
    :goto_7d
    invoke-virtual {p2, p3, v9}, Landroid/view/SurfaceControl$Transaction;->setIgnoreParentCrop(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :goto_80
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {p2, p3, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v1, p4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget v7, p4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {p2, p3, v1, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return v9
.end method

.method adjustScaleAndPositionIfNeeded(Lcom/android/server/wm/WindowStateAnimator;FFLandroid/graphics/Rect;Z)Z
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->inSideScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/SideScreenManagerInternal;->getWindowingModeScaled(I)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v6

    if-eqz v6, :cond_53

    iget-object v6, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v6, v6, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v3, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v4, v8

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    goto :goto_90

    :cond_53
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v6}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isMenuWindow(I)Z

    move-result v6

    if-eqz v6, :cond_90

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v6}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v6

    iget-object v8, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v9, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    iget v10, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v8, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget-object v9, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    int-to-float v10, v8

    sub-float v3, p2, v10

    int-to-float v10, v9

    sub-float v4, p3, v10

    iget-object v10, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/SideScreenManagerInternal;->getTargetStackBoundsOfMenu(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    :cond_90
    :goto_90
    if-eqz v5, :cond_126

    iget-object v6, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    iput v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iget-object v6, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_f6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    int-to-float v11, v6

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float/2addr v13, v10

    mul-float/2addr v12, v13

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v6, v11

    int-to-float v10, v8

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v13, v13, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v8, v10

    :cond_f6
    int-to-float v9, v6

    iget-object v10, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, v1, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    int-to-float v9, v8

    iget-object v10, v0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, v1, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v11, v12, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v8, v9

    iget-object v9, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v10, v11

    int-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    move/from16 v12, p5

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto :goto_128

    :cond_126
    move/from16 v12, p5

    :goto_128
    return v5
.end method

.method animateScaleStack(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaleAnimSourceRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mBoundsAnimationController:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$RzVE1u79R1-geReP1Cca8zDiBoQ;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animateScaleStack(ILandroid/graphics/Rect;ZLjava/lang/Runnable;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isActivityTypeStandard()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_24

    :cond_1b
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/wm/SideScreenManagerInternal;->animateScaleStack(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    const/4 v2, 0x1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_24
    :goto_24
    const/4 v2, 0x0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public calculateOppositeStackBounds(ILandroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_48

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    if-ne p1, v4, :cond_37

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_47

    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_47

    :cond_37
    if-ne p1, v2, :cond_3d

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_47

    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :goto_47
    goto :goto_4f

    :cond_48
    new-array v1, v2, [Landroid/graphics/Rect;

    aput-object p2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->excludeSideScreenBounds(I[Landroid/graphics/Rect;)V

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public calculateScaleRect(Landroid/graphics/Rect;IIF)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method public checkMinimizeChanged(Z)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenDocked:Z

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_53

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-nez v1, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_22

    return-void

    :cond_22
    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMinimizedDock:Z

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-nez v3, :cond_33

    return-void

    :cond_33
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_41

    move v5, v3

    goto :goto_42

    :cond_41
    move v5, v6

    :goto_42
    if-eqz v5, :cond_4f

    if-eqz v4, :cond_4f

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v7

    if-ltz v7, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v6

    :goto_4e
    move v5, v3

    :cond_4f
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setMinimizedDockedStack(ZZ)V

    return-void

    :cond_53
    :goto_53
    return-void
.end method

.method public varargs excludeSideScreenBounds(I[Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v1, :cond_11

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    invoke-static {p1, v1, v2, v3, p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->excludeSideScreenBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;I[Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method findTaskForTaskSwitchPoint(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/TaskStack;)Lcom/android/server/wm/Task;
    .registers 10

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v4, p4, :cond_17

    goto :goto_2c

    :cond_17
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_2b

    return-object v3

    :cond_2b
    return-object v2

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-object v3
.end method

.method finishScreenPositioning()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$T6D8gmesxcD4tonFUpClwxsMAp4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$T6D8gmesxcD4tonFUpClwxsMAp4;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method finishStackPositioning()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$NK7aVep-Zn10U8v1XMMcrqAK1Dk;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$NK7aVep-Zn10U8v1XMMcrqAK1Dk;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getCurrentSideScreenBounds(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

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

.method public getCurrentSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDividerTouchIntercept()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerTouchIntercept:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getDividerTouchableRegion(Landroid/graphics/Region;)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v3, v2, 0x5

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    sget v5, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_GESTURE_SIZE:I

    sub-int v5, v1, v5

    sub-int v6, v2, v3

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_2e
    return-void
.end method

.method public getDockSide()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getForceScaleFullscreenWindows()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mForceScaleFullscreenWindows:Z

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getMenuTouchableRegion(Landroid/graphics/Region;I)V
    .registers 10

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_af

    :cond_11
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    const/16 v2, 0xa33

    if-ne p2, v2, :cond_47

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    :cond_47
    const/16 v2, 0xa34

    if-ne p2, v2, :cond_77

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    :cond_77
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v2

    if-eqz v2, :cond_a8

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getMenuWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->calculateScaleRect(Landroid/graphics/Rect;IIF)V

    :cond_a8
    if-eqz v1, :cond_af

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_af
    return-void
.end method

.method getMenuWindow(I)Lcom/android/server/wm/WindowState;
    .registers 3

    const/16 v0, 0xa33

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_9
    const/16 v0, 0xa34

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method getMenuWindowByWindowingMode(I)Lcom/android/server/wm/WindowState;
    .registers 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_9
    const/16 v0, 0x65

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method getOppositeSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->checkAndInitialSnapAlgorithm()V

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public varargs getOtherSideBounds(I[Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v1, :cond_11

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getOtherSideBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPrimaryMenuWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getScreenDivider()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenDivider:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getScreenPositionerDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getSecondaryMenuWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getSideScreenBounds(Z)Landroid/graphics/Rect;
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_19

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    goto :goto_26

    :catchall_17
    move-exception v1

    goto :goto_2f

    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    :goto_26
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v0

    return-object v1

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_17

    throw v1
.end method

.method public getSideScreenMode()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz p2, :cond_1c

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1c
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    const/4 v4, 0x0

    invoke-static {p1, v2, p2, v4, v3}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    if-ne p1, v3, :cond_41

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-lez v3, :cond_41

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    add-int/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_41
    if-eqz p3, :cond_4a

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_4a
    monitor-exit v0

    return-object v2

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getSideScreenStackBounds(I)Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSideScreenStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getWindowingModeScaled(I)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSideScreenStackBounds(ILandroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    invoke-static {p1, p2, v2, p3, v3}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    if-ne p1, v3, :cond_3f

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-lez v3, :cond_3f

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_3f
    monitor-exit v0

    return-object v2

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public getSideScreenStackBounds(IZ)Landroid/graphics/Rect;
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    nop

    invoke-virtual {p0, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getWindowingModeScaled(I)Z

    move-result v3

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    invoke-static {p1, v2, p3, v3, v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getSideScreenStackBounds(ILandroid/graphics/Rect;ZZI)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    if-ne p1, v3, :cond_43

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-lez v3, :cond_43

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_43
    monitor-exit v0

    return-object v2

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public getSideScreenStackTouchableRegion(ILandroid/graphics/Region;F)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->calculateScaleRect(Landroid/graphics/Rect;IIF)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->checkAndInitialSnapAlgorithm()V

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm(II)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method getStackDivider()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackDivider:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getStackPositionerDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getWindowingModeScaled(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method hasPrimaryMenuWindow()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method hasSecondaryMenuWindow()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hideSideScreen()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->resetDockSide()V

    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setMinimizedDockedStack(ZZ)V

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isAnimatingBoundsToFullscreen(Lcom/android/server/wm/StackWindowController;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isDragingSideScreenLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isHomeStackResizable()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v2, 0x1

    nop

    :cond_20
    return v2
.end method

.method isMovingTopTaskLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isRightDockSide()Z
    .registers 2

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isSideScreenDocked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenDocked:Z

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isSideScreenDockedMode()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSideScreenVisible()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method needAssignImeAboveSideScreen(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Z)Z
    .registers 5

    if-eqz p2, :cond_1a

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->hasSideScreenStack(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    goto :goto_18

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    return v1
.end method

.method notifyLidStateChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/4 v1, 0x0

    const/16 v2, 0xcf

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifySideScreenDockSideChanged(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifySideScreenTaskSwitched(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_130

    if-nez p1, :cond_130

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit16 v2, v1, 0x1480

    if-eqz v2, :cond_130

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapAlgorithm()V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenInnerRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x2

    if-eqz v2, :cond_50

    if-ne v2, v4, :cond_43

    goto :goto_50

    :cond_43
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_5c

    :cond_50
    :goto_50
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_5c
    nop

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    if-ne v7, v5, :cond_65

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    if-eq v7, v6, :cond_dc

    :cond_65
    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_6d

    move v7, v8

    goto :goto_72

    :cond_6d
    int-to-float v7, v5

    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    :goto_72
    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    if-nez v9, :cond_77

    goto :goto_7c

    :cond_77
    int-to-float v8, v6

    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    :goto_7c
    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v9, :cond_b0

    iget v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    if-ne v9, v4, :cond_87

    goto :goto_b0

    :cond_87
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_d8

    :cond_b0
    :goto_b0
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    :goto_d8
    iput v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenWidth:I

    iput v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenHeight:I

    :cond_dc
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_f1

    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_ee

    invoke-virtual {p0, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->switchDockSide(Z)V

    goto :goto_f1

    :cond_ee
    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->resetDockSide()V

    :cond_f1
    :goto_f1
    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    if-eq v3, v2, :cond_12d

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v3, :cond_115

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_124

    :cond_115
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->top:I

    :goto_124
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mRotation:I

    :cond_12d
    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->updateCurrentBoundsAndSnapTarget()V

    :cond_130
    return-void
.end method

.method positionDisplayCutoutBackground(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_3c

    goto :goto_3b

    :pswitch_5
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    :pswitch_15
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    :pswitch_25
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    add-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    :pswitch_30
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    add-int/2addr v2, v3

    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    nop

    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_25
        :pswitch_15
        :pswitch_5
    .end packed-switch
.end method

.method positionScreenDivider(IILandroid/graphics/Rect;)V
    .registers 10

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    :cond_1c
    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getDividerInset(I)I

    move-result v1

    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_51

    :cond_3b
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_51
    return-void
.end method

.method positionScreenDividerTouchIntercept(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerHalfSize:I

    sub-int v3, v1, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_GESTURE_SIZE:I

    sub-int v5, v1, v5

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method positionSideScreenMenu(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v2

    if-eqz v2, :cond_2b

    nop

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_32

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_32
    if-eqz v1, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_3f

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_3f
    invoke-virtual {p0, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->addingDecorRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setTargetStackBoundsOfMenu(ILandroid/graphics/Rect;)V

    return-void
.end method

.method positionStackDivider(Landroid/graphics/Rect;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasSideScreenSecondaryStack()Z

    move-result v1

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    goto :goto_22

    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    :goto_22
    const/16 v4, 0x64

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->inSideScreenWindowingMode()Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_32

    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    goto :goto_40

    :cond_32
    :goto_32
    if-eqz v1, :cond_3b

    const/16 v5, 0x65

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    :goto_3a
    goto :goto_40

    :cond_3b
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v5

    goto :goto_3a

    :goto_40
    nop

    if-nez v5, :cond_4f

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void

    :cond_4f
    sget v6, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_DIVIDER_INSET:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v4, :cond_96

    if-eqz v1, :cond_96

    if-eqz v2, :cond_7b

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_cd

    :cond_7b
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_cd

    :cond_96
    if-eqz v2, :cond_b3

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v6

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_cd

    :cond_b3
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_cd
    if-eqz v2, :cond_de

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v4, v7

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    add-int/2addr v4, v7

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_ec

    :cond_de
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v4, v7

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    add-int/2addr v4, v7

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :goto_ec
    return-void
.end method

.method postTranslateAfterRotation(Landroid/graphics/Rect;II)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p2, p3}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_27

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v4, :cond_27

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_42

    :cond_27
    const/4 v4, 0x3

    if-ne v0, v4, :cond_42

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-ne v4, v3, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v4, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->SIDE_SCREEN_STACK_GAP:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_42
    :goto_42
    return-void
.end method

.method public putSideScreenMenuTouchableRegionLocked(Landroid/graphics/Rect;I)V
    .registers 5

    const/16 v0, 0x64

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    const/16 v0, 0x65

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method reevaluateMenuVisibility(IZ)V
    .registers 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    goto :goto_13

    :cond_a
    const/16 v0, 0x65

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    :cond_13
    :goto_13
    return-void
.end method

.method scheduleHideSideScreen()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$5MD8BeFtI8vdciE-MR3NEzGxFLQ;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method setAdjustedForIme(IZI)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-lez p3, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    move v1, v0

    :goto_8
    if-eqz v1, :cond_c

    move v2, p3

    goto :goto_d

    :cond_c
    move v2, v0

    :goto_d
    move p3, v2

    iget-boolean v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsImeShowing:Z

    if-ne v1, v2, :cond_17

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    if-ne p3, v2, :cond_17

    return-void

    :cond_17
    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsImeShowing:Z

    iput p3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mImeHeight:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    if-nez v3, :cond_2c

    return-void

    :cond_2c
    if-eqz v1, :cond_32

    iput p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    move v0, p1

    goto :goto_37

    :cond_32
    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    iput v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mWindowingModeAdjustedForIme:I

    move v0, v4

    :goto_37
    invoke-virtual {p0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->needResizeStackForAdjustedForIme(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_3e

    return-void

    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$ux3HtSM3iDEezouTcHLSyr5IIo8;

    invoke-direct {v5, p0, v0}, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$ux3HtSM3iDEezouTcHLSyr5IIo8;-><init>(Lcom/android/server/wm/SideScreenManagerInternal;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mCurrentSnapTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-void
.end method

.method setDividerTouchIntercept(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDividerTouchIntercept:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method setDockSide(IZ)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-eq v0, p1, :cond_e

    iput p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-eqz p2, :cond_b

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->resetCurrentBoundsAndSnapTarget()V

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->notifySideScreenDockSideChanged(I)V

    :cond_e
    return-void
.end method

.method public setForceScaleFullscreenWindows(Z)V
    .registers 2

    return-void
.end method

.method setMenuWindow(ILcom/android/server/wm/WindowState;)V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0xa33

    if-ne p1, v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    goto :goto_1e

    :cond_10
    const/16 v1, 0xa34

    if-ne p1, v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->setWindow(Lcom/android/server/wm/WindowState;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->reevaluateVisiblity(Z)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setScaledWindowingMode(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setScreenDivider(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenDivider:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public setSideScreenBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSideScreenDocked(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenDocked:Z

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSideScreenMenuVisibility(IZ)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0xa33

    if-ne p1, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mPrimaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v1, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    goto :goto_12

    :cond_a
    const/16 v1, 0xa34

    if-ne p1, v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSecondaryMenuState:Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;

    iget-object v0, v1, Lcom/android/server/wm/SideScreenManagerInternal$SideScreenMenuState;->mWindow:Lcom/android/server/wm/WindowState;

    :cond_12
    :goto_12
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz p2, :cond_1d

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_21
    return-void
.end method

.method public setSideScreenMode(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iput p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->checkMinimizeChanged(Z)V

    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSnapTarget()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(Landroid/graphics/Rect;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissTarget()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V

    goto :goto_20

    :cond_1d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setCurrentSnapTargetLocked(Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;)V

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setStackDivider(Lcom/android/server/wm/WindowState;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackDivider:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenInnerRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenOuterRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showSideScreen()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenVisible:Z

    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public sideScreenStackResizeDisallowed(Lcom/android/server/wm/StackWindowController;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startMovingSideScreen(II)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_ad

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getMultiWindowAnimationController()Lcom/android/server/wm/MultiWindowAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowAnimationController;->isMultiWindowFrozenLocked()Z

    move-result v1

    if-nez v1, :cond_ad

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowFreezeAnimationLocked(I)Lcom/android/server/wm/MultiWindowFreezeAnimation;

    move-result-object v1

    if-eqz v1, :cond_29

    goto/16 :goto_ad

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getScreenDivider()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_9f

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-static {v2, v3}, Lcom/android/server/wm/SideScreenPositioner;->create(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/SideScreenPositioner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-nez v2, :cond_5b

    const-string v2, "SideScreenManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startMovingSideScreen, invalid mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_5 .. :try_end_57} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SideScreenPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v5, v5, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_98

    const-string v2, "SideScreenManagerInternal"

    const-string/jumbo v4, "startMovingSideScreen: Unable to transfer touch focus"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenPositioner;->unregister()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_5b .. :try_end_94} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_98
    :try_start_98
    iget-object v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/SideScreenPositioner;->startDrag(Lcom/android/server/wm/WindowState;FF)V

    :cond_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mScreenPositioner:Lcom/android/server/wm/SideScreenPositioner;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenPositioner;->postStartMovingSideScreen()V

    :cond_ac
    return-void

    :cond_ad
    :goto_ad
    :try_start_ad
    const-string v1, "SideScreenManagerInternal"

    const-string/jumbo v2, "startMovingSideScreen, display frozen."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startMovingTopTask(IIII)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_da

    :pswitch_b
    const/4 v2, 0x0

    move-object v3, v1

    goto :goto_45

    :pswitch_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->getStackDivider()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_22

    :cond_21
    move-object v3, v1

    :goto_22
    goto :goto_45

    :pswitch_23
    invoke-virtual {p0, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->getMenuWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {p3}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->getMenuWindowingMode(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    goto :goto_3f

    :cond_3e
    move-object v5, v1

    :goto_3f
    nop

    move-object v3, v5

    goto :goto_45

    :catchall_42
    move-exception v1

    goto/16 :goto_d6

    :goto_45
    nop

    if-eqz v2, :cond_cc

    if-eqz v3, :cond_cc

    iget-object v4, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_cc

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inSideScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_cc

    :cond_5b
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-static {v4, v5, p4, p3}, Lcom/android/server/wm/SideScreenStackPositioner;->create(Lcom/android/server/wm/WindowManagerService;III)Lcom/android/server/wm/SideScreenStackPositioner;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    if-nez v4, :cond_84

    const-string v1, "SideScreenManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStackPositioningLocked: not support mode #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mSideScreenMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_84
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SideScreenStackPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v7, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v7, v7, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v4

    if-nez v4, :cond_bd

    const-string v4, "SideScreenManagerInternal"

    const-string/jumbo v6, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    invoke-virtual {v4}, Lcom/android/server/wm/SideScreenStackPositioner;->unregister()V

    iput-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    monitor-exit v0

    return-void

    :cond_bd
    iget-object v4, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mStackPositioner:Lcom/android/server/wm/SideScreenStackPositioner;

    iget-object v6, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    int-to-float v8, p1

    int-to-float v9, p2

    move-object v5, v2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/SideScreenStackPositioner;->startDrag(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/Task;FF)V

    iput-object v3, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDraggingTask:Lcom/android/server/wm/Task;

    monitor-exit v0

    return-void

    :cond_cc
    :goto_cc
    const-string v1, "SideScreenManagerInternal"

    const-string/jumbo v4, "startStackPositioningLocked: Unable to start moving"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_e .. :try_end_d7} :catchall_42

    throw v1

    nop

    nop

    :pswitch_data_da
    .packed-switch 0xa33
        :pswitch_23
        :pswitch_23
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method subtractDecorRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mIsDimensionLoaded:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenManagerInternal;->loadDimension()V

    :cond_7
    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mMenuContentInset:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mShadowThickness:I

    iget v2, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mOutlineThickness:I

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method switchDockSide(Z)V
    .registers 3

    iget v0, p0, Lcom/android/server/wm/SideScreenManagerInternal;->mDockSide:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setDockSide(IZ)V

    return-void
.end method

.method updateSideScreenMenu()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->reevaluateMenuVisibility(IZ)V

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/SideScreenManagerInternal;->reevaluateMenuVisibility(IZ)V

    return-void
.end method
