.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;,
        Lcom/android/server/wm/TaskPositioner$CtrlType;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplayStableRect:Landroid/graphics/Rect;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mFreeformResizeBottomMargin:I

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mMaxHeight:I

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mMinWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field private mSavedGuideDimBounds:Landroid/graphics/Rect;

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTaskOrientation:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchFocusTransferred:Z

.field private mWin:Lcom/android/server/wm/WindowState;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSavedGuideDimBounds:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizeBottomMargin:I

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayStableRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mTouchFocusTransferred:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/TaskPositioner;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;FF)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskPositioner;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    return v0
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .registers 2

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    :cond_b
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    return-object v0
.end method

.method private endDragLocked()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return-void
.end method

.method private synthetic lambda$startDrag$1(Landroid/graphics/Rect;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method public static synthetic lambda$unregister$0(Lcom/android/server/wm/TaskPositioner;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "TaskPositioner unregister: dismiss guideWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_17
    return-void
.end method

.method private notifyMoveLocked(FF)Z
    .registers 8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_29

    const-string v0, "WindowManager"

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
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_36

    return v1

    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    return v1

    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayStableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    float-to-int v0, p1

    float-to-int v2, p2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_6e
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    return v1
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .registers 1

    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 13

    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v2, v3

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v6, :cond_6b

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateWindowDragBounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    return-void
.end method


# virtual methods
.method getWindowDragBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_f

    const-string v1, "WindowManager"

    const-string v2, "Registering task positioner"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1b

    const-string v1, "WindowManager"

    const-string v2, "Task positioner already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v1, "WindowManager"

    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    new-instance v4, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v8

    invoke-direct {v4, p0, v5, v7, v8}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    new-instance v4, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v4, v6}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v5, "WindowManager"

    iput-object v5, v4, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v7, 0x12a05f200L

    iput-wide v7, v4, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    new-instance v4, Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-direct {v4, v5, v6, v6, v9}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v5, "WindowManager"

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v5, v4, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v5

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v5, 0x7e0

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v7, v4, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->visible:Z

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v4, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v3, v4, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v2, v3, Lcom/android/server/input/InputWindowHandle;->paused:Z

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v4, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_fe

    const-string v4, "WindowManager"

    const-string v5, "Pausing rotation during re-position"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    const/16 v4, 0x30

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    const/16 v4, 0x20

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getSystemUiContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v2, :cond_13f

    move-object v7, v2

    goto :goto_140

    :cond_13f
    move-object v7, v5

    :goto_140
    invoke-direct {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayStableRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method resizeDrag(FF)V
    .registers 30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    iget v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v12, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v7, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, v7, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    const v1, 0x3f99999a    # 1.2f

    if-nez v0, :cond_2c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_35

    :cond_2c
    iget-boolean v0, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_35

    :cond_32
    const v0, 0x3f555555

    :goto_35
    move v14, v0

    sub-int v0, v12, v10

    sub-int v2, v13, v11

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_49

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v5, v0, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_57

    :cond_49
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_57

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int v5, v0, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_57
    :goto_57
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_66

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v5, v2, v9

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_74

    :cond_66
    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_74

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int v5, v2, v9

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_74
    :goto_74
    int-to-float v3, v0

    int-to-float v5, v2

    div-float v6, v3, v5

    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v3, :cond_1d3

    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_84

    cmpg-float v3, v6, v1

    if-ltz v3, :cond_92

    :cond_84
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v3, :cond_1d3

    float-to-double v4, v6

    const-wide v16, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v3, v4, v16

    if-lez v3, :cond_1d3

    :cond_92
    iget-boolean v3, v7, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_123

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v4, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v4, v3

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v4, v5, :cond_cf

    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v1, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move/from16 v18, v3

    int-to-float v3, v4

    const v16, 0x3f99999a    # 1.2f

    mul-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_d1

    :cond_cf
    move/from16 v18, v3

    :goto_d1
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v5, v1

    const v16, 0x3f99999a    # 1.2f

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v19, v1

    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v5, v1, :cond_117

    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move/from16 v20, v3

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v21, v4

    int-to-float v4, v5

    const v16, 0x3f99999a    # 1.2f

    div-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v24, v20

    move/from16 v25, v21

    goto/16 :goto_1ad

    :cond_117
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v1, v19

    move/from16 v24, v20

    move/from16 v25, v21

    goto/16 :goto_1ad

    :cond_123
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v1

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v3, v4, :cond_161

    iget v3, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget v4, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    move/from16 v22, v1

    int-to-float v1, v3

    const v16, 0x3f99999a    # 1.2f

    div-float v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v3

    move v3, v1

    goto :goto_166

    :cond_161
    move/from16 v22, v1

    move v4, v3

    move/from16 v3, v22

    :goto_166
    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v5, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v5, v1

    const v16, 0x3f99999a    # 1.2f

    div-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v23, v1

    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v5, v1, :cond_1a7

    iget v5, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v1, v7, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move/from16 v24, v3

    iget-object v3, v7, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v25, v4

    int-to-float v4, v5

    const v16, 0x3f99999a    # 1.2f

    mul-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1ad

    :cond_1a7
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v1, v23

    :goto_1ad
    sub-int v3, v12, v10

    if-gt v0, v3, :cond_1b8

    sub-int v3, v13, v11

    if-le v2, v3, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    const/4 v3, 0x0

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    const/4 v3, 0x1

    :goto_1b9
    mul-int v4, v24, v25

    move/from16 v26, v0

    mul-int v0, v5, v1

    if-le v4, v0, :cond_1c3

    const/4 v0, 0x1

    goto :goto_1c4

    :cond_1c3
    const/4 v0, 0x0

    :goto_1c4
    if-ne v3, v0, :cond_1cd

    move/from16 v0, v24

    move/from16 v2, v25

    move/from16 v26, v0

    goto :goto_1d5

    :cond_1cd
    move v0, v5

    nop

    move/from16 v26, v0

    move v15, v1

    goto :goto_1d6

    :cond_1d3
    move/from16 v26, v0

    :goto_1d5
    move v15, v2

    :goto_1d6
    move-object v0, v7

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move/from16 v5, v26

    move/from16 v16, v6

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .registers 14

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_41

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preserveOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    :cond_41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    return-void
.end method

.method startDrag(ZZFFLandroid/graphics/Rect;)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iput v2, v1, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    iput v3, v1, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    move/from16 v5, p2

    iput-boolean v5, v1, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v8, 0x8

    invoke-static {v8, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_5d

    iget v10, v4, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gez v10, :cond_2f

    iget v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v10, v9

    iput v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_2f
    iget v10, v4, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-lez v10, :cond_3b

    iget v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v10, v7

    iput v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_3b
    iget v10, v4, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpg-float v10, v3, v10

    if-gez v10, :cond_48

    iget v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_48
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_54

    iget v10, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v8, v10

    iput v8, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    :cond_54
    iget v8, v1, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v8, :cond_5a

    move v8, v9

    goto :goto_5b

    :cond_5a
    move v8, v0

    :goto_5b
    iput-boolean v8, v1, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    :cond_5d
    neg-int v8, v6

    neg-int v10, v6

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lt v8, v10, :cond_6e

    move v8, v9

    goto :goto_6f

    :cond_6e
    move v8, v0

    :goto_6f
    iput-boolean v8, v1, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    iget-boolean v8, v1, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v8, :cond_1ca

    iget-object v8, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_1ca

    const/4 v8, 0x0

    iget-object v10, v1, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    if-eqz v8, :cond_8b

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    goto :goto_93

    :cond_8b
    iget-object v11, v1, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    :goto_93
    const v12, 0x105008d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iput v12, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    const v13, 0x1050187

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v1, Lcom/android/server/wm/TaskPositioner;->mFreeformResizeBottomMargin:I

    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v13, v13, Lcom/android/server/wm/Task;->mMinWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b4

    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v13, v13, Lcom/android/server/wm/Task;->mMinWidth:I

    iput v13, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    :cond_b4
    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v13, v13, Lcom/android/server/wm/Task;->mMinHeight:I

    if-eq v13, v14, :cond_c0

    iget-object v13, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v13, v13, Lcom/android/server/wm/Task;->mMinHeight:I

    iput v13, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    :cond_c0
    iget v13, v1, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v14, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget v13, v1, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget v14, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iget-object v14, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    if-eqz v14, :cond_e4

    invoke-virtual {v14, v13}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    :cond_e4
    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mMaxWidth:I

    if-ltz v7, :cond_fa

    iget-object v7, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mMaxWidth:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v7, v0, :cond_f5

    goto :goto_fa

    :cond_f5
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    goto :goto_fe

    :cond_fa
    :goto_fa
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_fe
    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-ltz v0, :cond_116

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v0, v7, :cond_111

    goto :goto_116

    :cond_111
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto :goto_11a

    :cond_116
    :goto_116
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_11a
    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v7, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v7, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v0

    if-eqz v0, :cond_180

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1f0

    goto :goto_157

    :pswitch_142
    iget-boolean v0, v1, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v0, :cond_149

    nop

    const/4 v0, 0x2

    goto :goto_14a

    :cond_149
    move v0, v9

    :goto_14a
    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    goto :goto_157

    :pswitch_14d
    iput v9, v1, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    goto :goto_157

    :pswitch_153
    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    nop

    :goto_157
    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const v7, 0x3f99999a    # 1.2f

    if-ne v0, v9, :cond_16d

    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    goto :goto_180

    :cond_16d
    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_180

    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    iget v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, v1, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    :cond_180
    :goto_180
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1ca

    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startDrag: mTaskOrientation="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", Min=("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") Max=("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ca
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, v1, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_1e9

    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v7

    :try_start_1d8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    monitor-exit v7
    :try_end_1df
    .catchall {:try_start_1d8 .. :try_end_1df} :catchall_1e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1e9

    :catchall_1e3
    move-exception v0

    :try_start_1e4
    monitor-exit v7
    :try_end_1e5
    .catchall {:try_start_1e4 .. :try_end_1e5} :catchall_1e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1e9
    :goto_1e9
    iget-object v0, v1, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    nop

    :pswitch_data_1f0
    .packed-switch 0x5
        :pswitch_153
        :pswitch_14d
        :pswitch_142
    .end packed-switch
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .registers 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "Unregistering task positioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_17

    const-string v0, "WindowManager"

    const-string v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskPositioner$2nYLiRaGrINcRTe4opwrzYSOcIU;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$2nYLiRaGrINcRTe4opwrzYSOcIU;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_5c

    const-string v0, "WindowManager"

    const-string v1, "Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .registers 11

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    sub-int p1, p3, p5

    goto :goto_b

    :cond_9
    add-int p3, p1, p5

    :goto_b
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_14

    sub-int p2, p4, p6

    goto :goto_16

    :cond_14
    add-int p4, p2, p6

    :goto_16
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_6e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformResizeBottomMargin:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4b

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v2, :cond_4b

    iget p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_56

    :cond_4b
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_56

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le p3, v2, :cond_56

    iget p3, v0, Landroid/graphics/Rect;->right:I

    :cond_56
    :goto_56
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_62

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p4, v2, :cond_62

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_62
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6e

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v2, :cond_6e

    iget p2, v0, Landroid/graphics/Rect;->top:I

    :cond_6e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    return-void
.end method
