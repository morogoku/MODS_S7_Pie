.class Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;
.super Ljava/lang/Object;
.source "PIDRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/PIDRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCPUStatsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/PIDRecord;


# direct methods
.method private constructor <init>(Lcom/att/iqi/PIDRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/PIDRecord;Lcom/att/iqi/PIDRecord$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;-><init>(Lcom/att/iqi/PIDRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # getter for: Lcom/att/iqi/PIDRecord;->mIsAlive:Z
    invoke-static {v0}, Lcom/att/iqi/PIDRecord;->access$000(Lcom/att/iqi/PIDRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    int-to-long v2, v1

    :try_start_c
    iget-object v4, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # invokes: Lcom/att/iqi/PIDRecord;->pidCPUTime()J
    invoke-static {v4}, Lcom/att/iqi/PIDRecord;->access$100(Lcom/att/iqi/PIDRecord;)J

    move-result-wide v4
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_12} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_15

    add-long/2addr v2, v4

    long-to-int v1, v2

    goto :goto_21

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "Exception thrown "

    invoke-static {v2, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # getter for: Lcom/att/iqi/PIDRecord;->mTotalCPUTime:I
    invoke-static {v0}, Lcom/att/iqi/PIDRecord;->access$300(Lcom/att/iqi/PIDRecord;)I

    move-result v0

    if-le v1, v0, :cond_2e

    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # setter for: Lcom/att/iqi/PIDRecord;->mTotalCPUTime:I
    invoke-static {v0, v1}, Lcom/att/iqi/PIDRecord;->access$302(Lcom/att/iqi/PIDRecord;I)I

    :cond_2e
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PID ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # getter for: Lcom/att/iqi/PIDRecord;->mPID:I
    invoke-static {v2}, Lcom/att/iqi/PIDRecord;->access$200(Lcom/att/iqi/PIDRecord;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] Total CPU "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # getter for: Lcom/att/iqi/PIDRecord;->mTotalCPUTime:I
    invoke-static {v2}, Lcom/att/iqi/PIDRecord;->access$300(Lcom/att/iqi/PIDRecord;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Max Memory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # getter for: Lcom/att/iqi/PIDRecord;->mMaxMemory:J
    invoke-static {v2}, Lcom/att/iqi/PIDRecord;->access$400(Lcom/att/iqi/PIDRecord;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_6a
    goto :goto_a8

    :catch_6b
    move-exception v2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_91

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stats file for PID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # getter for: Lcom/att/iqi/PIDRecord;->mPID:I
    invoke-static {v4}, Lcom/att/iqi/PIDRecord;->access$200(Lcom/att/iqi/PIDRecord;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is gone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_91
    iget-object v3, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    # setter for: Lcom/att/iqi/PIDRecord;->mIsAlive:Z
    invoke-static {v3, v0}, Lcom/att/iqi/PIDRecord;->access$002(Lcom/att/iqi/PIDRecord;Z)Z

    iget-object v0, p0, Lcom/att/iqi/PIDRecord$UpdateCPUStatsTask;->this$0:Lcom/att/iqi/PIDRecord;

    invoke-virtual {v0}, Lcom/att/iqi/PIDRecord;->stopTracking()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_9b} :catch_9c

    return-void

    :catch_9c
    move-exception v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "Exception "

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a8
    :goto_a8
    return-void
.end method
