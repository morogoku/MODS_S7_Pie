.class Lcom/android/server/BatteryService$36;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4900(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$5500(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    move-wide v3, v1

    iget-object v5, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLifeExtender:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v5

    const-wide/32 v6, 0xf4240

    if-eqz v5, :cond_28

    cmp-long v5, v3, v6

    if-gez v5, :cond_36

    add-long/2addr v3, v6

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!@ + 10000 cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_28
    cmp-long v5, v3, v6

    if-ltz v5, :cond_36

    sub-long/2addr v3, v6

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!@ - 10000 cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    cmp-long v5, v1, v3

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v3, v4}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$5600()Z

    move-result v5

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/android/server/BatteryService$36;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    const-wide/16 v7, 0x64

    div-long v7, v3, v7

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v1
.end method
