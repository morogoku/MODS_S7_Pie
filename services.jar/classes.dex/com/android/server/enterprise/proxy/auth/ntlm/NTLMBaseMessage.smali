.class public abstract Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.super Ljava/lang/Object;
.source "NTLMBaseMessage.java"


# static fields
.field protected static final NTLM_HEADER_BYTES:[B

.field private static final TAG:Ljava/lang/String; = "NTLMBaseMessage"


# instance fields
.field private flags:I

.field private messageType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->NTLM_HEADER_BYTES:[B

    return-void

    :array_a
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->messageType:I

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->flags:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->messageType:I

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->flags:I

    iput p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->messageType:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->messageType:I

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->flags:I

    iput p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->messageType:I

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->setFlags(I)V

    return-void
.end method


# virtual methods
.method protected abstract createMessageString()Ljava/lang/String;
.end method

.method protected getFlags()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->flags:I

    return v0
.end method

.method protected getMessageType()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->messageType:I

    return v0
.end method

.method protected isFlagSet(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected abstract processMessageString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setFlags(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->flags:I

    return-void
.end method

.method protected setThisFlag(IZ)V
    .registers 5

    nop

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->getFlags()I

    move-result v0

    or-int/2addr v0, p1

    goto :goto_10

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->getFlags()I

    move-result v0

    const/4 v1, -0x1

    xor-int/2addr v1, p1

    and-int/2addr v0, v1

    :goto_10
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;->setFlags(I)V

    return-void
.end method
