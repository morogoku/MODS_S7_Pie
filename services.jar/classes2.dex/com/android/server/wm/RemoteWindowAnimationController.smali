.class Lcom/android/server/wm/RemoteWindowAnimationController;
.super Ljava/lang/Object;
.source "RemoteWindowAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "[RemoteWindowAnimationController] "

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field final mAdapterOwner:Lcom/android/server/wm/WindowState;

.field private mCanceled:Z

.field private mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mLinkedToDeathOfRunner:Z

.field private final mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

.field private mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStartingPosition:Landroid/graphics/Point;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/samsung/android/view/RemoteWindowAnimationAdapter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RemoteWindowAnimationController$0rufPruQSQwXVMf_sZM1L2PSu6c;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RemoteWindowAnimationController$0rufPruQSQwXVMf_sZM1L2PSu6c;-><init>(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mAdapterOwner:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/RemoteWindowAnimationController;)Lcom/samsung/android/view/RemoteWindowAnimationAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/RemoteWindowAnimationController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RemoteWindowAnimationController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RemoteWindowAnimationController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->releaseFinishedCallback()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->invokeAnimationCancelled()V

    return-void
.end method

.method private invokeAnimationCancelled()V
    .registers 4

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_23

    :cond_8
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] invokeAnimationCancelled, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->onAnimationCancelled()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "[RemoteWindowAnimationController] Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RemoteWindowAnimationController;)V
    .registers 2

    const-string/jumbo v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_15
    return-void
.end method

.method private onAnimationFinished()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->unlinkToDeathOfRunner()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->releaseFinishedCallback()V

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_69

    :try_start_1d
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v1, :cond_25

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_40

    :cond_25
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RemoteWindowAnimationController] onAnimationFinished, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$200(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_49} :catch_58
    .catchall {:try_start_1d .. :try_end_49} :catchall_56

    :try_start_49
    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "RemoteWindowAnimationController#finished"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_56
    move-exception v1

    goto :goto_61

    :catch_58
    move-exception v1

    :try_start_59
    const-string v2, "WindowManager"

    const-string v3, "[RemoteWindowAnimationController] Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_56

    :goto_61
    :try_start_61
    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteWindowAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    :cond_c
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_14
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteWindowAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2b

    :cond_8
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] cancelAnimation(): reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mCanceled:Z

    if-eqz v1, :cond_3c

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3c
    const/4 v1, 0x1

    :try_start_3d
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mCanceled:Z

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->invokeAnimationCancelled()V

    return-void

    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method initialize(Landroid/graphics/Point;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mStartingPosition:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method isAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    return v0
.end method

.method isRemoteAnimationAdapterOwner(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mAdapterOwner:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method startAnimation(Z)V
    .registers 6

    new-instance v0, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteWindowAnimationController;Lcom/android/server/wm/WindowState;Z)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float/2addr v3, v2

    float-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteWindowAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v0

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    return-void

    :cond_3a
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->linkToDeathOfRunner()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_45

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_72

    :cond_45
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] startAnimation, onAnimationStart is calling, mWin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isHiddenOnLeashCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    invoke-static {v1}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteWindowAnimationController$FinishedCallback;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->onAnimationStart(Lcom/samsung/android/view/RemoteWindowAnimationTarget;Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_86} :catch_87

    goto :goto_92

    :catch_87
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "[RemoteWindowAnimationController] Failed to start remote animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    :goto_92
    return-void
.end method

.method startVisibilityChangedAnimation(Z)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteWindowAnimationController;->visibilityChangedAnimationNeeded(Z)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mTarget:Lcom/samsung/android/view/RemoteWindowAnimationTarget;
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Lcom/samsung/android/view/RemoteWindowAnimationTarget;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_72

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x44fa0000    # 2000.0f

    iget-object v3, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_2c
    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->linkToDeathOfRunner()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_WINDOW_ANIMATIONS:Z

    if-nez v0, :cond_37

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_5c

    :cond_37
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RemoteWindowAnimationController] startVisibilityChangedAnimation, onVisibilityAnimationStart is calling, mWin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapter:Lcom/samsung/android/view/RemoteWindowAnimationAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/view/RemoteWindowAnimationAdapter;->getRunner()Lcom/samsung/android/view/IRemoteWindowAnimationRunner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/view/IRemoteWindowAnimationRunner;->onVisibilityChangedAnimationStart(Z)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_65} :catch_66

    goto :goto_71

    :catch_66
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "[RemoteWindowAnimationController] Failed to start remote visibility change animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    :goto_71
    return-void

    :cond_72
    :goto_72
    invoke-direct {p0}, Lcom/android/server/wm/RemoteWindowAnimationController;->onAnimationFinished()V

    return-void
.end method

.method visibilityChangedAnimationNeeded(Z)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mIsAnimating:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RemoteWindowAnimationController;->mRemoteWindowAnimationAdapterWrapper:Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->mIsEntrance:Z
    invoke-static {v0}, Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteWindowAnimationController$RemoteWindowAnimationAdapterWrapper;)Z

    move-result v0

    if-eq v0, p1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
