.class public Lcom/android/server/am/SideScreenManagerService;
.super Ljava/lang/Object;
.source "SideScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SideScreenManagerService$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SideScreenManagerService"


# instance fields
.field private mAllowOtherStacksResize:Z

.field private mAnimDuration:I

.field private final mAnimatingRect:Landroid/graphics/Rect;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFrom:Landroid/graphics/Rect;

.field private final mH:Lcom/android/server/am/SideScreenManagerService$H;

.field private mHasSecondaryStacks:Z

.field private mIsLidOpened:Z

.field private mMaximizing:Z

.field private mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

.field private mPostResizeForScale:Ljava/lang/Runnable;

.field private mResizingForAdjustIme:Z

.field private mResizingForScale:Z

.field private final mScaledWindowingMode:Landroid/util/SparseBooleanArray;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

.field private mSideScreenDocked:Z

.field private mSideScreenMode:I

.field private mSideScreenVisible:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpBounds2:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field private final mTranslucentStackIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTranslucentStackIds:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mIsLidOpened:Z

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/SideScreenManagerService$H;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SideScreenManagerService$H;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mH:Lcom/android/server/am/SideScreenManagerService$H;

    new-instance v0, Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    new-instance v1, Lcom/samsung/android/server/corestate/SideScreenCoreStateVolatileObserver;

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/corestate/SideScreenCoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    const-class v2, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/server/am/CoreStateController;->createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/CoreStateController;->registerObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    return-object v0
.end method

.method private cancelFlingAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    return-void
.end method

