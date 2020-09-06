.class Lcom/android/server/BatteryService$30;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
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

    iput-object p1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4900(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->access$5002(Lcom/android/server/BatteryService;J)J

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SW_ASOC:Z

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v1, v4, v6

    if-gez v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v1, v4, v2, v3}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    const/16 v4, 0x64

    # invokes: Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$5300(Ljava/lang/String;I)V

    goto :goto_48

    :cond_3c
    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    long-to-int v4, v4

    # invokes: Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V
    invoke-static {v1, v4}, Lcom/android/server/BatteryService;->access$5300(Ljava/lang/String;I)V

    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$5500(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v1, v4, v5}, Lcom/android/server/BatteryService;->access$5402(Lcom/android/server/BatteryService;J)J

    # getter for: Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$5600()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v5, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryUsage:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5400(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    div-long/2addr v5, v2

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_67
    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5800(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->access$5702(Lcom/android/server/BatteryService;J)J

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$6000(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->access$5902(Lcom/android/server/BatteryService;J)J

    monitor-exit v0

    return-void

    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_7f

    throw v1
.end method
