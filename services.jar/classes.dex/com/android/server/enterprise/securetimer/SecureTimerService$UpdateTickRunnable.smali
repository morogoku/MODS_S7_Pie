.class Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;
.super Ljava/lang/Object;
.source "SecureTimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTickRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;,
        Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;
    }
.end annotation


# instance fields
.field private final MAX_RETRY_ATTEMPTS:I

.field private exceptionHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;

.field private index:I

.field private randomGen:Ljava/security/SecureRandom;

.field final synthetic this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

.field private updateTickRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->updateTickRetry:I

    iput p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->index:I

    new-instance p1, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;Lcom/android/server/enterprise/securetimer/SecureTimerService$1;)V

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->exceptionHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->randomGen:Ljava/security/SecureRandom;

    iput p2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->MAX_RETRY_ATTEMPTS:I

    const-string p1, "[SecureTimerService:] "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateTickRunnable is created: MAX_RETRY_ATTEMPTS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->MAX_RETRY_ATTEMPTS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->exceptionHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_9
    iget-object v0, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->isThreadEnabled:Z
    invoke-static {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$300(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Z

    move-result v0

    if-eqz v0, :cond_d7

    :try_start_11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    const-wide/32 v0, 0x5265c00

    invoke-static {}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->arcounter_updateTick()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5d

    iget v5, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->returnCode:I

    if-eqz v5, :cond_26

    goto :goto_5d

    :cond_26
    iput v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->updateTickRetry:I

    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    iget-wide v5, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->triggerAlarm(J)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$400(Lcom/android/server/enterprise/securetimer/SecureTimerService;J)V

    iget-object v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    iget-wide v5, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->alarmState:J

    # invokes: Lcom/android/server/enterprise/securetimer/SecureTimerService;->getTickDelay(J)I
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$500(Lcom/android/server/enterprise/securetimer/SecureTimerService;J)I

    move-result v4

    if-le v4, v3, :cond_50

    const-string v3, "[SecureTimerService:] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTick delay : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    iget-wide v5, v2, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->nextTick:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    int-to-long v7, v4

    mul-long/2addr v5, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-wide v0, v5

    goto :goto_99

    :cond_5d
    :goto_5d
    const-string v5, "[SecureTimerService:] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTick failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_76

    const-string v6, "Result is null"

    goto :goto_7a

    :cond_76
    invoke-virtual {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7a
    invoke-static {v5, v6}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->updateTickRetry:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->updateTickRetry:I

    iget v3, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->updateTickRetry:I

    iget v5, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->MAX_RETRY_ATTEMPTS:I

    if-lt v3, v5, :cond_99

    iput v4, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->updateTickRetry:I

    new-instance v3, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;

    if-nez v2, :cond_91

    const-string v4, "UpdateTick Result is null!"

    goto :goto_95

    :cond_91
    invoke-virtual {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$Result;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_95
    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;-><init>(Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;Ljava/lang/String;)V

    throw v3

    :cond_99
    :goto_99
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_9c} :catch_cd
    .catch Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException; {:try_start_11 .. :try_end_9c} :catch_9d

    goto :goto_d5

    :catch_9d
    move-exception v0

    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable$UpdateTickException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;
    invoke-static {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$600(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$UpdateTickRunnable;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    # getter for: Lcom/android/server/enterprise/securetimer/SecureTimerService;->mHandler:Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;
    invoke-static {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$600(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService$SecureTimerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d5

    :catch_cd
    move-exception v0

    const-string v1, "[SecureTimerService:] "

    const-string v2, "UpdateTickRunnable: interrupted with new NextTick "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d5
    goto/16 :goto_9

    :cond_d7
    return-void
.end method
