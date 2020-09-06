.class Lcom/android/server/BatteryService$34;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$4900(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/fg_asoc"

    # invokes: Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$6600(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_20

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASOC is not supported."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_20
    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->access$5002(Lcom/android/server/BatteryService;J)J

    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x1

    if-gez v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # -= operator for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->access$5022(Lcom/android/server/BatteryService;J)J

    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    goto :goto_66

    :cond_4a
    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-lez v3, :cond_66

    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # += operator for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->access$5014(Lcom/android/server/BatteryService;J)J

    iget-object v3, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$5000(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/BatteryService;->access$5200(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_66
    :goto_66
    monitor-exit v0

    return-void

    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_68

    throw v1
.end method
