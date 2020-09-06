.class final Lcom/android/server/am/MultiDisplayManagerService$H;
.super Landroid/os/Handler;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final DISPLAY_REPARENT_TRANSITION_TIMEOUT:I = 0x2

.field private static final MOVE_TASKS_BACK_AND_WAIT_ACTIVITY_STOP:I = 0x0

.field private static final REPARENT_TO_DISPLAY_AND_START_PENDING_ACTIVITY:I = 0x1

.field private static final REPORT_DISPLAY_COMPAT_MODE_DISABLED:I = 0x5

.field private static final REPORT_DISPLAY_COMPAT_TASK_FOREGROUND:I = 0x4

.field private static final REPORT_DISPLAY_FOCUS_CHANGED:I = 0x3

.field private static final REPORT_FORCE_RESIZED_TASK_FOREGROUND:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_3f4

    goto/16 :goto_3f1

    :pswitch_d
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_12
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v5, v0

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v7, v0

    nop

    :goto_24
    if-ge v4, v7, :cond_42

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_4c

    move-object v8, v0

    :try_start_31
    invoke-interface {v8, v5, v6}, Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;->onForceResizedTaskForground(ILjava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35
    .catchall {:try_start_31 .. :try_end_34} :catchall_4c

    goto :goto_3f

    :catch_35
    move-exception v0

    move-object v9, v0

    :try_start_37
    const-string v9, "MultiDisplayManager"

    const-string/jumbo v10, "onForceResizedTaskForground, RemoteException"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_42
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto/16 :goto_3f1

    :catchall_4c
    move-exception v0

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_4c

    throw v0

    :pswitch_4f
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_54
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v5, v0

    nop

    :goto_5e
    if-ge v4, v5, :cond_7c

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_86

    move-object v6, v0

    :try_start_6b
    invoke-interface {v6}, Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;->onCompatModeDisabled()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_6f
    .catchall {:try_start_6b .. :try_end_6e} :catchall_86

    goto :goto_79

    :catch_6f
    move-exception v0

    move-object v7, v0

    :try_start_71
    const-string v7, "MultiDisplayManager"

    const-string/jumbo v8, "onCompatModeDisabled, RemoteException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_7c
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto/16 :goto_3f1

    :catchall_86
    move-exception v0

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_86

    throw v0

    :pswitch_89
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_8e
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v5, v0

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v7, v0

    nop

    :goto_a0
    if-ge v4, v7, :cond_be

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;
    :try_end_ac
    .catchall {:try_start_8e .. :try_end_ac} :catchall_c8

    move-object v8, v0

    :try_start_ad
    invoke-interface {v8, v5, v6}, Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;->onCompatTaskForeground(ILjava/lang/String;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_c8

    goto :goto_bb

    :catch_b1
    move-exception v0

    move-object v9, v0

    :try_start_b3
    const-string v9, "MultiDisplayManager"

    const-string/jumbo v10, "onCompatTaskForeground, RemoteException"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    :cond_be
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto/16 :goto_3f1

    :catchall_c8
    move-exception v0

    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_b3 .. :try_end_ca} :catchall_c8

    throw v0

    :pswitch_cb
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    monitor-enter v3

    :try_start_d2
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v5, v0

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v6, v0

    nop

    :goto_e1
    if-ge v4, v6, :cond_101

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/IMultiDisplayCallback;
    :try_end_ef
    .catchall {:try_start_d2 .. :try_end_ef} :catchall_10d

    move-object v7, v0

    :try_start_f0
    invoke-interface {v7, v5}, Lcom/samsung/android/multidisplay/IMultiDisplayCallback;->onDisplayFocusChanged(I)V
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_f3} :catch_f4
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_10d

    goto :goto_fe

    :catch_f4
    move-exception v0

    move-object v8, v0

    :try_start_f6
    const-string v8, "MultiDisplayManager"

    const-string/jumbo v9, "displayFocusChanged, RemoteException"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fe
    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    :cond_101
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto/16 :goto_3f1

    :catchall_10d
    move-exception v0

    monitor-exit v3
    :try_end_10f
    .catchall {:try_start_f6 .. :try_end_10f} :catchall_10d

    throw v0

    :pswitch_110
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v4, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_115
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->transitionFinished()V

    const-string v0, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISPLAY_REPARENT_TRANSITION_TIMEOUT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v5}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setWaitingTransitionFinished(Ljava/util/ArrayList;)V

    monitor-exit v4
    :try_end_148
    .catchall {:try_start_115 .. :try_end_148} :catchall_14d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3f1

    :catchall_14d
    move-exception v0

    :try_start_14e
    monitor-exit v4
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_14d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_153
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v5, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_158
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    if-nez v0, :cond_171

    const-string v3, "MultiDisplayManager"

    const-string v4, "PendingActivityLaunch is null. Abort to start pending activity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_16d
    .catchall {:try_start_158 .. :try_end_16d} :catchall_20f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_171
    :try_start_171
    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_18b

    const-string v4, "MultiDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REPARENT_TO_DISPLAY_AND_START_PENDING_ACTIVITY for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18b
    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v4}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_197
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    const-string/jumbo v7, "notifyAppTransitionFinished"

    # invokes: Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->execute(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->access$800(Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;Ljava/lang/String;)V

    goto :goto_197

    :cond_1aa
    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v4}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mDisplayId:I

    iget-object v6, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v6, v6, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/DisplayChooserInfo;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/am/DisplayChooserInfo;->getUid()I

    move-result v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1c9

    iget-object v6, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    :cond_1c9
    sget-boolean v6, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1e4

    const-string v6, "MultiDisplayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start DisplayChooser result for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e4
    iget-object v6, v0, Lcom/android/server/am/DisplayChooserInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_1f9

    iget-object v6, v0, Lcom/android/server/am/DisplayChooserInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_1f9

    iget-object v7, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v7, v7, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/MultiDisplayManagerInternal;->notifyAppMovingDisplay(Landroid/os/IBinder;)V

    :cond_1f9
    iget-object v6, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v6, v6, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6, v4}, Lcom/android/server/am/DisplayChooserInfo;->startResult(Lcom/android/server/am/ActivityManagerService;I)V

    iget-object v6, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v6}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->reset()V

    monitor-exit v5
    :try_end_20a
    .catchall {:try_start_171 .. :try_end_20a} :catchall_20f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3f1

    :catchall_20f
    move-exception v0

    :try_start_210
    monitor-exit v5
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_20f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_215
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/DisplayChooserInfo;

    iget v13, v2, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_226

    const-string v0, "MultiDisplayManager"

    const-string v3, "DisplayChooserInfo is null. Abort to start pending activity"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_226
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_240

    const-string v0, "MultiDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MOVE_TASKS_BACK_AND_WAIT_ACTIVITY_STOP for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_240
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v14, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_245
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {v5}, Lcom/android/server/am/DisplayChooserInfo;->isKeepProcessAlive()Z

    move-result v0

    if-eqz v0, :cond_270

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v5, Lcom/android/server/am/DisplayChooserInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_278

    new-instance v15, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    iget-object v7, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v8, v5, Lcom/android/server/am/DisplayChooserInfo;->mReusedTask:Lcom/android/server/am/TaskRecord;

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/android/server/am/DisplayChooserInfo;->getProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/server/am/DisplayChooserInfo;->getUid()I

    move-result v11

    move-object v6, v15

    move v12, v13

    invoke-direct/range {v6 .. v12}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/TaskRecord;ZLjava/lang/String;II)V

    move-object v6, v15

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_278

    :cond_270
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0, v13}, Lcom/android/server/am/DisplayChooserInfo;->getMovingTaskLocked(Lcom/android/server/am/ActivityManagerService;I)Ljava/util/ArrayList;

    move-result-object v0

    :cond_278
    :goto_278
    iget-object v6, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v6}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->reset()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_385

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_291
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_319

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    iget-object v10, v9, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->mTask:Lcom/android/server/am/TaskRecord;

    sget-boolean v11, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v11, :cond_2d3

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "move task to bottom, task #"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " affinity="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to display #"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " from DisplayChooser."

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d3
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-nez v11, :cond_2da

    goto :goto_291

    :cond_2da
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v16

    if-eqz v16, :cond_2f0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    move v15, v3

    :cond_2f0
    if-eqz v12, :cond_304

    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_304

    if-ne v15, v7, :cond_301

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v7, 0x9

    invoke-virtual {v3, v7, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_301
    invoke-virtual {v12, v4}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_304
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v3, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v11, v3}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(I)Z

    nop

    const/4 v3, 0x1

    const/4 v7, 0x2

    goto/16 :goto_291

    :cond_319
    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v3

    invoke-virtual {v3, v5, v0, v13}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->set(Lcom/android/server/am/DisplayChooserInfo;Ljava/util/ArrayList;I)V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_326
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v8}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v10, :cond_36b

    const-string v10, "MultiDisplayManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ensure visibility for d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36b
    iget-object v10, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v10}, Lcom/android/server/am/MultiDisplayManagerService;->access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v10, v9, v11, v4, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    goto :goto_326

    :cond_37a
    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_385

    const-string v3, "MultiDisplayManager"

    const-string v7, "Wait until activity stopped."

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_385
    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v3

    if-eqz v3, :cond_3db

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3af

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/DisplayChooserInfo;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/server/am/DisplayChooserInfo;->getUid()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_3af

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v4, v3, v13}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    :cond_3af
    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3ca

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start DisplayChooser result for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3ca
    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, v13}, Lcom/android/server/am/DisplayChooserInfo;->startResult(Lcom/android/server/am/ActivityManagerService;I)V

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    invoke-static {v3}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->reset()V

    goto :goto_3e6

    :cond_3db
    const-wide/16 v6, 0xfa0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v6, v7}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService$H;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # invokes: Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V
    invoke-static {v3, v4}, Lcom/android/server/am/MultiDisplayManagerService;->access$700(Lcom/android/server/am/MultiDisplayManagerService;Z)V

    :goto_3e6
    monitor-exit v14
    :try_end_3e7
    .catchall {:try_start_245 .. :try_end_3e7} :catchall_3eb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_3f1

    :catchall_3eb
    move-exception v0

    :try_start_3ec
    monitor-exit v14
    :try_end_3ed
    .catchall {:try_start_3ec .. :try_end_3ed} :catchall_3eb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_3f1
    return-void

    nop

    nop

    :pswitch_data_3f4
    .packed-switch 0x0
        :pswitch_215
        :pswitch_153
        :pswitch_110
        :pswitch_cb
        :pswitch_89
        :pswitch_4f
        :pswitch_d
    .end packed-switch
.end method
