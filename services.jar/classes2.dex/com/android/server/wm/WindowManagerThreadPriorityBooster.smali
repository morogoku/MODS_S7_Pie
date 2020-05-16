.class Lcom/android/server/wm/WindowManagerThreadPriorityBooster;
.super Lcom/android/server/ThreadPriorityBooster;
.source "WindowManagerThreadPriorityBooster.java"


# instance fields
.field private final mAnimationThreadId:I

.field private mAppTransitionRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundsAnimationRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mSurfaceAnimationThreadId:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, -0x4

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/ThreadPriorityBooster;-><init>(II)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    return-void
.end method

.method private updatePriorityLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mBoundsAnimationRunning:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, -0x4

    goto :goto_d

    :cond_b
    :goto_b
    const/16 v0, -0xa

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoostToPriority(I)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    return-void
.end method


# virtual methods
.method public boost()V
    .registers 3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    if-eq v0, v1, :cond_11

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    if-ne v0, v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->boost()V

    return-void

    :cond_11
    :goto_11
    return-void
.end method

.method public reset()V
    .registers 3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAnimationThreadId:I

    if-eq v0, v1, :cond_11

    iget v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mSurfaceAnimationThreadId:I

    if-ne v0, v1, :cond_d

    goto :goto_11

    :cond_d
    invoke-super {p0}, Lcom/android/server/ThreadPriorityBooster;->reset()V

    return-void

    :cond_11
    :goto_11
    return-void
.end method

.method setAppTransitionRunning(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    if-eq v1, p1, :cond_c

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mAppTransitionRunning:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->updatePriorityLocked()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method setBoundsAnimationRunning(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mBoundsAnimationRunning:Z

    if-eq v1, p1, :cond_c

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->mBoundsAnimationRunning:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->updatePriorityLocked()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
