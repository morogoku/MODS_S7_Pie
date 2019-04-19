.class Lcom/android/server/connectivity/PacManager$2;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "PacManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding service com.android.net.IProxyService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_24
    .catchall {:try_start_7 .. :try_end_21} :catchall_22

    goto :goto_2c

    :catchall_22
    move-exception v1

    goto :goto_6d

    :catch_24
    move-exception v1

    :try_start_25
    const-string v2, "PacManager"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    const-string v1, "com.android.net.IProxyService"

    invoke-static {v1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v2

    # setter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacManager;->access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v1}, Lcom/android/server/connectivity/PacManager;->access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    move-result-object v1

    if-nez v1, :cond_4a

    const-string v1, "PacManager"

    const-string v2, "No proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_22

    goto :goto_6b

    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v1}, Lcom/android/server/connectivity/PacManager;->access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/net/IProxyService;->startPacSystem()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_53} :catch_54
    .catchall {:try_start_4a .. :try_end_53} :catchall_22

    goto :goto_5c

    :catch_54
    move-exception v1

    :try_start_55
    const-string v2, "PacManager"

    const-string v3, "Unable to reach ProxyService - PAC will not be started"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/PacManager;->access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6b
    monitor-exit v0

    return-void

    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_22

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager$2;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PacManager;->access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
