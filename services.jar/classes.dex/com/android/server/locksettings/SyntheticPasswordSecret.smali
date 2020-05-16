.class public Lcom/android/server/locksettings/SyntheticPasswordSecret;
.super Ljava/lang/Object;
.source "SyntheticPasswordSecret.java"


# static fields
.field private static final DEFAULT_KEY_LENGTH:I = 0x20

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "DEFAULT_PASSWORD"

.field private static final DEVICE_SUPPORT_FIPS_TIMA:Z

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordSecret"

.field private static final TYPE_TIMA_FIPS_KEYSTORE:Ljava/lang/String; = "FipsTimaKeyStore"

.field private static final TYPE_TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static sInstance:Lcom/android/server/locksettings/SyntheticPasswordSecret;


# instance fields
.field private mKeyStoreStatus:I

.field private mKeyStoreType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->sInstance:Lcom/android/server/locksettings/SyntheticPasswordSecret;

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->DEVICE_SUPPORT_FIPS_TIMA:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->DEVICE_SUPPORT_FIPS_TIMA:Z

    if-eqz v0, :cond_a

    const-string v0, "FipsTimaKeyStore"

    goto :goto_c

    :cond_a
    const-string v0, "TIMAKeyStore"

    :goto_c
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getTimaStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    const-string v0, "SyntheticPasswordSecret"

    const-string v1, "Module initialized! [ Type : %s, Status : %d ]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkTimaStatus()Z
    .registers 2

    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getTimaStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    :cond_a
    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static computeSha256([B)[B
    .registers 4

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v2

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private deleteKey(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->checkTimaStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Device seems to be compromised!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEntryPassword()Ljava/security/KeyStore$ProtectionParameter;
    .registers 3

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    const-string v1, "DEFAULT_PASSWORD"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/locksettings/SyntheticPasswordSecret;
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->sInstance:Lcom/android/server/locksettings/SyntheticPasswordSecret;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->sInstance:Lcom/android/server/locksettings/SyntheticPasswordSecret;

    :cond_b
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->sInstance:Lcom/android/server/locksettings/SyntheticPasswordSecret;

    return-object v0
.end method

.method private getKey(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->checkTimaStatus()Z

    move-result v0

    if-eqz v0, :cond_2c

    nop

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getEntryPassword()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to find key entry"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Device seems to be compromised!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreType:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_a} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_d

    nop

    nop

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "Unexpected exception while load TKS instance"

    invoke-static {v1, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_14
    move-exception v0

    const-string v1, "Unexpected exception while get TKS instance"

    invoke-static {v1, v0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private getTimaStatus()I
    .registers 7

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    const-string/jumbo v3, "tima"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v3

    if-eqz v3, :cond_22

    sget-boolean v4, Lcom/android/server/locksettings/SyntheticPasswordSecret;->DEVICE_SUPPORT_FIPS_TIMA:Z

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v4

    goto :goto_20

    :cond_1c
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v4

    :goto_20
    move v0, v4

    goto :goto_32

    :cond_22
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed to get tima service"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2c
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v3

    goto :goto_3e

    :catch_2c
    move-exception v3

    :try_start_2d
    const-string v4, "Unexpected exception while check tima status"

    invoke-static {v4, v3}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2a

    :goto_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v0, :cond_3d

    const-string v3, "Device seems to be compromised!"

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_3d
    return v0

    :goto_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private importKey(Ljava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->checkTimaStatus()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, ""

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getEntryPassword()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Device seems to be compromised!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateAndSaveSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->generateSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->saveSecretKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public generateSecretKey()Ljavax/crypto/SecretKey;
    .registers 4

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->getKey(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_15
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_1b
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_19
    move-exception v2

    goto :goto_3f

    :catch_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    :catch_20
    move-exception v2

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_19

    :cond_24
    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v2, "Unexpected failure while get secret [ Status : %d ]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeSecretKey(Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->deleteKey(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_d
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    :goto_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catchall_b
    move-exception v2

    goto :goto_28

    :catch_d
    move-exception v2

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "Unexpected failure while remove secret [ Status : %d ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_b

    goto :goto_7

    :goto_27
    return-void

    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public saveSecretKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    :try_start_5
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordSecret;->importKey(Ljava/lang/String;[B)V
    :try_end_c
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_c} :catch_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_13
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_11
    move-exception v2

    goto :goto_35

    :catch_13
    move-exception v3

    :try_start_14
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    :catch_18
    move-exception v3

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_11

    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "Unexpected failure while save secret [ Status : %d ]"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/locksettings/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v5

    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
