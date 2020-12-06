.class Lcom/samsung/accessory/manager/SAccessoryManager$1;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticationReady()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # invokes: Lcom/samsung/accessory/manager/SAccessoryManager;->initUsbState()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$700(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    return-void
.end method

.method public getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$500(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$500(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_19
    const/4 v1, 0x7

    monitor-exit v0

    return v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setAuthenticatedHall(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # setter for: Lcom/samsung/accessory/manager/SAccessoryManager;->authenticatedHall:I
    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$602(Lcom/samsung/accessory/manager/SAccessoryManager;I)I

    return-void
.end method

.method public start(Landroid/os/Message;Z)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$002(Lcom/samsung/accessory/manager/SAccessoryManager;I)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    :cond_1d
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz p2, :cond_27

    const/4 v1, 0x2

    nop

    :cond_27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3f
    return-void
.end method

.method public stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/accessory/manager/SAccessoryManager;->auth_state:I
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$002(Lcom/samsung/accessory/manager/SAccessoryManager;I)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$200(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SM-F900"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getReason()I

    move-result v0

    if-nez v0, :cond_32

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F900, set auth state true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$402(Lcom/samsung/accessory/manager/SAccessoryManager;Z)Z

    goto :goto_4e

    :cond_32
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$200(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SM-F900"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "F900, set aute state false"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # setter for: Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$402(Lcom/samsung/accessory/manager/SAccessoryManager;Z)Z

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
