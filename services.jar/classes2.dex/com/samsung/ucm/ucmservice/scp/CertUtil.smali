.class public Lcom/samsung/ucm/ucmservice/scp/CertUtil;
.super Ljava/lang/Object;
.source "CertUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UCM::CertUtil"

.field public static final TAG_CA_ID:B = 0x42t

.field private static final TAG_ECC_KEY_PARAMETER:B = -0x10t

.field private static final TAG_ECC_PUB_KEY_VALUE:B = -0x50t

.field public static final TAG_EXPIRATION_DATE:S = 0x5f24s

.field private static final TAG_PUBLIC_KEY_DATA:S = 0x7f49s


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    return-void
.end method

.method public static toBin(Ljava/lang/String;)[B
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_20

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v4, v3

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    return-object v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .registers 5

    const-string v0, "%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public updateTlvCaCert([B)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v0

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, 0x7f49

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x50

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v5, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v6, -0x10

    invoke-direct {v5, v6}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v5}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v5

    check-cast v5, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-eqz v3, :cond_16d

    if-eqz v5, :cond_16d

    const-string v7, "EC"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    check-cast v8, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_6d

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v10, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v10, v6}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v2, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->remove(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_c2

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_e8

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Y:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_10b

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removed pubkey value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10b
    new-instance v10, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v11, Lcom/samsung/ucm/ucmservice/scp/Tag;

    invoke-direct {v11, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v10, v11, v4}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v2, v10}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    invoke-virtual {v2, v5}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v4, :cond_141

    const-string v4, "UCM::CertUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "added new pubkey value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_141
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v4

    iget-boolean v10, p0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->DEBUG:Z

    if-eqz v10, :cond_163

    const-string v10, "UCM::CertUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "final tlv : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_163
    array-length v10, v4

    invoke-static {v4, v1, v10}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([BII)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->write()[B

    move-result-object v10

    return-object v10

    :cond_16d
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method
