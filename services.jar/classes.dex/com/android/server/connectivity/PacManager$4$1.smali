.class Lcom/android/server/connectivity/PacManager$4$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PacManager$4;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager$4;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mLastPort:I
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$1200(Lcom/android/server/connectivity/PacManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/PacManager;->access$1302(Lcom/android/server/connectivity/PacManager;Z)Z

    :cond_13
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    # setter for: Lcom/android/server/connectivity/PacManager;->mLastPort:I
    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacManager;->access$1202(Lcom/android/server/connectivity/PacManager;I)I

    if-eq p1, v1, :cond_3a

    const-string v0, "PacManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local proxy is bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$4$1;->this$1:Lcom/android/server/connectivity/PacManager$4;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$4;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$600(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_41

    :cond_3a
    const-string v0, "PacManager"

    const-string v1, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method
