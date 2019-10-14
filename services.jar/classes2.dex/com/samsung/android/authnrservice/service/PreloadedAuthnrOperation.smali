.class final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
.super Ljava/lang/Object;
.source "PreloadedAuthnrOperation.java"


# static fields
.field private static final FIDO_CMD_DO_FIDO:I = 0x3

.field private static final FIDO_CMD_GET_WRAPPED_OBJECT:I = 0x2

.field private static final FIDO_CMD_SET_CHALLENGE:I = 0x1

.field private static final MAX_RESPONSE_LENGTH:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "PAO"

.field private static sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_11

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_11
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    .registers 3

    const-class v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendRequest([B)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "PAO"

    const-string/jumbo v1, "send request"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    array-length v1, p1

    if-nez v1, :cond_f

    goto :goto_2f

    :cond_f
    const/16 v1, 0x2800

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v3, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v2

    if-nez v2, :cond_2a

    const-string v3, "PAO"

    const-string/jumbo v4, "request failed"

    invoke-static {v3, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2a
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    :cond_2f
    :goto_2f
    const-string v1, "PAO"

    const-string/jumbo v2, "request is 0"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized initialize()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "PAO"

    const-string v1, "initialize TA"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v0, :cond_13

    new-instance v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->initialize()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process([BLjava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "PAO"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_18

    const-string v0, "PAO"

    const-string v2, "input data is null"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_140

    monitor-exit p0

    return-object v0

    :cond_18
    :try_start_18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_2b

    const-string v0, "PAO"

    const-string v2, "appId is too long(max: 32)"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_140

    monitor-exit p0

    return-object v0

    :cond_2b
    :try_start_2b
    const-string v0, "authnr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "PAO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId is wrong. appId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_140

    monitor-exit p0

    return-object v0

    :cond_4d
    :try_start_4d
    new-array v0, v1, [B

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    array-length v4, p1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v5, 0x5301

    invoke-virtual {v4, v1, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v5, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    add-int/2addr v6, v7

    array-length v8, p1

    add-int/2addr v6, v8

    int-to-short v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v5, 0x5302

    invoke-virtual {v4, v7, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v5, 0x6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    array-length v5, p1

    invoke-static {p1, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    packed-switch v5, :pswitch_data_144

    const-string v6, "PAO"

    goto/16 :goto_132

    :pswitch_ab
    const-string v6, "PAO"

    const-string v7, "doFido"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v6

    if-nez v6, :cond_c1

    const-string v7, "PAO"

    const-string v8, "TA init failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_138

    :cond_c1
    if-nez v6, :cond_cc

    const-string v7, "PAO"

    const-string v8, "TA init failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_138

    :cond_cc
    iget-object v7, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v7, p1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->process([B)[B

    move-result-object v7

    move-object v0, v7

    if-eqz v0, :cond_d8

    array-length v7, v0

    if-nez v7, :cond_e0

    :cond_d8
    const-string v7, "PAO"

    const-string/jumbo v8, "process failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->terminate()Z

    move-result v7

    move v6, v7

    if-nez v6, :cond_138

    const-string v7, "PAO"

    const-string v8, "TA terminate failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :pswitch_ef
    const-string v6, "PAO"

    const-string v7, "getWrappedObject"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v6

    if-nez v6, :cond_104

    const-string v7, "PAO"

    const-string v8, "TA init failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :cond_104
    invoke-direct {p0, v2}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sendRequest([B)[B

    move-result-object v7

    move-object v0, v7

    if-eqz v0, :cond_10e

    array-length v7, v0

    if-nez v7, :cond_138

    :cond_10e
    const-string v7, "PAO"

    const-string/jumbo v8, "send request failed"

    invoke-static {v7, v8}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :pswitch_117
    const-string v6, "PAO"

    const-string/jumbo v7, "setChallenge start"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sendRequest([B)[B

    move-result-object v6

    move-object v0, v6

    if-eqz v0, :cond_129

    array-length v6, v0

    if-nez v6, :cond_138

    :cond_129
    const-string v6, "PAO"

    const-string/jumbo v7, "send request fail"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :goto_132
    const-string/jumbo v7, "unknown opCode"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    :goto_138
    if-nez v0, :cond_13d

    new-array v1, v1, [B
    :try_end_13c
    .catchall {:try_start_4d .. :try_end_13c} :catchall_140

    goto :goto_13e

    :cond_13d
    move-object v1, v0

    :goto_13e
    monitor-exit p0

    return-object v1

    :catchall_140
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_117
        :pswitch_ef
        :pswitch_ab
    .end packed-switch
.end method

.method public declared-synchronized terminate()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "PAO"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v0, :cond_17

    const-string v0, "PAO"

    const-string v1, "controller is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2d

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->terminate()Z

    move-result v0

    if-nez v0, :cond_27

    const-string v1, "PAO"

    const-string/jumbo v2, "terminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
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
