.class public Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordCrypto"

.field private static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordCrypto.SDP"

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KBKDF([B[B[BI)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKBKDF([B[B[BI)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-object v0
.end method

.method public static KDF([B[B[BI)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKDF([B[B[BI)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-object v0
.end method

.method public static PBKDF2([B[BII)[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativePBKDF2([B[BII)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-object v0
.end method

.method public static RBG(I)[B
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeRBG(I)[B

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-object v0
.end method

.method public static varargs createBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[BJ[[B)[B
    .registers 11

    :try_start_0
    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v1, 0x20

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2

    invoke-static {p1, v2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3

    return-object v3

    :cond_26
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v0, p2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v0

    invoke-static {p1, v0, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object v1

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs createBlob(Ljava/lang/String;[B[BJ[[B)[B
    .registers 14

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-eqz v5, :cond_4e

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    :cond_4e
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v6

    invoke-virtual {v2, p0, v5, v6}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v5

    if-eqz v5, :cond_7f

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v6, 0x20

    invoke-static {p2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v6

    new-array v4, v4, [[B

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v5, p1, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v4

    invoke-static {v1, v4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v7

    return-object v7

    :cond_7f
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, p1, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object v4

    invoke-static {v1, v4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v5
    :try_end_89
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_89} :catch_8a
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_89} :catch_8a

    return-object v5

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs decrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_2e
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public static varargs decrypt([B[B[B[[B)[B
    .registers 8

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_17
    invoke-static {v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v2

    :catch_1c
    move-exception v2

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public static varargs decryptBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B[[B)[B
    .registers 10

    :try_start_0
    invoke-static {p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v0

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v0, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3

    return-object v3

    :cond_26
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v1, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v1

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs decryptBlob(Ljava/lang/String;[B[B[[B)[B
    .registers 11

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-static {v1, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x20

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v3, v2, v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v5

    return-object v5

    :cond_36
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v3, v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v3
    :try_end_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_3c} :catch_3d

    return-object v3

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B
    .registers 7

    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    const/4 v1, 0x0

    new-array v2, v1, [[B

    invoke-static {p3, v0, p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v0

    new-array v1, v1, [[B

    invoke-static {p1, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .registers 8

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    const/4 v3, 0x0

    new-array v4, v3, [[B

    invoke-static {p2, v2, p1, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object v2

    new-array v3, v3, [[B

    invoke-static {v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v3

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method private static varargs encrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_1b
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    array-length v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_38

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :cond_38
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid iv length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static varargs encrypt([B[B[B[[B)[B
    .registers 8

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_17
    invoke-static {v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object v2
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v2

    :catch_1c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public static existsBlobKey(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v1, "SyntheticPasswordCrypto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "existsBlobKey keyAlias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2a

    const/4 v1, 0x1

    return v1

    :cond_29
    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    const/4 v0, 0x0

    return v0
.end method

.method public static native nativeKBKDF([B[B[BI)[B
.end method

.method public static native nativeKDF([B[B[BI)[B
.end method

.method public static native nativePBKDF2([B[BII)[B
.end method

.method public static native nativeRBG(I)[B
.end method

.method protected static personalise([BILjava/lang/String;Ljava/lang/String;)[B
    .registers 10

    if-eqz p0, :cond_59

    if-eqz p2, :cond_59

    if-eqz p3, :cond_59

    const/4 v0, 0x1

    if-lt p1, v0, :cond_51

    const/4 v1, 0x2

    if-gt p1, v1, :cond_51

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v1

    const/16 v4, 0x20

    if-gt v3, v4, :cond_49

    array-length v3, v2

    const/16 v5, 0x40

    if-gt v3, v5, :cond_49

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    if-eq p1, v0, :cond_2d

    invoke-static {p0, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KBKDF([B[B[BI)[B

    move-result-object v0

    goto :goto_32

    :cond_2d
    invoke-static {p0, v1, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KDF([B[B[BI)[B

    move-result-object v0

    nop

    :goto_32
    nop

    if-eqz v0, :cond_41

    array-length v3, v0

    if-le v3, v4, :cond_40

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    move-object v0, v3

    :cond_40
    return-object v0

    :cond_41
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected native error while personalization"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Personalization too long"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid secure mode for personalization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Make sure of input parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .registers 7

    const/16 v0, 0x80

    :try_start_2
    const-string v1, "SHA-512"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    array-length v2, p0

    const/16 v3, 0x80

    if-gt v2, v3, :cond_26

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_21
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    :cond_26
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Personalisation too long"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static varargs personalizedHash([B[[B)[B
    .registers 7

    const/16 v0, 0x40

    :try_start_2
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    array-length v2, p0

    const/16 v3, 0x40

    if-gt v2, v3, :cond_26

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_21
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    :cond_26
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Personalization too long"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
