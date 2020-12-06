.class Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingVerifierReceiver"
.end annotation


# instance fields
.field private mState:Lcom/android/server/pm/PackageVerificationState;

.field private mSufficientVerifierTimeout:Z

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const-string v0, "PackageManager"

    const-string v1, "VERIFY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive for RequiredVerifier id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    monitor-enter v0

    :try_start_30
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageVerificationResponse;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDefaultVerificationResponse(Landroid/os/UserHandle;)I
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->isCurrentVerifier(I)Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v3

    if-nez v3, :cond_b5

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendMessageDelayed(CHECK_PENDING_VERIFICATION, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b5
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mSufficientVerifierTimeout:Z

    if-eqz v3, :cond_11d

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isSufficientVerificationComplete()Z

    move-result v3

    if-nez v3, :cond_11d

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageVerificationState;->addHandlerMessage(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "PackageManager"

    const-string v5, "VERIFY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendMessageDelayed(SUFFICIENT_VERIFICATION_TIMEOUT, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->mState:Lcom/android/server/pm/PackageVerificationState;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageVerificationState;->getVerificationId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PendingVerifierReceiver;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_11d
    monitor-exit v0

    return-void

    :catchall_11f
    move-exception v1

    monitor-exit v0
    :try_end_121
    .catchall {:try_start_30 .. :try_end_121} :catchall_11f

    throw v1
.end method
