.class Lcom/android/server/NSLocationMonitor$1;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NSLocationMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorService is connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$002(Lcom/android/server/NSLocationMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/NSLocationMonitor;->mMonitorBound:Z
    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$102(Lcom/android/server/NSLocationMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$200(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "systemRunning"

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mSystemRunningTime:J
    invoke-static {v2}, Lcom/android/server/NSLocationMonitor;->access$300(Lcom/android/server/NSLocationMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "connectedHistory"

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NSLocationMonitor;->access$200(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "disconnectedHistory"

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/NSLocationMonitor;->access$400(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1f4

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-virtual {v2, v1}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;
    invoke-static {v2}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/NSLocationMonitor$ServiceCallback;->onServiceConnected(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorService has unexpectedly disconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NSLocationMonitor;->mMonitorBound:Z
    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$102(Lcom/android/server/NSLocationMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NSLocationMonitor;->mMonitorService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$002(Lcom/android/server/NSLocationMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mLocListenerBlacklist:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$600(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mStatusListenerBlacklist:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$700(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mMeasurementListenerBlacklist:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$800(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mBackgroundThrottlePackageWhitelistByNsflp:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$900(Lcom/android/server/NSLocationMonitor;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$400(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    # getter for: Lcom/android/server/NSLocationMonitor;->mServiceCallback:Lcom/android/server/NSLocationMonitor$ServiceCallback;
    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/NSLocationMonitor$ServiceCallback;->onServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method
