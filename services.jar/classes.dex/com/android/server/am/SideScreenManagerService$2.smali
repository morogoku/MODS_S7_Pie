.class Lcom/android/server/am/SideScreenManagerService$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SideScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SideScreenManagerService;->getSideScreenStacksMovementAnimator(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SideScreenManagerService;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$to:Landroid/graphics/Rect;

.field final synthetic val$windowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/am/SideScreenManagerService;Ljava/lang/Runnable;ILandroid/graphics/Rect;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/SideScreenManagerService$2;->this$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$callback:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$windowingMode:I

    iput-object p4, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$to:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SideScreenManagerService$2;->this$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v0, v0, Lcom/android/server/am/SideScreenManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_11
    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$2;->this$0:Lcom/android/server/am/SideScreenManagerService;

    iget v2, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$windowingMode:I

    iget-object v3, p0, Lcom/android/server/am/SideScreenManagerService$2;->val$to:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/SideScreenManagerService;->resizeSideScreenStacksLocked(ILandroid/graphics/Rect;Z)Z

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$2;->this$0:Lcom/android/server/am/SideScreenManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/am/SideScreenManagerService;->mCurrentAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/android/server/am/SideScreenManagerService;->access$102(Lcom/android/server/am/SideScreenManagerService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$2;->this$0:Lcom/android/server/am/SideScreenManagerService;

    # getter for: Lcom/android/server/am/SideScreenManagerService;->mFrom:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/am/SideScreenManagerService;->access$200(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/am/SideScreenManagerService$2;->this$0:Lcom/android/server/am/SideScreenManagerService;

    # getter for: Lcom/android/server/am/SideScreenManagerService;->mTo:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/am/SideScreenManagerService;->access$000(Lcom/android/server/am/SideScreenManagerService;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
