.class Lcom/android/server/GmsAlarmManager$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/GmsAlarmManager;->access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v0, "GmsAlarmManager"

    const-string v1, "CONNECTIVITY RECEIVER"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Lcom/android/server/GmsAlarmManager;->access$402(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const v1, 0x9d08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkInfo type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  -- isConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-eq v0, v1, :cond_71

    if-eq v0, v3, :cond_71

    if-eqz v0, :cond_71

    if-eq v0, v2, :cond_71

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c4

    :cond_71
    if-ne v0, v2, :cond_9a

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$500(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    goto :goto_9a

    :cond_8d
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$500(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    :cond_9a
    :goto_9a
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mScreenOn:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$600(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_b8

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$700(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_b8

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # getter for: Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$800(Lcom/android/server/GmsAlarmManager;)Z

    move-result v1

    if-nez v1, :cond_b8

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # setter for: Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z
    invoke-static {v1, v3}, Lcom/android/server/GmsAlarmManager;->access$902(Lcom/android/server/GmsAlarmManager;Z)Z

    return-void

    :cond_b8
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->cancelAlarm()V
    invoke-static {v1}, Lcom/android/server/GmsAlarmManager;->access$1000(Lcom/android/server/GmsAlarmManager;)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;->this$0:Lcom/android/server/GmsAlarmManager;

    const-wide/16 v2, 0x2710

    # invokes: Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V
    invoke-static {v1, v2, v3}, Lcom/android/server/GmsAlarmManager;->access$1100(Lcom/android/server/GmsAlarmManager;J)V

    :cond_c4
    return-void
.end method
