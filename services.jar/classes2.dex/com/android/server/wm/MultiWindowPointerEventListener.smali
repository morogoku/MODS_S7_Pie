.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowGesture"

.field private static final TASK_ID_UNDEFINED:I = -0x1

.field private static final TOAST_UNRESIZEABLE_TASK:I = 0x1


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private mDefaultMinimalSizeOfResizeableTask:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mInitRect:Landroid/graphics/Rect;

.field private mIsMoved:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

.field private mNotResizeableRect:Landroid/graphics/Rect;

.field private mNotSupport:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskId:I

.field private final mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

.field private mTaskOrientation:I

.field private mTaskResizable:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method private adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V
    .registers 6

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const v1, 0x3f99999a    # 1.2f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_26

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_26
    goto :goto_59

    :cond_27
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_59

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_59

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_53

    const/16 v2, 0x9

    if-eq p2, v2, :cond_4d

    goto :goto_59

    :cond_4d
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_59

    :cond_53
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    nop

    :cond_59
    :goto_59
    return-void
.end method

.method private findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    const-string v1, "MultiWindowGesture"

    const-string v3, "findTargetTaskBounds: the keyguard is currently locked."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/MultiWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "MultiWindowGesture"

    const-string v3, "findTargetTaskBounds: the quick panel is expanded."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8b2

    if-ne v3, v4, :cond_4d

    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: the edge panel is expanded."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_4d
    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_5d

    :try_start_51
    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: The screensaver is running."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_178

    iget-object v3, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_178

    const-string v3, "MultiWindowGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findTargetTaskBounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_92

    move v3, v5

    goto :goto_93

    :cond_92
    move v3, v2

    :goto_93
    if-eqz v3, :cond_9a

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_5d .. :try_end_96} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_9a
    :try_start_9a
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    if-ne v6, v5, :cond_a8

    goto :goto_b1

    :cond_a8
    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: failed, task is not dock or full"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_178

    :cond_b1
    :goto_b1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v6

    if-eqz v6, :cond_da

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v8

    if-eqz v8, :cond_da

    const-string v4, "MultiWindowGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findTargetTaskBounds: failed, task is relaunching, t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_9a .. :try_end_d6} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_da
    :try_start_da
    invoke-virtual {v1, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    if-ne v8, v7, :cond_e5

    move v7, v5

    goto :goto_e6

    :cond_e5
    move v7, v2

    :goto_e6
    if-eqz v7, :cond_f6

    iget-object v8, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v8

    if-eqz v8, :cond_f6

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_f6

    move v8, v5

    goto :goto_f7

    :cond_f6
    move v8, v2

    :goto_f7
    if-eqz v8, :cond_116

    const-string v4, "MultiWindowGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findTargetTaskBounds: failed, docked task is adjusted by ime or Recents is visible, t"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_112
    .catchall {:try_start_da .. :try_end_112} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_116
    :try_start_116
    iget v9, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v10, v10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p3, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v9, v2, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v9, v1, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-direct {p0, v2, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->updateMinimalSize(II)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v2

    if-eqz v2, :cond_173

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v2

    const/4 v9, 0x7

    if-ne v2, v9, :cond_168

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_164

    goto :goto_165

    :cond_164
    move v4, v5

    :goto_165
    iput v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_173

    :cond_168
    const/4 v9, 0x6

    if-ne v2, v9, :cond_16e

    iput v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_173

    :cond_16e
    const/4 v9, 0x5

    if-ne v2, v9, :cond_173

    iput v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    :cond_173
    :goto_173
    monitor-exit v0
    :try_end_174
    .catchall {:try_start_116 .. :try_end_174} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_178
    :goto_178
    :try_start_178
    monitor-exit v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_17d
    move-exception v1

    :try_start_17e
    monitor-exit v0
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_17d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reset()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    return-void
.end method

.method private showToast(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_26
    return-void
.end method

.method private updateMinimalSize(II)V
    .registers 4

    if-lez p1, :cond_5

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    goto :goto_9

    :cond_5
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    :goto_9
    if-lez p2, :cond_e

    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    goto :goto_12

    :cond_e
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    :goto_12
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onConfigurationChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "MultiWindowGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged, mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_37
    return-void
.end method

.method onDisplayReady()V
    .registers 4

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 14

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SBIKE_MODE_PRESENT:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->IsSBikeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "MultiWindowGesture"

    const-string v1, "freeform gesture is blocked, SBike Mode is running."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-nez v3, :cond_35

    if-nez v0, :cond_34

    const-string v3, "MultiWindowGesture"

    const-string v4, "mMultiWindowEdgeDetector is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void

    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/MultiWindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_58

    sget-boolean v3, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v3, :cond_57

    if-nez v0, :cond_57

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "MultiWindowGesture"

    const-string v4, "freeform gesture is blocked, lock task mode is running."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void

    :cond_58
    const/4 v3, 0x6

    const/4 v4, -0x1

    const v5, 0xc369

    const/4 v6, 0x0

    if-eq v0, v3, :cond_1bb

    packed-switch v0, :pswitch_data_200

    goto/16 :goto_1fe

    :pswitch_65
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto/16 :goto_1fe

    :pswitch_6a
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_1fe

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v3

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v7, :cond_95

    if-eqz v3, :cond_95

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v7

    if-nez v7, :cond_95

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    const-string v4, "MultiWindowGesture"

    const-string/jumbo v5, "onPointerEvent: not effective angle, failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1fe

    :cond_95
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_d6

    if-eqz v3, :cond_1fe

    const-string v6, "MultiWindowGesture"

    const-string/jumbo v7, "onPointerEvent: failed, task is not resizable"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v6, :cond_1fe

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v6

    if-eqz v6, :cond_cd

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_cd
    invoke-direct {p0, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast(I)V

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_1fe

    :cond_d6
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_e9

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "persona"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_e9
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_12e

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v7

    if-eqz v7, :cond_12e

    const-string v6, "MultiWindowGesture"

    const-string/jumbo v7, "onPointerEvent: failed, KnoxKeyguard is not resizable"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v6, :cond_1fe

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v6}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v6

    if-eqz v6, :cond_125

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_125
    invoke-direct {p0, v9}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast(I)V

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_1fe

    :cond_12e
    if-eqz v3, :cond_177

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlgas()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v8, v7, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget v11, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    invoke-static {v8, v7, v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v8

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    if-eqz v10, :cond_14e

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v7}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V

    :cond_14e
    if-eqz v8, :cond_156

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v10, v9}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    goto :goto_15b

    :cond_156
    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v10, v6}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :goto_15b
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v10, :cond_176

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v10}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v10

    if-eqz v10, :cond_172

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v11, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_172
    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    :cond_176
    goto :goto_17e

    :cond_177
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_17e
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    goto/16 :goto_1fe

    :pswitch_187
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_1a2

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    :cond_1a2
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1ba

    :cond_1b7
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    :goto_1ba
    goto :goto_1fe

    :cond_1bb
    :pswitch_1bb
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_1fa

    iget-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    if-nez v3, :cond_1fa

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v3

    if-eqz v3, :cond_1fa

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v3

    if-eqz v3, :cond_1e2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v7, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v4, v7}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1e2
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v3, v3, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v4, 0x65

    iget v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_1fa
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    nop

    :cond_1fe
    :goto_1fe
    return-void

    nop

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_187
        :pswitch_1bb
        :pswitch_6a
        :pswitch_65
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindowPointerEventListener{display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
