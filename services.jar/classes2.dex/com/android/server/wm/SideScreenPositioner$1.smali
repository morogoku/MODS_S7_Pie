.class Lcom/android/server/wm/SideScreenPositioner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SideScreenPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SideScreenPositioner;->getScreenMovementAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SideScreenPositioner;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SideScreenPositioner;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/SideScreenPositioner$1;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iput-object p2, p0, Lcom/android/server/wm/SideScreenPositioner$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner$1;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner$1;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v1, v1, Lcom/android/server/wm/SideScreenPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreen(Landroid/graphics/Rect;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner$1;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    iget-object v0, v0, Lcom/android/server/wm/SideScreenPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner$1;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # getter for: Lcom/android/server/wm/SideScreenPositioner;->mFrom:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/wm/SideScreenPositioner;->access$200(Lcom/android/server/wm/SideScreenPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/SideScreenPositioner$1;->this$0:Lcom/android/server/wm/SideScreenPositioner;

    # getter for: Lcom/android/server/wm/SideScreenPositioner;->mTo:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/wm/SideScreenPositioner;->access$300(Lcom/android/server/wm/SideScreenPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/SideScreenPositioner$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3a
    return-void

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
