.class Lcom/att/iqi/MemAndCPUStats$HandlerCallback;
.super Ljava/lang/Object;
.source "MemAndCPUStats.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/MemAndCPUStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallback"
.end annotation


# static fields
.field static final ADD_PID_RECORD:I = 0x1

.field static final REMOVE_PID_RECORD:I = 0x2

.field static final UPDATE_STATS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/att/iqi/MemAndCPUStats;


# direct methods
.method private constructor <init>(Lcom/att/iqi/MemAndCPUStats;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;->this$0:Lcom/att/iqi/MemAndCPUStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/att/iqi/MemAndCPUStats;Lcom/att/iqi/MemAndCPUStats$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;-><init>(Lcom/att/iqi/MemAndCPUStats;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_9e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received and didn\'t handle unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logw(Ljava/lang/String;)V

    goto/16 :goto_9e

    :pswitch_23
    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;->this$0:Lcom/att/iqi/MemAndCPUStats;

    # invokes: Lcom/att/iqi/MemAndCPUStats;->updateStats()V
    invoke-static {v0}, Lcom/att/iqi/MemAndCPUStats;->access$100(Lcom/att/iqi/MemAndCPUStats;)V

    iget-object v0, p0, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;->this$0:Lcom/att/iqi/MemAndCPUStats;

    # getter for: Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/att/iqi/MemAndCPUStats;->access$200(Lcom/att/iqi/MemAndCPUStats;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;->this$0:Lcom/att/iqi/MemAndCPUStats;

    # getter for: Lcom/att/iqi/MemAndCPUStats;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/att/iqi/MemAndCPUStats;->access$200(Lcom/att/iqi/MemAndCPUStats;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9e

    :pswitch_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/att/iqi/PIDRecord;

    iget-object v1, p0, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;->this$0:Lcom/att/iqi/MemAndCPUStats;

    # getter for: Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/MemAndCPUStats;->access$000(Lcom/att/iqi/MemAndCPUStats;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer tracking PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    goto :goto_9e

    :pswitch_6f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/att/iqi/PIDRecord;

    iget-object v1, p0, Lcom/att/iqi/MemAndCPUStats$HandlerCallback;->this$0:Lcom/att/iqi/MemAndCPUStats;

    # getter for: Lcom/att/iqi/MemAndCPUStats;->mPIDRecords:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/att/iqi/MemAndCPUStats;->access$000(Lcom/att/iqi/MemAndCPUStats;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Now tracking PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/att/iqi/PIDRecord;->getPID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_9e
    :goto_9e
    const/4 v0, 0x1

    return v0

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_3f
        :pswitch_23
    .end packed-switch
.end method
