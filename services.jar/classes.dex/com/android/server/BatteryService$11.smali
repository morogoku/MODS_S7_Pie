.class Lcom/android/server/BatteryService$11;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->checkLongLifeBattery()V
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

    iput-object p1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    # operator++ for: Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$2508()I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_5b

    iget-object v0, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->checkLongLifeBatteryInternal()I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2600(Lcom/android/server/BatteryService;)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    goto :goto_5a

    :pswitch_15
    const-string v1, "[LLB] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ Faild to get property values, longBatteryRetryCnt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$2500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$2500()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_42

    iget-object v1, p0, Lcom/android/server/BatteryService$11;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5a

    :cond_42
    const-string v1, "[LLB] "

    const-string v2, "!@ Faild to calc checkLongLifeBatteryInternal, Do not try anymore"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :pswitch_4a
    const-string v1, "[LLB] "

    const-string v2, "!@ Calc error! check date!  "

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :pswitch_52
    const-string v1, "[LLB] "

    const-string v2, "!@ success to check weekly diff "

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_5a
    return-void

    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4a
        :pswitch_15
    .end packed-switch
.end method
