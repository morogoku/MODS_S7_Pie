.class final Lcom/samsung/android/authnrservice/service/FingerprintOperation;
.super Ljava/lang/Object;
.source "FingerprintOperation.java"


# static fields
.field private static final APP_ID_AUTHNR:Ljava/lang/String; = "authnr"

.field private static final FIDO_CMD_GET_WRAPPED_OBJECT:S = 0x2s

.field private static final FIDO_CMD_SET_CHALLENGE:S = 0x1s

.field private static final LENGTH_FIELD_SIZE:S = 0x2s

.field private static final MAX_RESPONSE_LENGTH:I = 0x2800

.field private static final OPERATION_CODE_FIELD_SIZE:S = 0x2s

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FPO"

.field private static sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_14

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_14
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    .registers 3

    const-class v0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sFingerprintOperation:Lcom/samsung/android/authnrservice/service/FingerprintOperation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized sendRequest([B)[B
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "FPO"

    const-string/jumbo v1, "sendRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string v0, "FPO"

    const-string v2, "Fingerprint Service not found"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_a1

    monitor-exit p0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    if-eqz p1, :cond_98

    :try_start_1c
    array-length v2, p1

    if-nez v2, :cond_21

    goto/16 :goto_98

    :cond_21
    const-string v2, "authnr"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    array-length v4, p1

    add-int/2addr v2, v4

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v10, v4

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v4, 0x5301

    invoke-virtual {v10, v1, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    const-string v5, "authnr"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    array-length v7, p1

    add-int/2addr v5, v7

    int-to-short v5, v5

    invoke-virtual {v10, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v4, 0x5302

    invoke-virtual {v10, v6, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v4, 0x6

    const-string v5, "authnr"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v10, v4, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const-string v4, "authnr"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "authnr"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v4, "authnr"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v1, 0x2800

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v5, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v3

    if-nez v3, :cond_92

    const-string v4, "FPO"

    const-string/jumbo v5, "request failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_1c .. :try_end_90} :catchall_a1

    monitor-exit p0

    return-object v0

    :cond_92
    :try_start_92
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_a1

    monitor-exit p0

    return-object v0

    :cond_98
    :goto_98
    :try_start_98
    const-string v1, "FPO"

    const-string v2, "invalid input"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_a1

    monitor-exit p0

    return-object v0

    :catchall_a1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getWrappedObject([B)[B
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "FPO"

    const-string v1, "getWrappedObject"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    array-length v1, p1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object v1

    if-eqz v1, :cond_54

    array-length v2, v1

    if-nez v2, :cond_37

    goto :goto_54

    :cond_37
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v2

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    if-eqz v2, :cond_52

    const-string v4, "FPO"

    const-string v5, "getWrappedObject failed"

    invoke-static {v4, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v3, [B
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_60

    monitor-exit p0

    return-object v3

    :cond_52
    monitor-exit p0

    return-object v1

    :cond_54
    :goto_54
    :try_start_54
    const-string v2, "FPO"

    const-string/jumbo v4, "sendRequest failed"

    invoke-static {v2, v4}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [B
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-object v2

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChallenge([B)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "FPO"

    const-string/jumbo v1, "set challenge"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    array-length v2, p1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->sendRequest([B)[B

    move-result-object v2

    if-eqz v2, :cond_56

    array-length v3, v2

    if-nez v3, :cond_3a

    goto :goto_56

    :cond_3a
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    if-eqz v3, :cond_54

    const-string v1, "FPO"

    const-string/jumbo v5, "setChallenge failed"

    invoke-static {v1, v5}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_60

    monitor-exit p0

    return v4

    :cond_54
    monitor-exit p0

    return v1

    :cond_56
    :goto_56
    :try_start_56
    const-string v1, "FPO"

    const-string/jumbo v3, "sendRequest failed"

    invoke-static {v1, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_60

    monitor-exit p0

    return v4

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method
