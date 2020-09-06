.class final Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FTAModeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "PowerManagerService"

    const-string v1, "[api] FTAModeChangeReceiver: onReceive: "

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_12
    const-string v2, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mFTAMode:Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$6102(Lcom/android/server/power/PowerManagerService;Z)Z

    const-string v2, "PowerManagerService"

    const-string v3, "FTA mode ON"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_28
    const-string v2, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mFTAMode:Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$6102(Lcom/android/server/power/PowerManagerService;Z)Z

    const-string v2, "PowerManagerService"

    const-string v3, "FTA mode OFF"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v3, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$2676(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$FTAModeChangeReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v1

    return-void

    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_4b

    throw v2
.end method
