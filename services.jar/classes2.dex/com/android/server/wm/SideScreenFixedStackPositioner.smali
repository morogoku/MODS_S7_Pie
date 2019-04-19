.class Lcom/android/server/wm/SideScreenFixedStackPositioner;
.super Lcom/android/server/wm/SideScreenStackPositioner;
.source "SideScreenFixedStackPositioner.java"


# static fields
.field private static final DISMISS_THRESHOLD_DIP:I = 0x1e

.field private static final DOCKING_THRESHOLD_DIP:I = 0x4b

.field private static final DRAG_MODE_DISMISS:I = 0x3

.field private static final DRAG_MODE_DOCKING:I = 0x4


# instance fields
.field private mDismissThreshold:I

.field private mDockingThreshold:I

.field private final mFlag:I

.field private final mLastSideTargetBounds:Landroid/graphics/Rect;

.field private final mSideScreenDragBounds:Landroid/graphics/Rect;

.field private final mTaskDragBounds:Landroid/graphics/Rect;

.field private final mType:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mFlag:I

    iput p3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mType:I

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->moveTaskToBack(IZ)V

    return-void
.end method

.method public static synthetic lambda$onDragEnded$1(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V
    .registers 2

    nop

    sget-boolean v0, Lcom/samsung/android/multiwindow/SideScreenCoreState;->SLIDEOVER_DEFAULT:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->setSideScreenMode(I)V

    return-void
.end method


# virtual methods
.method moveTaskToBack(IZ)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->moveTaskToBack(IZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method onActionMove()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->resizeStack(ILandroid/graphics/Rect;)V

    goto :goto_1d

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method onDragEnded()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6a

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_15

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_15
    iget v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDismissThreshold:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissEnd()Z

    move-result v3

    if-eqz v3, :cond_62

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$RkZM37fkei1-Tcv6c18HU-_uuxE;-><init>(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_5a

    :cond_4d
    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_5a
    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->animateMoveStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_69

    :cond_62
    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->animateMoveStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :goto_69
    goto :goto_9a

    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9a

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    goto :goto_88

    :cond_7f
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    :goto_88
    iget v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    if-lt v0, v2, :cond_92

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$DAHigetLGkgg4MCoN_b2PrFVsd8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenFixedStackPositioner$DAHigetLGkgg4MCoN_b2PrFVsd8;-><init>(Lcom/android/server/wm/SideScreenFixedStackPositioner;)V

    goto :goto_93

    :cond_92
    nop

    :goto_93
    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/wm/SideScreenStackPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDismissThreshold:I

    return-void
.end method

.method updateDragBounds(II)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_7b

    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mTaskDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mLastSideTargetBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_7b

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenFixedStackPositioner;->getDragMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7b

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_7b

    :cond_67
    iget-object v0, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mDockingThreshold:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method updateDragMode(FF)I
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/SideScreenStackPositioner;->updateDragMode(FF)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mType:I

    const/4 v2, 0x1

    const/16 v3, 0xa34

    if-eq v1, v3, :cond_12

    iget v1, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mFlag:I

    and-int/2addr v1, v2

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-nez v3, :cond_20

    :cond_1a
    if-ne v0, v2, :cond_22

    iget-boolean v2, p0, Lcom/android/server/wm/SideScreenFixedStackPositioner;->mIsRightDockSide:Z

    if-nez v2, :cond_22

    :cond_20
    const/4 v2, 0x3

    goto :goto_27

    :cond_22
    if-eqz v1, :cond_26

    const/4 v2, 0x4

    goto :goto_27

    :cond_26
    move v2, v0

    :goto_27
    return v2
.end method
