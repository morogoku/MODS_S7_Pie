.class abstract Lcom/android/server/wm/SideScreenPositioner;
.super Ljava/lang/Object;
.source "SideScreenPositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SideScreenPositioner$Factory;,
        Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SideScreenPositioner"

.field private static sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private final mFrom:Landroid/graphics/Rect;

.field private mInputEventReceiver:Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;

.field mIsRightDockSide:Z

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field mOpening:Z

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

.field private mStartDragX:F

.field private mStartDragY:F

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpRect2:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field final mWindowDragBounds:Landroid/graphics/Rect;

.field final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SideScreenPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/SideScreenPositioner;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/SideScreenPositioner;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SideScreenPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SideScreenPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SideScreenPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

    return-object v0
.end method

.method private cancelFlingAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;I)Lcom/android/server/wm/SideScreenPositioner;
    .registers 3
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    sget-object v0, Lcom/android/server/wm/SideScreenPositioner;->sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/wm/SideScreenPositioner$2;

    invoke-direct {v0}, Lcom/android/server/wm/SideScreenPositioner$2;-><init>()V

    sput-object v0, Lcom/android/server/wm/SideScreenPositioner;->sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    sget-object v0, Lcom/android/server/wm/SideScreenPositioner;->sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/SideScreenPositioner$Factory;->createFixedPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenPositioner;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    sget-object v0, Lcom/android/server/wm/SideScreenPositioner;->sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/SideScreenPositioner$Factory;->createDockedPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenPositioner;

    move-result-object v0

    return-object v0

    :cond_1f
    if-nez p1, :cond_28

    sget-object v0, Lcom/android/server/wm/SideScreenPositioner;->sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/SideScreenPositioner$Factory;->createFloatingPositioner(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/SideScreenPositioner;

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

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/SideScreenPositioner;->cancelFlingAnimation()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$SideScreenPositioner$VA_RlqCUdgUF8ycfbmiAO7CLkCA;-><init>(Lcom/android/server/wm/SideScreenPositioner;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/wm/SideScreenPositioner$1;

    invoke-direct {v1, p0, p3}, Lcom/android/server/wm/SideScreenPositioner$1;-><init>(Lcom/android/server/wm/SideScreenPositioner;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_34
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$getScreenMovementAnimator$0(Lcom/android/server/wm/SideScreenPositioner;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/SideScreenPositioner;->getAnimatingRect(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_11
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreen(Landroid/graphics/Rect;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    move-exception v0

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

.method private notifyMoveLocked(FF)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_29

    const-string v0, "SideScreenPositioner"

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

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/SideScreenPositioner;->updateWindowDragBounds(II)V

    const/4 v2, 0x0

    return v2
.end method

.method static setFactory(Lcom/android/server/wm/SideScreenPositioner$Factory;)V
    .registers 1

    sput-object p0, Lcom/android/server/wm/SideScreenPositioner;->sFactory:Lcom/android/server/wm/SideScreenPositioner$Factory;

    return-void
.end method

.method private updateWindowDragBounds(II)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mIsRightDockSide:Z

    if-eqz v0, :cond_22

    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_38

    :cond_22
    int-to-float v0, p2

    iget v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mStartDragY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_38
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_55

    const-string v0, "SideScreenPositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWindowDragBounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method


# virtual methods
.method animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SideScreenPositioner;->getScreenMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method dockSideScreen()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->dockSideScreen()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method hideSideScreen()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->hideSideScreen()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method abstract onActionMove()V
.end method

.method abstract onDragEnded()V
.end method

.method postStartMovingSideScreen()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->isSideScreenVisible()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mOpening:Z

    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSideScreenTasks()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :cond_16
    :goto_16
    return-void
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_f

    const-string v1, "SideScreenPositioner"

    const-string v2, "Registering SideScreen positioner"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1b

    const-string v1, "SideScreenPositioner"

    const-string v2, "SideScreen stack positioner already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v1, "SideScreenPositioner"

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v4, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v7, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v8

    invoke-direct {v4, p0, v5, v7, v8}, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/SideScreenPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mInputEventReceiver:Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;

    new-instance v4, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v4, v6}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v5, "SideScreenPositioner"

    iput-object v5, v4, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v7, 0x12a05f200L

    iput-wide v7, v4, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v4, Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v9, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-direct {v4, v5, v6, v6, v9}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v5, "SideScreenPositioner"

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v5

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v5, 0x7e0

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v7, v4, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v4, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_100

    const-string v4, "SideScreenPositioner"

    const-string v5, "Pausing rotation during re-position"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    iget-object v4, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iput-boolean v2, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z

    return-void
.end method

.method resizeSideScreen(Landroid/graphics/Rect;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreen(Landroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method setSideScreenMode(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

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

.method startDrag(FFLandroid/graphics/Rect;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/server/wm/SideScreenPositioner;->mStartDragX:F

    iput p2, p0, Lcom/android/server/wm/SideScreenPositioner;->mStartDragY:F

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;FF)V
    .registers 7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_31

    const-string v0, "SideScreenPositioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->isRightDockSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mIsRightDockSide:Z

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->getCurrentSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/wm/SideScreenPositioner;->startDrag(FFLandroid/graphics/Rect;)V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    const-string v0, "SideScreenPositioner"

    return-object v0
.end method

.method unregister()V
    .registers 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "SideScreenPositioner"

    const-string v1, "Unregistering SideScreen stack positioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_17

    const-string v0, "SideScreenPositioner"

    const-string v1, "Task positioner SideScreen stack registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mInputEventReceiver:Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mInputEventReceiver:Lcom/android/server/wm/SideScreenPositioner$WindowPositionerEventReceiver;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mClientChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDisplay:Landroid/view/Display;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mDragEnded:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_4a

    const-string v0, "SideScreenPositioner"

    const-string v1, "Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    return-void
.end method
