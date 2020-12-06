.class Lcom/android/server/BatteryService$32;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryMaxTemp:J
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$6400(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    move-wide v0, v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_50

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$4900(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_18
    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5900(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$6000(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$5902(Lcom/android/server/BatteryService;J)J

    :cond_2f
    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$5900(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$5902(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/max_temp"

    iget-object v5, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5900(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_4b
    monitor-exit v3

    return-void

    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_4d

    throw v2

    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method