.method private dismissSideScreenSplitLocked(Lcom/android/server/am/ActivityDisplay;ZZ)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_10
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/16 v9, 0x65

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p2, :cond_69

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_24
    move v12, v2

    if-ltz v12, :cond_b3

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v13, v2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v9, :cond_66

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_37
    move v14, v2

    if-ltz v14, :cond_66

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v7, v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    const/4 v15, 0x0

    move-object v2, v8

    move-object v4, v0

    move-object v5, v7

    move-object/from16 v23, v7

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string/jumbo v22, "dismissSideScreenSplit - NOT_onTop"

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    add-int/lit8 v2, v14, -0x1

    goto :goto_37

    :cond_66
    add-int/lit8 v2, v12, -0x1

    goto :goto_24

    :cond_69
    move v2, v10

    :goto_6a
    move v12, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    if-ge v12, v2, :cond_b3

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v13, v2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v9, :cond_b0

    move v2, v10

    :goto_7d
    move v14, v2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v2

    if-ge v14, v2, :cond_b0

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v7, v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    const/4 v15, 0x1

    move-object v2, v8

    move-object v4, v0

    move-object v5, v7

    move-object/from16 v23, v7

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string/jumbo v22, "dismissSideScreenSplit - onTop"

    move-object/from16 v15, v23

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_ad
    .catchall {:try_start_10 .. :try_end_ad} :catchall_cd

    add-int/lit8 v2, v14, 0x1

    goto :goto_7d

    :cond_b0
    add-int/lit8 v2, v12, 0x1

    goto :goto_6a

    :cond_b3
    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    if-nez p3, :cond_cc

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_cc
    return-void

    :catchall_cd
    move-exception v0

    iget-object v3, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private enterDockedMode()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    iput-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->setSideScreenDockingMode(I)V

    :cond_18
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenDocked(Z)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSnapTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getOtherSideBounds(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v2, :cond_59

    iget v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_59

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_56

    const/16 v2, 0x64

    :cond_56
    invoke-virtual {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->dismissSideScreen(I)V

    :cond_59
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStackAndOtherStacksLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getNextStackInWindowingMode(Lcom/android/server/am/ActivityDisplay;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    if-nez p2, :cond_6

    goto :goto_28

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-ltz v2, :cond_27

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, p2, :cond_17

    const/4 v1, 0x1

    goto :goto_24

    :cond_17
    if-eqz v1, :cond_24

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v4, v5, :cond_24

    return-object v3

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_27
    return-object v0

    :cond_28
    :goto_28
    return-object v0
.end method

.method private getSideScreenBounds(Z)Landroid/graphics/Rect;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getSideScreenStacksMovementAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/SideScreenManagerService;->cancelFlingAnimation()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$WohHdpsNWWrftztYe-jifJpnVnM;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/am/SideScreenManagerService$2;

    invoke-direct {v1, p0, p4, p1, p3}, Lcom/android/server/am/SideScreenManagerService$2;-><init>(Lcom/android/server/am/SideScreenManagerService;Ljava/lang/Runnable;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSideScreenStacksMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/SideScreenManagerService;->cancelFlingAnimation()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$U9EMuj3M0cEHCXqaE6JqcjorLNE;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/am/SideScreenManagerService$1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/am/SideScreenManagerService$1;-><init>(Lcom/android/server/am/SideScreenManagerService;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_3a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$dismissSideScreen$4(Lcom/android/server/am/SideScreenManagerService;I)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_29

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToBack(IZ)Z

    :cond_29
    const/16 v3, 0x64

    if-ne p1, v3, :cond_2f

    move v1, v2

    nop

    :cond_2f
    invoke-direct {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->moveSecondaryStacksToSideScreenPrimaryLocked(Z)V

    goto :goto_51

    :cond_33
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_4e

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToBack(IZ)Z

    :cond_4e
    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->hideSideScreen(Z)V

    :cond_51
    :goto_51
    return-void
.end method

.method public static synthetic lambda$getSideScreenStacksMovementAnimator$6(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SideScreenManagerService;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$getSideScreenStacksMovementAnimator$8(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;ILandroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SideScreenManagerService;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimatingRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStacksLocked(ILandroid/graphics/Rect;Z)Z

    return-void
.end method

.method public static synthetic lambda$hideSideScreen$2(Lcom/android/server/am/SideScreenManagerService;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/SideScreenManagerInternal;->hideSideScreen()V

    invoke-virtual {p0, v0}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(I)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "hideSideScreen"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$hideSideScreen$3(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/SideScreenManagerService;->animateMoveSideScreenStacks(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$notifySideScreenImeVisibilityChanged$14(Lcom/android/server/am/SideScreenManagerService;I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStackBounds(IZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SideScreenManagerService;->notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$notifySideScreenImeVisibilityChanged$15(Lcom/android/server/am/SideScreenManagerService;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForAdjustIme:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    if-eqz v1, :cond_1d

    const-string v1, "SideScreenManagerService"

    const-string/jumbo v2, "notifySideScreenImeVisibilityChanged, mPostImeAdjustVisibilityChanged.run()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$onSideScreenSplitModeDeactivatedLocked$5(Lcom/android/server/am/SideScreenManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->resizePrimaryStacksLocked()V

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenLocked$7(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLockedInSurfaceTransaction(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenStackAndOtherStacksLocked$11(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16

    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->setSnapTarget()V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iget v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/SideScreenManagerService;->getBaseDisplayBounds(ILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_28
    const/4 v3, 0x0

    if-ltz v1, :cond_5f

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_5c

    :cond_42
    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_52

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    :goto_50
    move-object v6, v3

    goto :goto_53

    :cond_52
    goto :goto_50

    :goto_53
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, v12

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    :cond_5f
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenStackWithScale$12(Lcom/android/server/am/SideScreenManagerService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStackWithScale(IZ)Z

    return-void
.end method

.method public static synthetic lambda$resizeSideScreenStackWithScale$13(Lcom/android/server/am/SideScreenManagerService;ZILcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_b

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/SideScreenManagerService;->setScaledWindowingModeLocked(IZ)V

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_87

    :try_start_15
    invoke-virtual {p3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1b
    const/4 v3, 0x0

    if-ltz v1, :cond_66

    invoke-virtual {p3, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, p2, :cond_63

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {v4, p4, v3, v3}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v5, :cond_63

    const-string v5, "SideScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeSideScreenStackWithScale : stackId #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_15 .. :try_end_63} :catchall_7e

    :cond_63
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_66
    :try_start_66
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    :cond_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_87

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7e
    move-exception v1

    :try_start_7f
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_87

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$showSideScreen$0(Lcom/android/server/am/SideScreenManagerService;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(I)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenVisibilityChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$showSideScreen$1(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/SideScreenManagerService;->animateMoveSideScreenStacks(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$swapTaskWindowingModeFromSubWindowHandler$10(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v8, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;-><init>(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$swapTaskWindowingModeFromSubWindowHandler$9(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V
    .registers 7

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/am/SideScreenManagerService;->dismissSideScreenSplitLocked(Lcom/android/server/am/ActivityDisplay;ZZ)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {p4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingMode(II)V

    return-void
.end method

.method private moveSecondaryStacksToSideScreenPrimaryLocked(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    const/16 v4, 0x64

    const/16 v5, 0x65

    if-ge v2, v3, :cond_34

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz p1, :cond_28

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    if-ne v4, v5, :cond_31

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v4, :cond_31

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_34
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    :goto_38
    if-eqz v2, :cond_42

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_38

    :cond_42
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    const-string/jumbo v6, "moveSecondaryStacksToSideScreenPrimaryLocked"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_46

    :cond_59
    invoke-direct {p0, v0, v4}, Lcom/android/server/am/SideScreenManagerService;->moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V

    return-void
.end method

.method private moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_28

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    if-ne v3, p2, :cond_25

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v2, v3, :cond_1b

    const/4 v0, 0x1

    goto :goto_25

    :cond_1b
    if-eqz v0, :cond_25

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_28
    return-void
.end method

.method private resizeSideScreenLockedInSurfaceTransaction(Landroid/graphics/Rect;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_6b

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v3, v3, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v5, :cond_68

    const-string v5, "SideScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeSideScreenLocked : stackId #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_6b
    invoke-direct {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenBounds(Landroid/graphics/Rect;)V
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_77

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_77
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private setSideScreenBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private startActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;ILjava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v2, p1, v3, v4, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1c} :catch_1e

    move-object v1, v3

    :cond_1d
    goto :goto_22

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_22
    if-eqz v1, :cond_79

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_38

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_38
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    if-eqz p2, :cond_55

    new-instance v4, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v4, p2}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    :cond_55
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    if-eqz p2, :cond_79

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    if-eqz v4, :cond_79

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_75

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    nop

    :cond_75
    if-eqz v0, :cond_79

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    :cond_79
    return-void
.end method


# virtual methods
.method adjustScaleDownTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inSideScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_25

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-nez v1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getScaledWindowingModeLocked(I)Z

    move-result v2

    if-nez v2, :cond_1c

    return v0

    :cond_1c
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_25
    :goto_25
    return v0
.end method

.method animateMoveSideScreenStacks(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStacksMovementAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method animateMoveSideScreenStacks(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStacksMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dismissSideScreen(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$B_4ofT2d-cergeNlJ5JVJ4SXEbk;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$B_4ofT2d-cergeNlJ5JVJ4SXEbk;-><init>(Lcom/android/server/am/SideScreenManagerService;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dockSideScreen(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->setSideScreenDockingMode(I)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenDocked(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeOtherStacksInSideScreenLocked(Z)V

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method enableSlideOverDefault(Z)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    const-class v3, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    const-string/jumbo v4, "slideover_default"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getBaseDisplayBounds(ILandroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_29

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_30

    :cond_29
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_30
    return-void
.end method

.method getBottomInsertPosition(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStack;",
            ">;",
            "Lcom/android/server/am/ActivityStack;",
            "I)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return p3

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_25

    :cond_20
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    :goto_25
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method getDockSideLocked()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getDockSide()I

    move-result v0

    return v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;I)Lcom/android/server/am/ActivityStack;
    .registers 14

    const/4 v0, 0x0

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    goto :goto_14

    :cond_e
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_3a

    if-eqz v1, :cond_26

    if-eq v1, v3, :cond_26

    invoke-static {v1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_26
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_39

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    if-eq v4, v5, :cond_3a

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    if-eqz v4, :cond_3a

    :cond_39
    return-object v2

    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4b

    return-object v2

    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v4

    goto :goto_5e

    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v4

    :goto_5e
    if-eqz p2, :cond_65

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    goto :goto_66

    :cond_65
    move v5, v3

    :goto_66
    if-eqz v1, :cond_72

    iget-boolean v6, p0, Lcom/android/server/am/SideScreenManagerService;->mIsLidOpened:Z

    if-eqz v6, :cond_6e

    move v6, v1

    goto :goto_6f

    :cond_6e
    move v6, v3

    :goto_6f
    move v5, v6

    goto/16 :goto_100

    :cond_72
    and-int/lit16 v6, p4, 0x1000

    if-eqz v6, :cond_100

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_85

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    goto :goto_8b

    :cond_85
    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    :goto_8b
    iget-object v7, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_a4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_a4

    return-object v2

    :cond_a4
    if-eqz p2, :cond_a9

    if-eq p2, v6, :cond_a9

    move-object v6, p2

    :cond_a9
    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-eqz v2, :cond_d5

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-eqz v2, :cond_d5

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v2, :cond_c5

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    packed-switch v2, :pswitch_data_140

    goto :goto_c4

    :pswitch_bd
    const/16 v2, 0x64

    goto :goto_c3

    :pswitch_c0
    const/16 v2, 0x65

    nop

    :goto_c3
    move v5, v2

    :goto_c4
    goto :goto_d5

    :cond_c5
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v2, v3, :cond_d2

    const/16 v7, 0x64

    if-eq v2, v7, :cond_d0

    goto :goto_d5

    :cond_d0
    const/4 v5, 0x1

    goto :goto_d5

    :cond_d2
    const/16 v5, 0x64

    nop

    :cond_d5
    :goto_d5
    if-eqz p2, :cond_dc

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    goto :goto_e4

    :cond_dc
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    :goto_e4
    iget-object v7, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, p1, p3, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v7

    if-eqz p3, :cond_fa

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v8

    if-nez v8, :cond_f9

    goto :goto_fa

    :cond_f9
    goto :goto_fb

    :cond_fa
    :goto_fa
    move v0, v3

    :goto_fb
    invoke-virtual {v2, v5, v7, v0}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    :cond_100
    :goto_100
    invoke-static {v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v6

    if-eqz v6, :cond_108

    if-ne v4, v5, :cond_114

    :cond_108
    invoke-static {v4}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v6

    if-nez v6, :cond_13f

    invoke-static {v5}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v6

    if-eqz v6, :cond_13f

    :cond_114
    if-eqz p2, :cond_11b

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    goto :goto_123

    :cond_11b
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    :goto_123
    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v6, p1, p3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v6

    if-eqz p3, :cond_139

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v7

    if-nez v7, :cond_138

    goto :goto_139

    :cond_138
    goto :goto_13a

    :cond_139
    :goto_139
    move v0, v3

    :goto_13a
    invoke-virtual {v2, v5, v6, v0}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    :cond_13f
    return-object v2

    :pswitch_data_140
    .packed-switch 0x64
        :pswitch_c0
        :pswitch_bd
    .end packed-switch
.end method

.method getScaledWindowingModeLocked(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method getSideScreenModeLocked()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    return v0
.end method

.method getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSideScreenStackBounds(IZ)Landroid/graphics/Rect;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSideScreenStackBounds(IZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSideScreenVisibilityLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    return v0
.end method

.method hideSideScreen(Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-eqz v1, :cond_32

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$gYbGAW3XNMVLperJdh0gq-2mqjY;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mH:Lcom/android/server/am/SideScreenManagerService$H;

    new-instance v5, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$ugNff5qdr45s8gzf4sJDkuQcMxI;

    invoke-direct {v5, p0, v3, v2, v1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$ugNff5qdr45s8gzf4sJDkuQcMxI;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/SideScreenManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32

    :cond_28
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    :cond_32
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isLidOpened()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mIsLidOpened:Z

    return v0
.end method

.method public isMaximizing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mMaximizing:Z

    return v0
.end method

.method isNextFocusable(Lcom/android/server/am/ActivityStack;I)Z
    .registers 6

    invoke-static {p2}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->isSideScreenVisible()Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    return v2

    :cond_1b
    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq p2, v1, :cond_2a

    return v2

    :cond_2a
    const/4 v1, 0x1

    return v1
.end method

.method isSideScreenDocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    return v0
.end method

.method isSideScreenDockedMode()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isSideScreenVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    return v0
.end method

.method public makeMultiLaunchActivityOptions([Landroid/content/Intent;Lcom/android/server/am/SafeActivityOptions;)[Lcom/android/server/am/SafeActivityOptions;
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_4e

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, v1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getMultiLaunchSideScreenModes()[I

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v2, 0x0

    return-object v2

    :cond_13
    array-length v2, p1

    array-length v3, v1

    if-ne v2, v3, :cond_45

    array-length v2, v1

    new-array v0, v2, [Lcom/android/server/am/SafeActivityOptions;

    add-int/lit8 v3, v2, -0x1

    aput-object p2, v0, v3

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2, v3}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    :goto_30
    if-ltz v3, :cond_4e

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    new-instance v5, Lcom/android/server/am/SafeActivityOptions;

    invoke-direct {v5, v4}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    :cond_45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "intents are length different than multiLaunchWindowingMode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    return-object v0
.end method

.method public notifyLidStateChanged(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/am/SideScreenManagerService;->mIsLidOpened:Z

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifyLidStateChanged(Z)V

    return-void
.end method

.method notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V
    .registers 8

    const-string v0, "SideScreenManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySideScreenImeVisibilityChanged, windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    if-eqz v0, :cond_32

    new-instance v0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;-><init>(Lcom/android/server/am/SideScreenManagerService;I)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    const-string v0, "SideScreenManagerService"

    const-string v1, "Scale animation is running. Abort to resize stacks for adjusting ime."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    if-nez v1, :cond_45

    return-void

    :cond_45
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HeUUmj_slsRf4mbpxjTwXP8sedU;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HeUUmj_slsRf4mbpxjTwXP8sedU;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForAdjustIme:Z

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_5e

    :cond_5b
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/android/server/am/SideScreenManagerService;->animateMoveSideScreenStacks(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :goto_5e
    return-void
.end method

.method onSideScreenSplitModeActivatedLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->resizePrimaryStacksLocked()V

    return-void
.end method

.method onSideScreenSplitModeDeactivatedLocked()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mPostResizeForScale:Ljava/lang/Runnable;

    goto :goto_12

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->resizePrimaryStacksLocked()V

    :goto_12
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getScaledWindowingModeLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/SideScreenManagerService;->setScaledWindowingModeLocked(IZ)V

    :cond_1d
    return-void
.end method

.method onWindowsDrawn(Lcom/android/server/am/ActivityRecord;)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inSideScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenWindowsDrawn(I)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeSideScreenRecents()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_66

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_66

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v1, :cond_66

    const/4 v1, 0x0

    const/4 v9, 0x0

    move v2, v9

    :goto_33
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4a

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_47

    move-object v1, v3

    goto :goto_4a

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4a
    :goto_4a
    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_66
    return-void
.end method

.method registerEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->registerEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V

    return-void
.end method

.method reparentTaskToSourceStackIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;I)Z
    .registers 13

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/SideScreenManagerService;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eq v7, v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "reparentTaskToSourceStackIfNeeded"

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method resizeOtherStacksInSideScreenLocked(Z)V
    .registers 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    if-eqz v0, :cond_ab

    iget-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mMaximizing:Z

    if-eqz v0, :cond_c

    goto/16 :goto_ab

    :cond_c
    const-string v0, "am.resizeOtherStacksInSideScreenLocked"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_1c
    iput-boolean v0, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    iget-object v5, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    iget v6, v5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v7, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/am/SideScreenManagerService;->getBaseDisplayBounds(ILandroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_32
    const/4 v7, 0x0

    if-ltz v6, :cond_86

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v9

    invoke-static {v9}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v9

    if-eqz v9, :cond_44

    goto :goto_83

    :cond_44
    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_58

    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_58
    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v9, v9, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/SideScreenManagerInternal;->calculateOppositeStackBounds(ILandroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_78

    iget-object v7, v1, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds2:Landroid/graphics/Rect;

    nop

    :cond_78
    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v10, v8

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :goto_83
    add-int/lit8 v6, v6, -0x1

    goto :goto_32

    :cond_86
    if-nez p1, :cond_8f

    iget-object v8, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_8f
    .catchall {:try_start_1c .. :try_end_8f} :catchall_9d

    :cond_8f
    iput-boolean v4, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    iget-object v0, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_9d
    move-exception v0

    iput-boolean v4, v1, Lcom/android/server/am/SideScreenManagerService;->mAllowOtherStacksResize:Z

    iget-object v4, v1, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_ab
    :goto_ab
    return-void
.end method

.method resizePrimaryStacksLocked()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    const/16 v2, 0x64

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_18
    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_26
    if-ltz v5, :cond_42

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v2, :cond_3f

    nop

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isActivityTypeSideScreenRecents()Z

    move-result v7

    if-eqz v7, :cond_3b

    move-object v7, v1

    goto :goto_3c

    :cond_3b
    move-object v7, v0

    :goto_3c
    invoke-virtual {v6, v7, v3, v3}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_4b

    :cond_3f
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    :cond_42
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_4b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v2
.end method

.method resizeSideScreenLocked(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resizeSideScreenStackAndOtherStacksLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method resizeSideScreenStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string v2, "SideScreenManagerService"

    const-string/jumbo v3, "resizeSideScreenStackLocked: sideScreen stack not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SideScreenManagerInternal;->sideScreenStackResizeDisallowed(Lcom/android/server/wm/StackWindowController;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v1

    :cond_27
    const-string v2, "am.resizeSideScreenStack"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_35
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz p3, :cond_51

    if-eqz p4, :cond_51

    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mTmpBounds:Landroid/graphics/Rect;

    move-object v5, v6

    iput v1, v5, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    :cond_51
    invoke-virtual {v0, p2, p3, v5}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_64

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v1

    :catchall_64
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method resizeSideScreenStackWithScale(IZ)Z
    .registers 16

    iget-boolean v0, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForAdjustIme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$oFZWd_5l4u08McNilyJMYYYB99w;-><init>(Lcom/android/server/am/SideScreenManagerService;IZ)V

    iput-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mPostImeAdjustVisibilityChanged:Ljava/lang/Runnable;

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_81

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->inSideScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_81

    if-eqz p2, :cond_2d

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v8, v2, :cond_2d

    goto :goto_81

    :cond_2d
    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    const/4 v2, 0x0

    if-eqz p2, :cond_4a

    if-eqz v10, :cond_3e

    invoke-virtual {v10, v2}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_4a

    :cond_3e
    iget-boolean v3, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v3, :cond_4a

    const-string v1, "SideScreenManagerService"

    const-string v2, "Secondary is removing now. skip scaling up."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_4a
    if-eqz p2, :cond_56

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/SideScreenManagerService;->setScaledWindowingModeLocked(IZ)V

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenStackBounds(IZZ)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_5c

    :cond_56
    iget-boolean v3, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenScaleDownStackBounds(IZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_5c
    move-object v11, v2

    new-instance v12, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;

    move-object v2, v12

    move-object v3, p0

    move v4, p2

    move v5, p1

    move-object v6, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;-><init>(Lcom/android/server/am/SideScreenManagerService;ZILcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2, p1, v11, v9, v12}, Lcom/android/server/wm/SideScreenManagerInternal;->animateScaleStack(ILandroid/graphics/Rect;ZLjava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mResizingForScale:Z

    goto :goto_80

    :cond_7d
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    :goto_80
    return v1

    :cond_81
    :goto_81
    return v9
.end method

.method resizeSideScreenStacksLocked(ILandroid/graphics/Rect;Z)Z
    .registers 12

    const-string v0, "am.resizeSideScreenStacksLocked"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_65

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_65

    :cond_19
    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    move v4, v3

    :goto_21
    :try_start_21
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_3c

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v7

    if-ne v7, p1, :cond_39

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7, p2, v6, v6}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3c
    const/4 v4, 0x1

    if-nez p3, :cond_4d

    iget-object v5, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_59

    :cond_4d
    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return v4

    :catchall_59
    move-exception v3

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_65
    :goto_65
    return v3
.end method

.method setAnimDuration(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/SideScreenManagerService;->mAnimDuration:I

    return-void
.end method

.method public setMaximizing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/SideScreenManagerService;->mMaximizing:Z

    return-void
.end method

.method setScaledWindowingModeLocked(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mScaledWindowingMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->setScaledWindowingMode(IZ)V

    return-void
.end method

.method setSideScreenMenuModeLocked(II)V
    .registers 12

    invoke-static {p1}, Lcom/samsung/android/internal/policy/SideScreenModeUtils;->isSideScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    const/16 v0, 0x64

    if-ne p1, v0, :cond_17

    const-string/jumbo v0, "menu_mode_on_primary"

    :goto_15
    move-object v3, v0

    goto :goto_1b

    :cond_17
    const-string/jumbo v0, "menu_mode_on_secondary"

    goto :goto_15

    :goto_1b
    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    const-class v2, Lcom/samsung/android/multiwindow/SideScreenCoreState;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    :cond_34
    return-void
.end method

.method setSideScreenMode(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(IZ)V

    return-void
.end method

.method setSideScreenMode(IZ)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    if-eq v1, p1, :cond_2c

    iput p1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenMode(I)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_24

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    goto :goto_24

    :cond_1e
    if-nez p1, :cond_27

    invoke-virtual {p0, p2}, Lcom/android/server/am/SideScreenManagerService;->undockSideScreen(Z)V

    goto :goto_27

    :cond_24
    :goto_24
    invoke-direct {p0}, Lcom/android/server/am/SideScreenManagerService;->enterDockedMode()V

    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenModeChanged(I)V

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V
    .registers 7
    .param p2    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p2, :cond_f

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(IZ)V

    :cond_f
    invoke-virtual {p0, p2, v2}, Lcom/android/server/am/SideScreenManagerService;->setSideScreenMode(IZ)V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_35

    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/SideScreenManagerService;->resizeOtherStacksInSideScreenLocked(Z)V
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2c

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/am/SideScreenManagerService;->isSideScreenVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_16
    if-ltz v3, :cond_40

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-ne v5, p1, :cond_1f

    return v4

    :cond_1f
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    if-eq v6, v0, :cond_26

    goto :goto_3d

    :cond_26
    invoke-virtual {v5, p2}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_3d

    iget-object v6, p0, Lcom/android/server/am/SideScreenManagerService;->mTranslucentStackIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    return v1

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_40
    return v4
.end method

.method showSideScreen(Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-nez v1, :cond_67

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->showSideScreen()V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenRecentsStack()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenPrimaryStack()Z

    move-result v2

    xor-int/2addr v2, v1

    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->startSideScreenRecentsActivity(IZ)V

    :cond_38
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    new-instance v2, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$8srrKnI8D3Cmtok-orCInnPzEBA;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$8srrKnI8D3Cmtok-orCInnPzEBA;-><init>(Lcom/android/server/am/SideScreenManagerService;)V

    if-eqz p1, :cond_5d

    invoke-direct {p0, v4}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/SideScreenManagerService;->mH:Lcom/android/server/am/SideScreenManagerService$H;

    new-instance v5, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$M55k4b4FBjut8-1IeubfU8IuOqU;-><init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/SideScreenManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    :cond_5d
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->getSideScreenBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenLocked(Landroid/graphics/Rect;)V

    :cond_67
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showSideScreenRecentsActivity(IZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-nez v2, :cond_16

    const-string v3, "SideScreenManagerService"

    const-string v4, "Default display isn\'t exsited. abort to show SideScreenRecentsActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    const/16 v4, 0x64

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v1, :cond_5a

    iget-boolean v5, v0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-eqz v5, :cond_5a

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_5a

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v7, :cond_5a

    if-eqz v8, :cond_5a

    if-ne v1, v4, :cond_4b

    iget v4, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_4f

    :cond_4b
    iget v4, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_4f
    iget-object v10, v0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v10, v4, v9}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingMode(II)V

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/SideScreenManagerService;->moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V

    return-void

    :cond_5a
    const/4 v5, 0x1

    if-eqz p2, :cond_88

    iget-boolean v7, v0, Lcom/android/server/am/SideScreenManagerService;->mHasSecondaryStacks:Z

    if-nez v7, :cond_88

    if-ne v1, v4, :cond_88

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_88

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v15

    const/16 v8, 0x65

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v9

    invoke-virtual {v2, v8, v9, v5}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string/jumbo v14, "swapWindowingMode"

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    :cond_88
    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/SideScreenManagerService;->startSideScreenRecentsActivity(IZ)V

    return-void
.end method

.method showSideScreenTasks()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    if-nez v1, :cond_46

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenVisible:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->showSideScreen()V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenRecentsStack()Z

    move-result v2

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->hasSideScreenPrimaryStack()Z

    move-result v2

    xor-int/2addr v2, v1

    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SideScreenManagerService;->startSideScreenRecentsActivity(IZ)V

    :cond_38
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->notifySideScreenVisibilityChanged(Z)V

    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method startMovingSideScreen(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SideScreenManagerInternal;->startMovingSideScreen(II)V

    return-void
.end method

.method startMovingTopTask(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/SideScreenManagerInternal;->startMovingTopTask(IIII)V

    return-void
.end method

.method startSideScreenRecentsActivity(IZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v1, "SideScreenManagerService"

    const-string v2, "Default display isn\'t existed. abort to start SideScreenRecentsActivity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_22

    const-string v2, "SideScreenManagerService"

    const-string v3, "CurrentUser isn\'t existed. abort to start SideScreenRecentsActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    const-string/jumbo v3, "startSideScreenRecentsActivity"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_7d

    :cond_50
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.intent.category.SIDE_SCREEN_PRIMARY_RECENTS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10010000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_68

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_6f

    :cond_68
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    :goto_6f
    invoke-virtual {v4, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v4, v9}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "startSideScreenRecentsActivity"

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/SideScreenManagerService;->startActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;ILjava/lang/String;)V

    :goto_7d
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/SideScreenManagerService;->moveTasksBelowSideScreenRecentsToFullscreen(Lcom/android/server/am/ActivityDisplay;I)V

    return-void
.end method

.method swapTaskWindowingModeFromSubWindowHandler(II)V
    .registers 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v9, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_ca

    move/from16 v10, p1

    :try_start_10
    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : not found task."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_d2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_22
    :try_start_22
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->inSideScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : task isn\'t in SideScreen."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_d2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_34
    :try_start_34
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    move v11, v1

    if-ne v11, v8, :cond_47

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : same windowingMode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_d2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_47
    :try_start_47
    iget-object v1, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v12, v1

    if-nez v12, :cond_5e

    const-string v1, "SideScreenManagerService"

    const-string v2, "abort swapTaskWindowingModeFromSubWindowHandler : display is not exist."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_d2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5e
    :try_start_5e
    invoke-virtual {v12, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v13, v1

    if-eqz v13, :cond_6a

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    move-object v14, v1

    if-eqz v14, :cond_c5

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_c5

    const/16 v1, 0x64

    const/4 v6, 0x1

    if-ne v11, v1, :cond_a3

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->inSideScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a3

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a3

    :cond_93
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-direct {v7, v12, v1}, Lcom/android/server/am/SideScreenManagerService;->getNextStackInWindowingMode(Lcom/android/server/am/ActivityDisplay;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/server/am/ActivityDisplay;->getSideScreenRecentsStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v1, v2, :cond_a3

    move v3, v6

    goto :goto_a4

    :cond_a3
    const/4 v3, 0x0

    :goto_a4
    new-instance v16, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$FK4MgWKnHPr8vFqr9LUSMG6tNE4;

    move-object/from16 v1, v16

    move-object v2, v7

    move-object v4, v12

    move v5, v10

    move v15, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$FK4MgWKnHPr8vFqr9LUSMG6tNE4;-><init>(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V

    move-object/from16 v1, v16

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v7, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v4, v4, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    if-ne v8, v15, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v15, 0x0

    :goto_c2
    invoke-virtual {v4, v11, v2, v15, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->animateScaleStack(ILandroid/graphics/Rect;ZLjava/lang/Runnable;)Z

    :cond_c5
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_5e .. :try_end_c6} :catchall_d2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_ca
    move-exception v0

    move/from16 v10, p1

    :goto_cd
    :try_start_cd
    monitor-exit v9
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_d2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d2
    move-exception v0

    goto :goto_cd
.end method

.method undockSideScreen(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenDocked:Z

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityDisplay;->setSideScreenDockingMode(I)V

    iget-object v2, p0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->setSideScreenDocked(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/SideScreenManagerService;->resizeOtherStacksInSideScreenLocked(Z)V

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method unregisterEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService;->mSideScreenChangeNotificationController:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->unregisterEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V

    return-void
.end method
