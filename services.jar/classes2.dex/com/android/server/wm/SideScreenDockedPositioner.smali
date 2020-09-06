.class Lcom/android/server/wm/SideScreenDockedPositioner;
.super Lcom/android/server/wm/SideScreenPositioner;
.source "SideScreenDockedPositioner.java"


# instance fields
.field private mLastResizeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/SideScreenPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$onDragEnded$0(Lcom/android/server/wm/SideScreenDockedPositioner;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenDockedPositioner;->hideSideScreen()V

    return-void
.end method


# virtual methods
.method onActionMove()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SideScreenDockedPositioner;->resizeSideScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_16
    return-void
.end method

.method onDragEnded()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mSideScreenInternal:Lcom/android/server/wm/SideScreenManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenManagerInternal;->getSnapAlgorithm()Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mIsRightDockSide:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_13

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->getSideScreenBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/SideScreenDockedPositioner;->animateMoveScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    goto :goto_4c

    :cond_31
    invoke-virtual {v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->isDismissTarget()Z

    move-result v1

    if-eqz v1, :cond_40

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SideScreenDockedPositioner$LkzDPHaGhEPTnUE_4xbG3Iw6ZWA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenDockedPositioner$LkzDPHaGhEPTnUE_4xbG3Iw6ZWA;-><init>(Lcom/android/server/wm/SideScreenDockedPositioner;)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_4c

    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/SideScreenDockedPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_4c
    return-void

    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
