.class public Lcom/samsung/android/rlc/util/HMACUtil;
.super Ljava/lang/Object;
.source "HMACUtil.java"


# static fields
.field private static final BASE_SIGN_ALGORITHM:Ljava/lang/String; = "SHA256withRSA/PSS"

.field private static final HMAC_SHA256_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final TAG:Ljava/lang/String;

.field private static publicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/util/HMACUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/HMACUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :try_start_14
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_27

    return-object v2

    :catch_27
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method public static generatePublicKey([B)Ljava/security/interfaces/RSAPublicKey;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    :try_start_3
    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_39

    :cond_7
    sget-object v1, Lcom/samsung/android/rlc/util/HMACUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generatePublicKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    sput-object v2, Lcom/samsung/android/rlc/util/HMACUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_40

    :catch_37
    move-exception v1

    goto :goto_3c

    :cond_39
    :goto_39
    sget-object v1, Lcom/samsung/android/rlc/util/HMACUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3b} :catch_37

    return-object v1

    :goto_3c
    nop

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_40
    sget-object v1, Lcom/samsung/android/rlc/util/HMACUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v1
.end method

.method private static toHexString([B)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1d

    aget-byte v4, p0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1d
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static verify([B[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/rlc/util/HMACUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const-string v0, "SHA256withRSA/PSS"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/rlc/util/HMACUtil;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
