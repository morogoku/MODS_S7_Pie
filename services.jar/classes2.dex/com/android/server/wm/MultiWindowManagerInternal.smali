.class public Lcom/android/server/wm/MultiWindowManagerInternal;
.super Ljava/lang/Object;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowManagerInternal$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerInternal"


# instance fields
.field private final mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

.field private final mFreeformController:Lcom/android/server/wm/FreeformWindowController;

.field final mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

.field mInputMethodClient:Lcom/android/server/wm/WindowState;

.field private final mMultiWindowAnimationController:Lcom/android/server/wm/MultiWindowAnimationController;

.field final mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

.field mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

.field private final mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

.field final mTmpRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mInputMethodClient:Lcom/android/server/wm/WindowState;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRegion:Landroid/graphics/Region;

    new-instance v1, Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiWindowManagerInternal$H;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-direct {v1}, Lcom/android/server/policy/MultiPhoneWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/FreeformWindowController;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/FreeformWindowController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;

    new-instance v1, Lcom/android/server/wm/EnsureDockedViewInternal;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/EnsureDockedViewInternal;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

    new-instance v1, Lcom/android/server/wm/SnapWindowInternal;

    invoke-direct {v1, p1}, Lcom/android/server/wm/SnapWindowInternal;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    new-instance v0, Lcom/android/server/wm/MultiWindowAnimationController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiWindowAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowAnimationController:Lcom/android/server/wm/MultiWindowAnimationController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformWindowController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;

    return-object v0
.end method

.method public static synthetic lambda$addTouchExcludeRegionForAboveWindowsLocked$0(Lcom/android/server/wm/MultiWindowManagerInternal;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 6

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f

    goto :goto_2f

    :cond_f
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_30

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mTmpRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void

    :sswitch_2e
    return-void

    :cond_2f
    :goto_2f
    return-void

    :sswitch_data_30
    .sparse-switch
        0x7f2 -> :sswitch_2e
        0x8b1 -> :sswitch_2e
        0x96a -> :sswitch_2e
        0xa28 -> :sswitch_2e
        0xa29 -> :sswitch_2e
        0xa33 -> :sswitch_2e
        0xa34 -> :sswitch_2e
    .end sparse-switch
.end method


# virtual methods
.method addTouchExcludeRegionForAboveWindowsLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Region;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowToken;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/wm/-$$Lambda$MultiWindowManagerInternal$N2nhv9BY6HA7t23F747pCFNtHVk;-><init>(Lcom/android/server/wm/MultiWindowManagerInternal;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method adjustBoundsAfterDisplaySizeChanged(IIIILandroid/graphics/Rect;)V
    .registers 9

    const/high16 v0, 0x3f000000    # 0.5f

    if-lez p1, :cond_18

    iget v1, p5, Landroid/graphics/Rect;->left:I

    mul-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p5, Landroid/graphics/Rect;->left:I

    iget v1, p5, Landroid/graphics/Rect;->right:I

    mul-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p5, Landroid/graphics/Rect;->right:I

    :cond_18
    if-lez p3, :cond_2e

    iget v1, p5, Landroid/graphics/Rect;->top:I

    mul-int/2addr v1, p4

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p5, Landroid/graphics/Rect;->top:I

    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v1, p4

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_2e
    return-void
.end method

.method public forceHideFloatingMultiWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v3, :cond_3b

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_3b

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_34

    const-string v3, "MultiWindowManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceHideFloatingMultiWindowLw: taskSnapShot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotCandidate(Lcom/android/server/wm/Task;)Z

    :cond_3b
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    return-void
.end method

.method public getEnsureDockedViewInternal()Lcom/android/server/wm/EnsureDockedViewInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

    return-object v0
.end method

.method public getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;

    return-object v0
.end method

.method public getImeTargetFreeformTaskId(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_3b

    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    return v0

    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getLaunchBoundsForMetaKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Landroid/graphics/Rect;
    .registers 4

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMultiWindowAnimationController()Lcom/android/server/wm/MultiWindowAnimationController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowAnimationController:Lcom/android/server/wm/MultiWindowAnimationController;

    return-object v0
.end method

.method public getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    return-object v0
.end method

.method public getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V
    .registers 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    move v10, v4

    const/4 v4, 0x1

    if-ge v3, v10, :cond_2c

    const/4 v5, 0x2

    move/from16 v18, v5

    goto :goto_2e

    :cond_2c
    move/from16 v18, v4

    :goto_2e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v12, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    move v9, v5

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget-object v15, v5, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v5, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move v13, v3

    move v14, v10

    move-object/from16 v16, p2

    invoke-interface/range {v11 .. v16}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    new-instance v11, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v5, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-ne v9, v4, :cond_5a

    :goto_58
    move v13, v4

    goto :goto_5c

    :cond_5a
    const/4 v4, 0x0

    goto :goto_58

    :goto_5c
    move-object v4, v11

    move v6, v3

    move v7, v10

    move v14, v9

    move v9, v13

    move v13, v10

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    move-object v4, v11

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_9a

    goto :goto_7f

    :pswitch_6d
    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    move-object v5, v7

    goto :goto_7f

    :pswitch_73
    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    move-object v5, v7

    goto :goto_7f

    :pswitch_79
    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    move-object v5, v7

    nop

    :goto_7f
    iget v7, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move/from16 v17, v7

    move-object/from16 v19, p2

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v8

    invoke-static/range {v17 .. v22}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_93

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_79
        :pswitch_73
        :pswitch_6d
    .end packed-switch
.end method

.method initPolicy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowPolicy:Lcom/android/server/policy/MultiWindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p0, v1}, Lcom/android/server/policy/MultiWindowManagerPolicy;->init(Lcom/android/server/policy/MultiWindowManagerPolicy$MultiWindowManagerInternalFuncs;Lcom/android/server/policy/WindowManagerPolicy;)V

    return-void
.end method

.method public isExpandedDockedStackLocked()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v3

    if-nez v2, :cond_19

    if-eqz v3, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    return v4
.end method

.method public isForceHideFloatingMultiWindow()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mRequestFreeformForceHiding:Z

    if-eqz v2, :cond_12

    return v1

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2e

    return v1

    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/SnapWindowInternal;->getSnapGuideWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_37

    return v1

    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method public isMinimizedDock()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSnapWindowRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    iget-boolean v0, v0, Lcom/android/server/wm/SnapWindowInternal;->mSnapWindowRunning:Z

    return v0
.end method

.method onConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->loadResource(I)V

    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mEnsureDockedViewInternal:Lcom/android/server/wm/EnsureDockedViewInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/EnsureDockedViewInternal;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method public resizeFreeformTask(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeFreeformTask(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

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

.method public resizeFreeformTask(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    if-eqz p1, :cond_10

    :try_start_7
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_11

    :catchall_c
    move-exception v0

    goto :goto_29

    :catch_e
    move-exception v0

    goto :goto_24

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_e
    .catchall {:try_start_7 .. :try_end_23} :catchall_c

    goto :goto_2f

    :goto_24
    nop

    :try_start_25
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_c

    goto :goto_2f

    :goto_29
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void
.end method

.method setCurrentInputMethodClientLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mInputMethodClient:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_21

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mInputMethodClient:Lcom/android/server/wm/WindowState;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "MultiWindowManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentInputMethodClientLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowManagerInternal;->mFreeformController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V

    return-void
.end method
