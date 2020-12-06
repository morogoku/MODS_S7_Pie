.class Lcom/android/server/BatteryService$31;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mExtraHealthInfo:Lcom/android/server/BatteryService$ExtraHealthInfo;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4500(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$ExtraHealthInfo;

    move-result-object v0

    # getter for: Lcom/android/server/BatteryService$ExtraHealthInfo;->chargerPogoOnline:Z
    invoke-static {v0}, Lcom/android/server/BatteryService$ExtraHealthInfo;->access$2800(Lcom/android/server/BatteryService$ExtraHealthInfo;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$6100(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1d

    return-void

    :cond_1d
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_28
    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6200(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v7

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    int-to-long v3, v7

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6300(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_76

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$6300(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    sub-long v5, v7, v3

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@[BatteryInfo] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$6300(Lcom/android/server/BatteryService;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mLastSavedBatteryLevel:J
    invoke-static {v7, v3, v4}, Lcom/android/server/BatteryService;->access$6302(Lcom/android/server/BatteryService;J)J

    :cond_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_28 .. :try_end_77} :catchall_b7

    cmp-long v0, v5, v1

    if-gtz v0, :cond_7c

    return-void

    :cond_7c
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4900(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_83
    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5500(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    add-long/2addr v7, v5

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v0, v7, v8}, Lcom/android/server/BatteryService;->access$5402(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5400(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v0, v2, v7, v8}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$5600()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v7, p0, Lcom/android/server/BatteryService$31;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$5400(Lcom/android/server/BatteryService;)J

    move-result-wide v7

    const-wide/16 v9, 0x64

    div-long/2addr v7, v9

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v0, v2, v7, v8}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_b2
    monitor-exit v1

    return-void

    :catchall_b4
    move-exception v0

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_83 .. :try_end_b6} :catchall_b4

    throw v0

    :catchall_b7
    move-exception v1

    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v1
.end method
