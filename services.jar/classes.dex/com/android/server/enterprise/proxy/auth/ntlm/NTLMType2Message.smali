.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType2Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType2Message"


# instance fields
.field private contextData:[B

.field private flagsObtained:I

.field private serverChallengeNonce:[B

.field private targetData:[B

.field private targetName:Ljava/lang/String;

.field private type2MessageBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->processMessageString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlags(I)V

    return-void
.end method

.method private checkForValidData(II)Z
    .registers 6

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_f

    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_c

    const/4 v0, 0x1

    goto :goto_f

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    :goto_f
    return v0
.end method

.method private isValidNTLMType2String()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    sget-object v2, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->NTLM_HEADER_BYTES:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Type2 Format Exception: Misplaced Header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    return-void

    :cond_23
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Type2 Format Exception: Message Type Incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContextData()[B
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    if-nez v0, :cond_21

    const/16 v0, 0x28

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x8

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setContextData([B)V

    :cond_21
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-object v0
.end method

.method protected getFlagsObtained()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    if-gez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlagsObtained(I)V

    :cond_16
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return v0
.end method

.method protected getServerChallengeNonce()[B
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    if-nez v0, :cond_21

    const/16 v0, 0x20

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x8

    new-array v2, v0, [B

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setServerChallengeNonce([B)V

    :cond_21
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-object v0
.end method

.method protected getTargetData()[B
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetData([B)V

    :cond_19
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-object v1
.end method

.method protected getTargetName()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v0

    :try_start_12
    array-length v1, v0

    if-lez v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_22

    const-string v3, "Cp850"

    goto :goto_24

    :cond_22
    const-string v3, "UTF-16LE"

    :goto_24
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetName(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_2a} :catch_2b

    :cond_2a
    goto :goto_2f

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-object v0
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isValidNTLMType2String()V

    return-void
.end method

.method protected setContextData([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-void
.end method

.method protected setFlagsObtained(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return-void
.end method

.method protected setServerChallengeNonce([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-void
.end method

.method protected setTargetData([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-void
.end method

.method protected setTargetName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-void
.end method
