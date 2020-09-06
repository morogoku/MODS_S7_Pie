.class Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    const-string v0, "CmdSvc"

    const-string/jumbo v1, "onServiceConnected %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z
    invoke-static {v4}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$000(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z
    invoke-static {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$000(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # setter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z
    invoke-static {v0, v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$002(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Z)Z

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$100(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    :try_start_2e
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    # getter for: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$100(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_3c
    goto :goto_47

    :cond_3d
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # invokes: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$200(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    :goto_47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->access$200(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    const-string v0, "CmdSvc"

    const-string/jumbo v1, "onServiceDisconnected "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
