.class Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorWeaknessLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->binder:Landroid/os/IBinder;

    const/4 p1, 0x0

    :try_start_8
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->binderDied()V

    :goto_10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    const-string v1, "PowerManagerService"

    const-string v2, "ColorWeaknessLock : binderDied"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$13802(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$13702(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService$BinderService;->mColorWeaknessLock:Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->access$13902(Lcom/android/server/power/PowerManagerService$BinderService;Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;)Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v1
.end method
