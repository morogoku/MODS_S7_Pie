.class public Lcom/android/server/wm/FreeformWindowController;
.super Ljava/lang/Object;
.source "FreeformWindowController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "FreeformWindowController"


# instance fields
.field private final mDefaultDexBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeformRoundCorner:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

.field final mFreeformTasksTouchRegion:Landroid/graphics/Region;

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mH:Landroid/os/Handler;

.field private mMinimizeContainerBounds:Landroid/graphics/Rect;

.field private final mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field private mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/FreeformWindowController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformTasksTouchRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformTasksPointerTouchRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformRoundCorner:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mDefaultDexBounds:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/FreeformWindowController;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, p2, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mH:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FreeformWindowController;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method private getLastBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 3

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method clearMinimizeAnimStateLocked(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    if-nez v3, :cond_1b

    goto :goto_4

    :cond_1b
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    goto :goto_4

    :cond_1f
    return-void
.end method

.method dismissGuideWindow(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const-string v0, "FreeformWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissGuideWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method drawFreeformRoundDimLayerInnerLocked(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    :cond_f
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformRoundCorner:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformRoundCorner:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    :cond_26
    const/4 v2, 0x0

    iget-boolean v3, p1, Lcom/android/server/wm/Task;->mSupportScaledDensity:Z

    if-eqz v3, :cond_4d

    if-nez v2, :cond_4d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getScaleDownDensity(II)I

    move-result v4

    if-lez v4, :cond_4d

    iget v5, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    div-float v5, v1, v5

    int-to-float v6, v4

    mul-float v1, v5, v6

    :cond_4d
    :try_start_4d
    sget-boolean v3, Lcom/android/server/wm/FreeformWindowController;->DEBUG:Z

    if-eqz v3, :cond_8c

    const-string v3, "FreeformWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawFreeformRoundedDim: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", dimRadius="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", dimType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    invoke-virtual {v3, p2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p4, v6, :cond_bf

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v6, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_d1

    :cond_bf
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v6, v7, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_d1
    invoke-virtual {v3, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/view/Surface;->release()V
    :try_end_d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_d7} :catch_e4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4d .. :try_end_d7} :catch_d8

    goto :goto_ef

    :catch_d8
    move-exception v3

    const-string v4, "FreeformWindowController"

    const-string v5, "drawFreeformRoundedDim: ResourceException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_f0

    :catch_e4
    move-exception v3

    const-string v4, "FreeformWindowController"

    const-string v5, "drawFreeformRoundedDim: IllegalExeption"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_ef
    nop

    :goto_f0
    return-void
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_21

    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLaunchBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;I)Landroid/graphics/Rect;
    .registers 4

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method loadAnimationLocked(Lcom/android/server/wm/Task;Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_32

    packed-switch p3, :pswitch_data_34

    packed-switch p3, :pswitch_data_44

    goto :goto_32

    :pswitch_e
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz p4, :cond_18

    const v2, 0x10a000e

    goto :goto_1b

    :cond_18
    const v2, 0x10a0010

    :goto_1b
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_32

    :pswitch_20
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz p4, :cond_2a

    const v2, 0x10a0012

    goto :goto_2d

    :cond_2a
    const v2, 0x10a0014

    :goto_2d
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    nop

    :cond_32
    :goto_32
    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x6
        :pswitch_20
        :pswitch_e
        :pswitch_20
        :pswitch_e
        :pswitch_20
        :pswitch_e
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x18
        :pswitch_20
        :pswitch_e
    .end packed-switch
.end method

.method loadMinimizeAnimationLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/FreeformWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    :cond_25
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Point;->set(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_3a

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3a
    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v5, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v11, v4, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    add-float/2addr v9, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    iget v10, v4, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v11

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v11

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3e4ccccd    # 0.2f

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3e4ccccd    # 0.2f

    move-object v12, v11

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    sget-object v13, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v13, Lcom/android/server/wm/FreeformWindowController$1;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct {v13, v0, v14, v3, v15}, Lcom/android/server/wm/FreeformWindowController$1;-><init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/Task;ILandroid/graphics/Rect;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v12
.end method

.method loadResource(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const v3, 0x1050184

    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformRoundCorner:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/android/server/wm/FreeformWindowController;->DEBUG:Z

    if-eqz v3, :cond_4c

    const-string v3, "FreeformWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadResource: mFreeformRoundCorner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformRoundCorner:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", desktopMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-void
.end method

.method loadUnminimizeAnimationLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/FreeformWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    :cond_1f
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_34

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_34
    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v11, v4, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    add-float/2addr v9, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    iget v10, v4, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v11

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v8, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v8, v11

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v13, 0x3e4ccccd    # 0.2f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3e4ccccd    # 0.2f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v12, v11

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    sget-object v13, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v12
.end method

.method public notifyApplyMinimizeFreeformPolicy(Landroid/os/IBinder;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/wm/FreeformWindowController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "FreeformWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyApplyMinimizeFreeformPolicy: caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_59

    move v0, v3

    :cond_4a
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/wm/FreeformWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v3, v0}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyApplyFreeformMinimizePolicy(I)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_50
    .catchall {:try_start_4a .. :try_end_4f} :catchall_59

    goto :goto_54

    :catch_50
    move-exception v3

    :try_start_51
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method releaseResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformRoundCorner:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_d
    return-void
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 7

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_e

    goto :goto_3c

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_31

    iput p2, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    iget-object v3, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_3c
    :goto_3c
    const-string v0, "FreeformWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFreeformAlpha: warning alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/FreeformWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-void
.end method

.method showGuideWindow(Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/Display;)V
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "dismiss before showing"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FreeformWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_12

    move-object v2, v0

    goto :goto_16

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    :goto_16
    invoke-direct {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    const-string v1, "FreeformWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showGuideWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void
.end method

.method public startResizingFreeformTask(IIZI)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-nez v2, :cond_28

    const-string v3, "FreeformWindowController"

    const-string/jumbo v4, "startResizingFreeformTask: failed, targetTask is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_28
    :try_start_28
    iget-object v3, p0, Lcom/android/server/wm/FreeformWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v7

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v3

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
