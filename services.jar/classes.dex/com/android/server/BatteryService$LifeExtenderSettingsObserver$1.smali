.class Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "protect_battery"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v4, v5

    :goto_27
    # setter for: Lcom/android/server/BatteryService;->mLifeExtender:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;Z)Z

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@mLifeExtender Settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    iget-object v4, v4, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLifeExtender:Z
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_9 .. :try_end_61} :catchall_5f

    throw v1
.end method
