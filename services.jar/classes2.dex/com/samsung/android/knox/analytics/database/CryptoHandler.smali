.class Lcom/samsung/android/knox/analytics/database/CryptoHandler;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# static fields
.field private static final ALIAS:Ljava/lang/String; = "synthetic_password_knox.analytics.service.cryptokey"

.field private static final BLOCK_MODE:Ljava/lang/String; = "GCM"

.field private static final CHARSET_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final ENCRYPTION_PADDING:Ljava/lang/String; = "NoPadding"

.field private static final IV_SIZE:I = 0xc

.field private static final KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final KEY_GENERATOR_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final LEGACY_ALIAS:Ljava/lang/String; = "com.samsung.android.knox.analytics.service.cryptokey"

.field public static final TAG:Ljava/lang/String;

.field private static final TLEN_SIZE:I = 0x80


# instance fields
.field private mDecryptionKeyError:Z

.field private mKeyCache:Ljavax/crypto/SecretKey;

.field private mKeyStore:Ljava/security/KeyStore;

.field private final mKeystoreGenerateAccessLock:Ljava/lang/Object;

.field private mLegacyKeyCache:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mDecryptionKeyError:Z

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "constructor()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_19
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_26
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_26} :catch_42
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_26} :catch_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_26} :catch_30
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_4a

    :catch_27
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b

    :catch_30
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    :catch_39
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "CertificateException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    :catch_42
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "KeyStoreException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4a
    nop

    :goto_4b
    return-void
.end method

.method private decryptInternal([BZ)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v1, p1

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v2, v5, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKey(Z)Ljavax/crypto/SecretKey;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v6, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptInternal(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private encryptInternal(Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKey(Z)Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    const/16 v3, 0xc

    new-array v4, v3, [B

    array-length v5, v2

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    array-length v6, v5

    add-int/2addr v6, v3

    new-array v6, v6, [B

    array-length v7, v5

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v5

    invoke-static {v4, v1, v6, v7, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v6
.end method

.method private getKey(Z)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    :goto_7
    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStoreKey(Z)Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, v2

    if-eqz p1, :cond_18

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit v1

    return-object v0

    :cond_18
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private getKeyStoreKey(Z)Ljavax/crypto/SecretKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const-string v0, "com.samsung.android.knox.analytics.service.cryptokey"

    goto :goto_8

    :cond_5
    const-string/jumbo v0, "synthetic_password_knox.analytics.service.cryptokey"

    :goto_8
    const-string v1, "com.samsung.android.knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "legacy key"

    goto :goto_15

    :cond_13
    const-string v1, "key"

    :goto_15
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3a

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyStoreKey() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not on Keystore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3a
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez v2, :cond_5b

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKeyStoreKey() - null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5b
    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public decrypt([BZ)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt(): isLegacyKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteAnalyticsLegacyKey()V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "deleteAnalyticsLegacyKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "deleteAnalyticsLegacyKey(): Key already deleted"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void

    :cond_23
    const-string v1, "USRSKEY_com.samsung.android.knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "deleteAnalyticsLegacyKey(): Key deleted. Invalidating cache"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public encrypt(Ljava/lang/String;)[B
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1f
    .catch Ljava/security/InvalidKeyException; {:try_start_1b .. :try_end_1f} :catch_32
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_1f} :catch_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encrypt(): UnsupportedEncodingException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    :catch_29
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encrypt(): GeneralSecurityException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    :catch_32
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encrypt(): InvalidKeyException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    nop

    :goto_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method generateKey()Z
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "generateKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
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

    const/4 v4, 0x3

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

    const-string/jumbo v5, "synthetic_password_knox.analytics.service.cryptokey"

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_51} :catch_6d
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_51} :catch_64
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_51} :catch_5b
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_51} :catch_52

    return v4

    :catch_52
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "generateKey(): GeneralSecurityException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :catch_5b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "generateKey(): KeyStoreException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :catch_64
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "generateKey(): CertificateException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :catch_6d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "generateKey(): IOException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_75
    nop

    :goto_76
    const/4 v0, 0x0

    return v0
.end method

.method public isDecryptionKeyErrorHappened()Z
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDecryptionKeyErrorHappened(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mDecryptionKeyError:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mDecryptionKeyError:Z

    return v0
.end method

.method isKeyGenerated()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyStore:Ljava/security/KeyStore;

    const-string/jumbo v1, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "isKeyGenerated(): KeyStoreException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public safetyTestKeyStoreEncryptionInvalidKeyException()Z
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "safetyTestKeyStoreEncryptionInvalidKeyException()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_8
    const-string v0, "TEST"

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_d} :catch_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_d} :catch_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_21

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "safeTestKeyStoreKey(): GeneralSecurityException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "safeTestKeyStoreKey(): UnsupportedEncodingException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    nop

    :goto_22
    const/4 v0, 0x1

    return v0

    :catch_24
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "safeTestKeyStoreKey(): InvalidKeyException"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_30
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateKey()Z

    monitor-exit v1

    const/4 v1, 0x0

    return v1

    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_36

    throw v2
.end method
