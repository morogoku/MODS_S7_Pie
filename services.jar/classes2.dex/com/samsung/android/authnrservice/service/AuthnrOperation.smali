.class final Lcom/samsung/android/authnrservice/service/AuthnrOperation;
.super Ljava/lang/Object;
.source "AuthnrOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AO"

.field private static sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;


# instance fields
.field private mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_f

    :try_start_3
    const-string v0, "AO"

    const-string v1, "initialize TA: fd is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception p1

    goto :goto_2f

    :cond_f
    :try_start_f
    const-string v0, "AO"

    const-string v1, "initialize TA"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_21

    new-instance v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/authnrservice/service/ITaController;->initialize(IJJ)Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_d

    monitor-exit p0

    return v0

    :goto_2f
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process([B)[B
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AO"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_19

    const-string v0, "AO"

    const-string v1, "controller is null."

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    monitor-exit p0

    return-object v0

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-interface {v0, p1}, Lcom/samsung/android/authnrservice/service/ITaController;->process([B)[B

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AO"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_17

    const-string v0, "AO"

    const-string v1, "controller is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/ITaController;->terminate()Z

    move-result v0

    if-nez v0, :cond_27

    const-string v1, "AO"

    const-string/jumbo v2, "terminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2d

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
