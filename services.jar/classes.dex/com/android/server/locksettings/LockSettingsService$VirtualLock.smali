.class final Lcom/android/server/locksettings/LockSettingsService$VirtualLock;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualLock"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "LockSettingsService.VirtualLock"


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method addEscrowToken([BI)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V
    invoke-static {v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->access$1600(Lcom/android/server/locksettings/LockSettingsService;I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    goto :goto_3e

    :cond_22
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z
    invoke-static {v2, p2}, Lcom/android/server/locksettings/LockSettingsService;->access$2700(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_55

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sp already applied to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_3e
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BI)J

    move-result-wide v2

    if-eqz v1, :cond_53

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    :cond_53
    monitor-exit v0

    return-wide v2

    :cond_55
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while set reset token for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method clearLock(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear virtual lock for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J
    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->access$2300(Lcom/android/server/locksettings/LockSettingsService;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3a

    const-string v2, "Handle(%d) detected at the moment of clearing lock for user %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_3a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    return-void
.end method

.method doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v9, p6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialPerUserLocked(I)Z
    invoke-static {v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->access$2500(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, v9

    move-object/from16 v8, p7

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->access$2600(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v10

    goto :goto_35

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sp not yet applied to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :goto_35
    const-string v1, "Result of verification for user %d : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return-object v10

    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Credential can\'t be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    :cond_e
    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->clearLock(I)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v6

    monitor-enter v6

    :try_start_1c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z
    invoke-static {v0, p5}, Lcom/android/server/locksettings/LockSettingsService;->access$2700(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->access$2800(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;ILjava/lang/String;II)V

    monitor-exit v6

    return-void

    :cond_30
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordPerUserLocked(I)Z
    invoke-static {v0, p5}, Lcom/android/server/locksettings/LockSettingsService;->access$2900(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v1, 0x0

    move-object v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    move-object v7, v0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->access$2800(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;ILjava/lang/String;II)V

    monitor-exit v6

    return-void

    :cond_50
    monitor-exit v6

    return-void

    :catchall_52
    move-exception v0

    monitor-exit v6
    :try_end_54
    .catchall {:try_start_1c .. :try_end_54} :catchall_52

    throw v0
.end method

.method setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v8, p7

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v9

    monitor-enter v9

    :try_start_a
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p3

    move-object/from16 v6, p5

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_2a

    const-string v2, "Invalid escrow token supplied"

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    monitor-exit v9

    return v2

    :cond_2a
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J
    invoke-static {v2, v8}, Lcom/android/server/locksettings/LockSettingsService;->access$2300(Lcom/android/server/locksettings/LockSettingsService;I)J

    move-result-wide v2

    move-wide v10, v2

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v3, p1

    move v4, p2

    move/from16 v6, p6

    move v7, v8

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    invoke-static/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->access$3000(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v2

    invoke-virtual {v2, v10, v11, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    const/4 v2, 0x1

    monitor-exit v9

    return v2

    :catchall_49
    move-exception v0

    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_49

    throw v0
.end method
