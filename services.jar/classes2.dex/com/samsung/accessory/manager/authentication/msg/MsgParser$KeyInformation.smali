.class Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;
.super Ljava/lang/Object;
.source "MsgParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyInformation"
.end annotation


# instance fields
.field public chipPubKey:[B

.field private keySize:I

.field public rootPriv_Sig_r:[B

.field public rootPriv_Sig_s:[B

.field private signatureSize:I

.field public signedRandVal_r:[B

.field public signedRandVal_s:[B

.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/msg/MsgParser;B)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->this$0:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0x33

    if-eq v0, v1, :cond_10

    const/16 v1, 0x55

    if-eq v0, v1, :cond_10

    goto :goto_3e

    :cond_10
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    :goto_3e
    return-void
.end method


# virtual methods
.method public isValidCertificate(I)Z
    .registers 4

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isValidSignature(I)Z
    .registers 3

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public setCertificateOfChip([B)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method public setSignatueOfRandomValue([B)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    iget v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method
