.class abstract Lcom/android/server/wm/SideScreenStackPositioner;
.super Ljava/lang/Object;
.source "SideScreenStackPositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SideScreenStackPositioner$Factory;,
        Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field static final DRAG_MODE_HORIZONTAL:I = 0x2

.field static final DRAG_MODE_NONE:I = 0x0

.field static final DRAG_MODE_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SideScreenStackPositioner"

.field private static sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDisplay:Landroid/view/Display;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDownDelta:Landroid/graphics/PointF;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field private mDragMode:I

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private final mFrom:Landroid/graphics/Rect;

.field private mInputEventReceiver:Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;

.field final mIsRightDockSide:Z

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

.field final mSideScreenOriginalBounds:Landroid/graphics/Rect;

.field mStack:Lcom/android/server/wm/TaskStack;

.field mStartDragX:F

.field mStartDragY:F

.field mTask:Lcom/android/server/wm/Task;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpRect2:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field final mWindowDragBounds:Landroid/graphics/Rect;

.field final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragEnded:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDownDelta:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->isRightDockSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mIsRightDockSide:Z

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mViewConfig:Landroid/view/ViewConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SideScreenStackPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/SideScreenStackPositioner;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/SideScreenStackPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/SideScreenStackPositioner;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/PointF;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDownDelta:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/view/ViewConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mViewConfig:Landroid/view/ViewConfiguration;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SideScreenStackPositioner;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SideScreenStackPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/SideScreenStackPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    return-object v0
.end method

.method private cancelFlingAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;III)Lcom/android/server/wm/SideScreenStackPositioner;
    .registers 5
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    sget-object v0, Lcom/android/server/wm/SideScreenStackPositioner;->sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/wm/SideScreenStackPositioner$3;

    invoke-direct {v0}, Lcom/android/server/wm/SideScreenStackPositioner$3;-><init>()V

    sput-object v0, Lcom/android/server/wm/SideScreenStackPositioner;->sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    sget-object v0, Lcom/android/server/wm/SideScreenStackPositioner;->sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;

    invoke-interface {v0, p0, p2, p3}, Lcom/android/server/wm/SideScreenStackPositioner$Factory;->createFixedStackPositioner(Lcom/android/server/wm/WindowManagerService;II)Lcom/android/server/wm/SideScreenStackPositioner;

    move-result-object v0

    return-object v0

    :cond_15
    if-nez p1, :cond_1e

    sget-object v0, Lcom/android/server/wm/SideScreenStackPositioner;->sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/SideScreenStackPositioner$Factory;->createSlideOverStackPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenStackPositioner;

    move-result-object v0

    return-object v0

    :cond_1e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_28

    sget-object v0, Lcom/android/server/wm/SideScreenStackPositioner;->sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/SideScreenStackPositioner$Factory;->createDockedStackPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenStackPositioner;

    move-result-object v0

    return-object v0

    :cond_28
    const/4 v0, 0x0

    return-object v0
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

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getScreenMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenStackPositioner;->cancelFlingAnimation()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$OyDoi8nI93oGtij_eBbaAVTq130;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$OyDoi8nI93oGtij_eBbaAVTq130;-><init>(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/wm/SideScreenStackPositioner$2;

    invoke-direct {v1, p0, p3}, Lcom/android/server/wm/SideScreenStackPositioner$2;-><init>(Lcom/android/server/wm/SideScreenStackPositioner;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_34
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getStackMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenStackPositioner;->cancelFlingAnimation()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$SideScreenStackPositioner$4BEZ5a-DauhLDUVrN6_fYvI70zo;-><init>(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/wm/SideScreenStackPositioner$1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/wm/SideScreenStackPositioner$1;-><init>(Lcom/android/server/wm/SideScreenStackPositioner;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_34
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$getScreenMovementAnimator$1(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/SideScreenStackPositioner;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenStackPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$getStackMovementAnimator$0(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/SideScreenStackPositioner;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenStackPositioner;->resizeStack(ILandroid/graphics/Rect;)V

    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyMoveLocked(FF)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_29

    const-string v0, "SideScreenStackPositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMoveLocked: {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenStackPositioner;->updateWindowDragBounds(II)V

    const/4 v2, 0x0

    return v2
.end method

.method static setFactory(Lcom/android/server/wm/SideScreenStackPositioner$Factory;)V
    .registers 1

    sput-object p0, Lcom/android/server/wm/SideScreenStackPositioner;->sFactory:Lcom/android/server/wm/SideScreenStackPositioner$Factory;

    return-void
.end method

.method private updateWindowDragBounds(II)V
    .registers 8

    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SideScreenStackPositioner;->updateDragBounds(II)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_46

    const-string v2, "SideScreenStackPositioner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWindowDragBounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void
.end method


# virtual methods
.method animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SideScreenStackPositioner;->getScreenMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method animateMoveStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SideScreenStackPositioner;->getStackMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method getDragMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragMode:I

    return v0
.end method

.method abstract onActionMove()V
.end method

.method abstract onDragEnded()V
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_f

    const-string v1, "SideScreenStackPositioner"

    const-string v2, "Registering SideScreen stack positioner"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1b

    const-string v1, "SideScreenStackPositioner"

    const-string v2, "SideScreen stack positioner already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v1, "SideScreenStackPositioner"

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v4, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v7, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v8

    invoke-direct {v4, p0, v5, v7, v8}, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/SideScreenStackPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mInputEventReceiver:Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;

    new-instance v4, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v4, v6}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v5, "SideScreenStackPositioner"

    iput-object v5, v4, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v7, 0x12a05f200L

    iput-wide v7, v4, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v4, Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-direct {v4, v5, v6, v6, v9}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v5, "SideScreenStackPositioner"

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v5

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v5, 0x7e0

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v7, v4, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v4, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_100

    const-string v4, "SideScreenStackPositioner"

    const-string v5, "Pausing rotation during re-position"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iput-boolean v2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragEnded:Z

    return-void
.end method

.method resizeSideScreen(Landroid/graphics/Rect;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreen(Landroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method resizeStack(ILandroid/graphics/Rect;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method setSideScreenMode(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSideScreenMode(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return-void
.end method

.method startDrag(FFLandroid/graphics/Rect;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragX:F

    iput p2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragY:F

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/Task;FF)V
    .registers 9

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_31

    const-string v0, "SideScreenStackPositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iput-object p2, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object p3, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mSideScreenOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p5, v0}, Lcom/android/server/wm/SideScreenStackPositioner;->startDrag(FFLandroid/graphics/Rect;)V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    const-string v0, "SideScreenStackPositioner"

    return-object v0
.end method

.method unregister()V
    .registers 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "SideScreenStackPositioner"

    const-string v1, "Unregistering SideScreen stack positioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_17

    const-string v0, "SideScreenStackPositioner"

    const-string v1, "Task positioner SideScreen stack registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mInputEventReceiver:Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mInputEventReceiver:Lcom/android/server/wm/SideScreenStackPositioner$WindowPositionerEventReceiver;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mClientChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDisplay:Landroid/view/Display;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mDragEnded:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_4a

    const-string v0, "SideScreenStackPositioner"

    const-string v1, "Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    return-void
.end method

.method updateDragBounds(II)V
    .registers 3

    return-void
.end method

.method updateDragMode(FF)I
    .registers 5

    iget v0, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/SideScreenStackPositioner;->mStartDragY:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method
