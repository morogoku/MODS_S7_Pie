.class Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_14e

    :pswitch_22
    goto/16 :goto_14c

    :pswitch_24
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "session is timed out!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v2, 0x1f

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_14c

    :pswitch_3c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_14c

    :pswitch_43
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_14c

    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_14c

    :pswitch_51
    goto/16 :goto_14c

    :pswitch_53
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_67
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1102(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    :cond_8e
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    goto/16 :goto_14c

    :pswitch_95
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_14c

    :pswitch_9c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    if-ne v0, v2, :cond_14c

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Connectivity is turned off while authentication is running!"

    invoke-static {v0, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    goto/16 :goto_14c

    :pswitch_b4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_14c

    :cond_d6
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is disabled by user"

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    :pswitch_e0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v0

    if-nez v0, :cond_125

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0xc

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_14c

    :cond_125
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$502(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I

    goto :goto_14c

    :cond_12b
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_14c

    :pswitch_146
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$900(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    nop

    :cond_14c
    :goto_14c
    return-void

    nop

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_146
        :pswitch_22
        :pswitch_e0
        :pswitch_b4
        :pswitch_9c
        :pswitch_22
        :pswitch_95
        :pswitch_53
        :pswitch_51
        :pswitch_22
        :pswitch_4a
        :pswitch_43
        :pswitch_3c
        :pswitch_24
    .end packed-switch
.end method
