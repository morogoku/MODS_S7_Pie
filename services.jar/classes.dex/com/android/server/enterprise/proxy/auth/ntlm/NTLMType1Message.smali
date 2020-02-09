.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType1Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType1Message"

.field private static defaultFlagSet:I


# instance fields
.field private domain:Ljava/lang/String;

.field private type1MessageString:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x88207

    sput v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setFlags(I)V

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x1000

    const/4 v6, 0x0

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Cp850"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, v3

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_2e

    :cond_2b
    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    :goto_2e
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    const/16 v7, 0x2000

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v8, "Cp850"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_50

    :cond_4d
    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    :goto_50
    if-nez v0, :cond_54

    move v3, v6

    goto :goto_55

    :cond_54
    array-length v3, v0

    :goto_55
    if-nez v2, :cond_59

    move v8, v6

    goto :goto_5a

    :cond_59
    array-length v8, v2

    :goto_5a
    add-int/2addr v3, v8

    const/16 v8, 0x20

    add-int/2addr v3, v8

    new-array v3, v3, [B

    sget-object v9, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->NTLM_HEADER_BYTES:[B

    const/16 v10, 0x8

    invoke-static {v9, v6, v3, v6, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x4

    invoke-static {v3, v10, v4, v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v10

    invoke-static {v3, v4, v10, v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_7f

    const/16 v4, 0x10

    invoke-static {v3, v4, v8, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    :cond_7f
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->isFlagSet(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    const/16 v4, 0x18

    if-nez v0, :cond_8a

    goto :goto_8b

    :cond_8a
    array-length v6, v0

    :goto_8b
    add-int/2addr v8, v6

    invoke-static {v3, v4, v8, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    :cond_8f
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;
    :try_end_98
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_98} :catch_99

    return-object v4

    :catch_99
    move-exception v3

    return-object v1
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
