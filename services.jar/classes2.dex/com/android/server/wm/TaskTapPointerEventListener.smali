.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskTapPointerEventListener"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsDesktopMode:Z

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mNeedsToRestoreDefaultIcon:Z

.field private mPointerIconType:I

.field private final mPointerTouchExcludeRegion:Landroid/graphics/Region;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private getDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPointerEvent$0(IILcom/android/server/wm/WindowState;)Z
    .registers 5

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_16

    iget v0, p2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_16

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private setDefaultPointerIconType(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2789

    if-eq p1, v0, :cond_d

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_d

    goto :goto_10

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    :goto_10
    return-void
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_9
    return-void
.end method

.method onDisplayReady(Landroid/content/res/Configuration;)V
    .registers 4

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-ne v4, v6, :cond_13

    move v4, v5

    goto :goto_14

    :cond_13
    move v4, v0

    :goto_14
    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1d

    move v6, v5

    goto :goto_1e

    :cond_1d
    move v6, v0

    :goto_1e
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    if-nez v4, :cond_25

    if-eqz v6, :cond_28

    :cond_25
    const/4 v8, 0x1

    iget-object v9, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    :cond_28
    and-int/lit16 v10, v3, 0xff

    if-eqz v10, :cond_15d

    const/4 v7, 0x7

    if-eq v10, v7, :cond_31

    goto/16 :goto_207

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    :try_start_3b
    iget-object v11, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11, v7, v10, v8}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_131

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v13

    if-nez v13, :cond_4c

    goto/16 :goto_131

    :cond_4c
    if-eqz v11, :cond_10b

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10b

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_10b

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/16 v13, 0x8

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/16 v13, 0x3f6

    const/16 v14, 0x3f8

    const/16 v15, 0x3f9

    if-ge v7, v0, :cond_89

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge v10, v0, :cond_7e

    move v0, v15

    goto :goto_87

    :cond_7e
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v0, :cond_86

    move v0, v14

    goto :goto_87

    :cond_86
    move v0, v13

    :goto_87
    move v12, v0

    goto :goto_b0

    :cond_89
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v7, v0, :cond_a2

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge v10, v0, :cond_97

    move v0, v14

    goto :goto_a0

    :cond_97
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v0, :cond_9f

    move v0, v15

    goto :goto_a0

    :cond_9f
    move v0, v13

    :goto_a0
    move v12, v0

    goto :goto_b0

    :cond_a2
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt v10, v0, :cond_ae

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le v10, v0, :cond_b0

    :cond_ae
    const/16 v12, 0x3f7

    :cond_b0
    :goto_b0
    nop

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    if-nez v0, :cond_10b

    if-eqz v6, :cond_d4

    if-ne v12, v13, :cond_c3

    const/16 v0, 0x4e26

    :goto_c1
    move v12, v0

    goto :goto_d4

    :cond_c3
    const/16 v0, 0x3f7

    if-ne v12, v0, :cond_ca

    const/16 v0, 0x4e27

    goto :goto_c1

    :cond_ca
    if-ne v12, v15, :cond_cf

    const/16 v0, 0x4e28

    goto :goto_c1

    :cond_cf
    if-ne v12, v14, :cond_d4

    const/16 v0, 0x4e29

    goto :goto_c1

    :cond_d4
    :goto_d4
    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_df

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    goto :goto_e0

    :cond_df
    const/4 v13, 0x0

    :goto_e0
    if-eqz v13, :cond_10b

    iget-object v14, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v15, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;

    invoke-direct {v15, v7, v10}, Lcom/android/server/wm/-$$Lambda$TaskTapPointerEventListener$OqFyyMk74SWlv14kJJDgN9wL8Ag;-><init>(II)V

    invoke-virtual {v14, v15, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v14

    if-nez v14, :cond_109

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Region;->contains(II)Z

    move-result v15

    if-nez v15, :cond_109

    iget v15, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x8b2

    if-eq v15, v5, :cond_109

    iget v5, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v15, 0x96b

    if-eq v5, v15, :cond_109

    iget-object v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_10b

    :cond_109
    const/16 v12, 0x3e8

    :cond_10b
    iget v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v0, v12, :cond_12f

    iput v12, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    iget v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_126

    iget-object v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x37

    iget-object v13, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v5, v7, v10, v13}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_12f

    :cond_126
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_12f
    :goto_12f
    goto/16 :goto_207

    :cond_131
    :goto_131
    iget-boolean v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    if-nez v5, :cond_13a

    iget v5, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v13, 0x1

    if-eq v5, v13, :cond_14c

    :cond_13a
    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    if-eqz v6, :cond_142

    const/16 v0, 0x4e21

    :goto_140
    move v12, v0

    goto :goto_145

    :cond_142
    const/16 v0, 0x3e8

    goto :goto_140

    :goto_145
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_14c
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_14f} :catch_151

    goto/16 :goto_207

    :catch_151
    move-exception v0

    const-string v5, "TaskTapPointerEventListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_207

    :cond_15d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v10, v0

    monitor-enter p0

    :try_start_168
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v11, :cond_1ab

    const-string v11, "TaskTapPointerEventListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onPointerEvent:  ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") found display (event d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") (Listener d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ab
    iget-object v11, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v11}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getDexModeLocked()I

    move-result v11

    if-ne v11, v7, :cond_1f6

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->isDefaultOrDexDisplay(I)Z

    move-result v7

    if-eqz v7, :cond_1f6

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v7, :cond_1e0

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "TaskTapPointerEventListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "send UPDATE_DISPLAY_ORDER to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e0
    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x2730

    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v12, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v11, v5, v10, v12}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_1f6
    invoke-virtual {v9, v5, v10}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-nez v7, :cond_205

    iget-object v7, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v11, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v11, v5, v10, v8}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;IIZ)V

    :cond_205
    monitor-exit p0

    nop

    :goto_207
    return-void

    :catchall_208
    move-exception v0

    monitor-exit p0
    :try_end_20a
    .catchall {:try_start_168 .. :try_end_20a} :catchall_208

    throw v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    if-ne p2, v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_9
    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
