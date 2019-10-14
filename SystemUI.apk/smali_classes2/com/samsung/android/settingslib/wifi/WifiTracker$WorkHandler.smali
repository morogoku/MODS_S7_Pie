.class final Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->removePendingMessages()V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 6
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WorkHandler - handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$3102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$3200(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$3000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2900(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_3

    :pswitch_3
    const/4 v0, 0x0

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1102(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x1

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_6

    move v1, v3

    nop

    :cond_6
    invoke-static {v2, v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2200(Lcom/samsung/android/settingslib/wifi/WifiTracker;ZZ)V

    nop

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removePendingMessages()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    return-void
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknwon"

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_UPDATE_WIFI_STATE state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "MSG_RESUME"

    return-object v0

    :pswitch_2
    const-string v0, "MSG_UPDATE_NETWORK_INFO"

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_UPDATE_ACCESS_POINTS clearConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scanResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2800(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WorkHandler;->processMessage(Landroid/os/Message;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
