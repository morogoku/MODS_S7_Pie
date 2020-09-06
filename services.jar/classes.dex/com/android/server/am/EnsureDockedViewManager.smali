.class public Lcom/android/server/am/EnsureDockedViewManager;
.super Ljava/lang/Object;
.source "EnsureDockedViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EnsureDockedViewManager"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/EnsureDockedViewManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-void
.end method


# virtual methods
.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/EnsureDockedViewManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/EnsureDockedViewManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string v2, "EnsureDockedViewManager"

    const-string/jumbo v3, "ensureDockedResize: docked stack not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/am/EnsureDockedViewManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowManagerService;->getSnapWindowManager()Lcom/android/server/am/SnapWindowManager;

    move-result-object v2

    iget-boolean v3, v2, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    if-eqz v3, :cond_38

    const-string v3, "EnsureDockedViewManager"

    const-string/jumbo v4, "ensureDockedResize: snap window running"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_38
    :try_start_38
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 p1, 0x0

    :cond_3f
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v2, :cond_62

    const-string v2, "EnsureDockedViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ensureDockedResize. adjustForIme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const-string v2, "am.resizeOnlyDockedStack"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/EnsureDockedViewManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_6e
    .catchall {:try_start_38 .. :try_end_6e} :catchall_96

    :try_start_6e
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_8c

    :try_start_7e
    iget-object v2, p0, Lcom/android/server/am/EnsureDockedViewManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_8c
    move-exception v2

    :try_start_8d
    iget-object v5, p0, Lcom/android/server/am/EnsureDockedViewManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/EnsureDockedViewManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method
