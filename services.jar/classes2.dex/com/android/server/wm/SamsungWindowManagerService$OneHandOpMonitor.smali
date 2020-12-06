.class Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneHandOpMonitor"
.end annotation


# instance fields
.field private mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;Lcom/android/server/wm/SamsungWindowManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;-><init>(Lcom/android/server/wm/SamsungWindowManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_50

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    invoke-interface {v2}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const-string v2, "SamsungWindowManager"

    const-string v4, "OneHandOp service has died unexpectedly"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/SamsungWindowManagerService;->changeDisplayScale(FFFZLandroid/view/IInputFilter;)V

    const/4 v0, 0x1

    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_4a

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "any_screen_running"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->restartOneHandOpService()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_49} :catch_50

    :cond_49
    goto :goto_51

    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    :goto_51
    return-void
.end method

.method registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-nez v1, :cond_18

    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1b
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    :cond_18
    goto :goto_1c

    :catchall_19
    move-exception v1

    goto :goto_21

    :catch_1b
    move-exception v1

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    invoke-interface {v1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2c

    if-ne v1, v2, :cond_27

    :try_start_1a
    invoke-interface {p1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_25} :catch_26
    .catchall {:try_start_1a .. :try_end_25} :catchall_2c

    goto :goto_27

    :catch_26
    move-exception v1

    :cond_27
    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
