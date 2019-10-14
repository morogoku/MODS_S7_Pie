.class Lcom/android/server/power/PowerManagerService$9;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$9;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    return-void
.end method

.method public onAutoBrightnessAdjutmentApplied(III)V
    .registers 15

    const-string v0, ""

    const-string v1, ""

    const-string v2, ","

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2c

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    aput-object v0, v6, v4

    move-object v4, v6

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$4900()[Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/power/PowerManagerService;->LUBS_KEYS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$4900()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    # invokes: Lcom/android/server/power/PowerManagerService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v6, v7, v4, v8}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v9

    invoke-virtual {v9, v8, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onColorFadeExit(Z)V
    .registers 10

    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[input device light] onColorFadeExit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_47

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$4002(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mColorFadeExit:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;JIII)Z

    :cond_47
    return-void
.end method

.method public onDisplayStateChange(IZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, p0, Lcom/android/server/power/PowerManagerService$9;->mDisplayState:I

    if-ne v1, p1, :cond_d

    if-eqz p2, :cond_52

    :cond_d
    iput p1, p0, Lcom/android/server/power/PowerManagerService$9;->mDisplayState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_35

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setNotiLightScreenTimeoutOverride(J)V
    invoke-static {v3, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;J)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZZ)V
    invoke-static {v3, v1, p2}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;ZZ)V

    :cond_27
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_52

    :cond_35
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;Z)V

    :cond_42
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x2

    if-ne p1, v1, :cond_52

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(ZZ)V
    invoke-static {v1, v2, p2}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;ZZ)V

    :cond_52
    :goto_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public onProximityNegative()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    const-string v1, "PowerManagerService"

    const-string v2, "DisplayPowerCallbacks : onProximityNegative()"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_34

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/power/PowerManagerService;->mLastScreenWakeTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$3102(Lcom/android/server/power/PowerManagerService;J)J

    :cond_34
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eq v1, v3, :cond_5f

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mPendingScreenStateChangeStartedByProximity:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$3202(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v7, "android.server.power:PROXIMITY"

    const/16 v8, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JLjava/lang/String;ILjava/lang/String;I)Z
    invoke-static/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    :cond_5f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;JIII)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v0

    return-void

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7 .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public onProximityPositive()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    const-string v1, "PowerManagerService"

    const-string v2, "DisplayPowerCallbacks : onProximityPositive()"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public onStateChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "PowerManagerService"

    const-string v2, "DisplayPowerCallbacks : onStateChanged()"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public releaseSuspendBlocker()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$9;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public updateDuration([J)V
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastScreenWakeTime:J
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move v2, v4

    :goto_13
    # getter for: Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$4300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_22

    aget-wide v7, p1, v2

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    cmp-long v2, v0, v5

    if-ltz v2, :cond_5f

    nop

    :goto_27
    move v2, v4

    # getter for: Lcom/android/server/power/PowerManagerService;->LD_KEYS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$4300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_41

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)[J

    move-result-object v3

    aget-wide v7, v3, v2

    aget-wide v9, p1, v2

    add-long/2addr v7, v9

    aput-wide v7, v3, v2

    add-int/lit8 v4, v2, 0x1

    goto :goto_27

    :cond_41
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDPSIDuration:[J
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)[J

    move-result-object v2

    const/4 v3, 0x3

    aget-wide v7, v2, v3

    add-long/2addr v7, v0

    aput-wide v7, v2, v3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AFC:Z

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSentAllDisplayOnTimeIntent:Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    long-to-int v3, v0

    # invokes: Lcom/android/server/power/PowerManagerService;->addDisplayOnTime(I)V
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;I)V

    :cond_5f
    return-void
.end method
