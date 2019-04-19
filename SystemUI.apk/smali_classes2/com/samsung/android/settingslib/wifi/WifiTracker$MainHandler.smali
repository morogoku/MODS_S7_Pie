.class final Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ACCESS_POINT_CHANGED:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_CONNECTED_CHANGED:I = 0x0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MSG_WIFI_STATE_CHANGED:I = 0x1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    return-object v0

    :pswitch_0
    const-string v0, "MSG_PAUSE_SCANNING"

    return-object v0

    :pswitch_1
    const-string v0, "MSG_RESUME_SCANNING"

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_ACCESS_POINT_CHANGED scanUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_WIFI_STATE_CHANGED state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-string v0, "MSG_CONNECTED_CHANGED"

    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_CONFIGURED_NETWORKS_CHANGED multi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " networkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2500(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainHandler - handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->smToString(Landroid/os/Message;)Ljava/lang/String;

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

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2602(Lcom/samsung/android/settingslib/wifi/WifiTracker;J)J

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v3}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2700(Lcom/samsung/android/settingslib/wifi/WifiTracker;Z)V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-interface {v0, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;->onAccessPointsChanged(Z)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2400(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;->onConnectedChanged()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v4, v5}, Lcom/samsung/android/settingslib/wifi/WifiTracker$SemWifiListener;->onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v4}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/samsung/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->this$0:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->access$2200(Lcom/samsung/android/settingslib/wifi/WifiTracker;ZZ)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string v0, "WifiTracker"

    const-string v1, "ignore message, listener is null or tracking flag is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removePendingMessages()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker$MainHandler;->removeMessages(I)V

    return-void
.end method
