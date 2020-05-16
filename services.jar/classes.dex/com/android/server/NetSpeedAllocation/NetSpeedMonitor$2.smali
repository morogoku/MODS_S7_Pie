.class Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetSpeedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    invoke-virtual {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->isWifiConnected()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # invokes: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->isVPNConnected()Z
    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$500(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->WifiConnected:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->VPNConnected:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v2, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_20a

    :cond_57
    const-string v0, "NetSpeedMonitor"

    const-string v1, "Network disconnect"

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_20a

    :cond_6e
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    const-string v0, "NetSpeedMonitor"

    const-string v1, "LCD OFF"

    invoke-static {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_20a

    :cond_99
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string v0, "NetSpeedMonitor"

    const-string/jumbo v2, "screen on off switch."

    invoke-static {v0, v2}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v0}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isScreenOn:Z

    iget-object v0, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v0, v0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    iget-object v1, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_20a

    :cond_c4
    const-string v0, "com.android.providers.downloads.start"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_11b

    const-string/jumbo v0, "key_id"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v5, "value_uid"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    cmp-long v3, v0, v3

    if-eqz v3, :cond_119

    if-eqz v2, :cond_119

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v3, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string v3, "NetSpeedMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download start id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    goto/16 :goto_20a

    :cond_11b
    const-string v0, "com.android.providers.downloads.complete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    const-string/jumbo v0, "key_id"

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v3, "value_uid"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string v3, "NetSpeedMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download complete id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " providerDownload size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v5, v5, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isContained:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v5, v5, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v3, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20a

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v3, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    const-string v3, "NetSpeedMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "download complete id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " providerDownload size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v5, v5, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v3, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->providerDownload:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_20a

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v3, v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;)Z

    move-result v3

    if-eqz v3, :cond_20a

    iget-object v3, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v3, v3, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    # getter for: Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;
    invoke-static {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->access$000(Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;)Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;

    invoke-virtual {v4}, Lcom/android/server/NetSpeedAllocation/NetSpeedStatus;->getUid()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    const/16 v4, 0x11

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor$2;->this$0:Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;

    iget-object v4, v4, Lcom/android/server/NetSpeedAllocation/NetSpeedMonitor;->mHandler:Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/NetSpeedAllocation/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_20a
    :goto_20a
    return-void
.end method
