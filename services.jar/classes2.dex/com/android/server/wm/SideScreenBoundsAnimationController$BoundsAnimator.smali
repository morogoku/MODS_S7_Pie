.class final Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;
.super Landroid/animation/ValueAnimator;
.source "SideScreenBoundsAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SideScreenBoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundsAnimator"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mFrom:Landroid/graphics/Rect;

.field private final mFrozenTaskHeight:I

.field private final mFrozenTaskWidth:I

.field private mMoveFromFullscreen:Z

.field private mMoveToFullscreen:Z

.field private final mResumeRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFinalResize:Z

.field private final mStackId:I

.field private final mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTaskBounds:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SideScreenBoundsAnimationController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLjava/lang/Runnable;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SideScreenBoundsAnimationController$BoundsAnimator$5jXLkTnwkmluFKupR0bN3KGbTvU;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SideScreenBoundsAnimationController$BoundsAnimator$5jXLkTnwkmluFKupR0bN3KGbTvU;-><init>(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    move-object v0, p3

    check-cast v0, Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mStackId:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean p6, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    iput-boolean p7, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    iput-object p8, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    goto :goto_70

    :cond_60
    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    :goto_70
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;)V
    .registers 3

    const-string v0, "SideScreenBoundsAnimationController"

    const-string/jumbo v1, "pause: timed out waiting for windows drawn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->resume()V

    return-void
.end method


# virtual methods
.method animatingToLargerSize()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public cancel()V
    .registers 4

    const-string v0, "SideScreenBoundsAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$600(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$600(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-super {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingTo(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    const-string v0, "SideScreenBoundsAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd: mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSkipFinalResize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFinishAnimationAfterTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v2}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$000(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppTransitionIsRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;
    invoke-static {v2}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$500(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$500(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$000(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # setter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$002(Lcom/android/server/wm/SideScreenBoundsAnimationController;Z)Z

    return-void

    :cond_6b
    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    if-nez v0, :cond_a3

    const-string v0, "SideScreenBoundsAnimationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimationEnd: mTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " moveToFullscreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_92
    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mStackId:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenStack(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a1} :catch_a2

    goto :goto_a3

    :catch_a2
    move-exception v0

    :cond_a3
    :goto_a3
    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    if-nez v0, :cond_b0

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationEnd(ZLandroid/graphics/Rect;Z)V

    :cond_b0
    invoke-virtual {p0, p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # getter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$200(Lcom/android/server/wm/SideScreenBoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_ca
    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # invokes: Lcom/android/server/wm/SideScreenBoundsAnimationController;->updateBooster()V
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$400(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9

    const-string v0, "SideScreenBoundsAnimationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationStart: mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/SideScreenBoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$002(Lcom/android/server/wm/SideScreenBoundsAnimationController;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    # invokes: Lcom/android/server/wm/SideScreenBoundsAnimationController;->updateBooster()V
    invoke-static {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->access$400(Lcom/android/server/wm/SideScreenBoundsAnimationController;)V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_5b

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_61

    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZ)V

    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result v0

    if-eqz v0, :cond_81

    :try_start_67
    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mStackId:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenStack(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_78} :catch_79

    goto :goto_7a

    :catch_79
    move-exception v0

    :goto_7a
    iget-boolean v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->pause()V

    :cond_81
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    const-string v2, "SideScreenBoundsAnimationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateUpdate: mTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mTo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_bc
    iget-object v2, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowManagerInternal;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iget v3, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeSideScreenStack(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-nez v2, :cond_d3

    invoke-virtual {p0}, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->cancel()V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_d3} :catch_d4

    :cond_d3
    goto :goto_d5

    :catch_d4
    move-exception v2

    :goto_d5
    return-void
.end method

.method public pause()V
    .registers 5

    const-string v0, "SideScreenBoundsAnimationController"

    const-string/jumbo v1, "pause: waiting for windows drawn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/animation/ValueAnimator;->pause()V

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resume()V
    .registers 3

    const-string v0, "SideScreenBoundsAnimationController"

    const-string/jumbo v1, "resume:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/SideScreenBoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/SideScreenBoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SideScreenBoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/animation/ValueAnimator;->resume()V

    return-void
.end method
