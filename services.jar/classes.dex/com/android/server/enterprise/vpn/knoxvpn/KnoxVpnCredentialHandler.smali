.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field public static final TIMA_DEPRECATED:I = 0x1

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mTimaService:Landroid/service/tima/ITimaService;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    const-string v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    const-string v0, "/data/system/vpn/key"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    return-void
.end method

.method public static clearKey(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p1, v1

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz p1, :cond_37

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_37
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    nop

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->generateSalt()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "HmacSHA256"

    const-string v4, "AndroidOpenSSL"

    invoke-static {v3, v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_25

    move-object v0, v4

    goto :goto_34

    :catch_25
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    const-string v2, "KnoxVpnCredentialHandler"

    const-string v3, "Error inside generateCMK "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-object v0
.end method

.method private generateSalt()[B
    .registers 3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_11

    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_11
    return-object v1
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v1

    :try_start_12
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1b
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_1b} :catch_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_1d

    nop

    return-object v0

    :catch_1d
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load TKS instance..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxVpnCredentialHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :catch_35
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get TKS instance..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KnoxVpnCredentialHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .registers 5

    const-string v0, "N/A"

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7ec2e91

    if-eq v2, v3, :cond_1d

    const v3, 0xc535

    if-eq v2, v3, :cond_13

    goto :goto_27

    :cond_13
    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    goto :goto_28

    :cond_1d
    const-string v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, -0x1

    :goto_28
    packed-switch v1, :pswitch_data_56

    goto :goto_32

    :pswitch_2c
    const-string v0, "FipsTimaKeyStore"

    goto :goto_32

    :pswitch_2f
    const-string v0, "TIMAKeyStore"

    nop

    :goto_32
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_11

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-object v0
.end method

.method private getTimaStatus()I
    .registers 7

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ec2e91

    const/4 v5, 0x1

    if-eq v3, v4, :cond_40

    const v4, 0xc174

    if-eq v3, v4, :cond_36

    const v4, 0xc535

    if-eq v3, v4, :cond_2c

    goto :goto_49

    :cond_2c
    const-string v3, "3.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    move v2, v5

    goto :goto_49

    :cond_36
    const-string v3, "2.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v2, 0x0

    goto :goto_49

    :cond_40
    const-string v3, "FIPS3.0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v2, 0x2

    :cond_49
    :goto_49
    packed-switch v2, :pswitch_data_b8

    const-string v1, "KnoxVpnCredentialHandler"

    goto :goto_74

    :pswitch_4f
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v1

    move v0, v1

    goto :goto_9f

    :pswitch_59
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v1

    move v0, v1

    goto :goto_9f

    :pswitch_63
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    move v0, v1

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->keystoreShutdown()I

    goto :goto_9f

    :goto_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_8b} :catch_96
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_8b} :catch_8c

    goto :goto_9f

    :catch_8c
    move-exception v1

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    :catch_96
    move-exception v1

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    nop

    :goto_a0
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaStatus() - Tima Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_63
        :pswitch_59
        :pswitch_4f
    .end packed-switch
.end method

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p2, v1

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public static isKeyinStore(Ljava/lang/String;[B)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eqz v6, :cond_5c

    :try_start_14
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v8

    const-string v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_49

    const/4 v9, -0x1

    if-eq v7, v9, :cond_49

    invoke-interface {v6, v7}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v9

    move-object v1, v9

    if-eqz v1, :cond_49

    const/4 v9, 0x0

    aget-byte v10, v1, v9

    if-nez v10, :cond_49

    const/4 v10, 0x1

    invoke-static {v1, v10, v3, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v3, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_49
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4c} :catch_4f
    .catchall {:try_start_14 .. :try_end_4c} :catchall_4d

    goto :goto_53

    :catchall_4d
    move-exception v2

    goto :goto_58

    :catch_4f
    move-exception v2

    :try_start_50
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    :goto_53
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_58
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_5c
    return-object v0
.end method

.method public static setKey(Ljava/lang/String;[B)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p0, p1, v3, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_c

    const/4 v1, 0x1

    goto :goto_15

    :catch_c
    move-exception v0

    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "setKey Exception:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return v1
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_1f2

    packed-switch v3, :pswitch_data_1fa

    const-string v3, "KnoxVpnCredentialHandler"

    const-string v5, "Tima status is unknown"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    goto/16 :goto_aa

    :pswitch_23
    const-string v3, "KnoxVpnCredentialHandler"

    const-string v4, "TIMA Compromised"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_2a} :catch_196
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_169
    .catchall {:try_start_3 .. :try_end_2a} :catchall_167

    nop

    if-eqz v2, :cond_33

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_33

    :catch_31
    move-exception v3

    goto :goto_3e

    :cond_33
    :goto_33
    if-nez v1, :cond_56

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3d} :catch_31

    goto :goto_56

    :goto_3e
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_56
    :goto_56
    nop

    :goto_57
    return v0

    :pswitch_58
    :try_start_58
    const-string v3, "KnoxVpnCredentialHandler"

    const-string v5, "Tima have been deprecated"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :pswitch_60
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7ec2e91

    if-eq v6, v7, :cond_8b

    const v7, 0xc174

    if-eq v6, v7, :cond_81

    const v7, 0xc535

    if-eq v6, v7, :cond_77

    goto :goto_95

    :cond_77
    const-string v6, "3.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    const/4 v3, 0x1

    goto :goto_96

    :cond_81
    const-string v6, "2.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    move v3, v4

    goto :goto_96

    :cond_8b
    const-string v6, "FIPS3.0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    const/4 v3, 0x2

    goto :goto_96

    :cond_95
    :goto_95
    move v3, v5

    :goto_96
    packed-switch v3, :pswitch_data_206

    const-string v3, "KnoxVpnCredentialHandler"

    goto/16 :goto_133

    :pswitch_9d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    goto :goto_a9

    :pswitch_a3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    nop

    :goto_a9
    nop

    :goto_aa
    if-eqz p2, :cond_d4

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, ""

    invoke-direct {v3, p2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cc

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_c9

    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "An entry is already present, deleting it and updating the name"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_cc
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    invoke-virtual {v1, p1, v5, v4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_d3
    .catch Ljava/security/KeyStoreException; {:try_start_58 .. :try_end_d3} :catch_196
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_d3} :catch_169
    .catchall {:try_start_58 .. :try_end_d3} :catchall_167

    const/4 v0, 0x1

    :cond_d4
    if-eqz v2, :cond_dc

    :try_start_d6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_dc

    :catch_da
    move-exception v3

    goto :goto_e7

    :cond_dc
    :goto_dc
    if-nez v1, :cond_100

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e6} :catch_da

    goto :goto_100

    :goto_e7
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_ef
    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c3

    :cond_100
    :goto_100
    goto/16 :goto_1c3

    :pswitch_102
    :try_start_102
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsForTima20(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_106
    .catch Ljava/security/KeyStoreException; {:try_start_102 .. :try_end_106} :catch_196
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_106} :catch_169
    .catchall {:try_start_102 .. :try_end_106} :catchall_167

    if-eqz v2, :cond_10e

    :try_start_108
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_10e

    :catch_10c
    move-exception v4

    goto :goto_119

    :cond_10e
    :goto_10e
    if-nez v1, :cond_131

    const-string v4, "KnoxVpnCredentialHandler"

    const-string/jumbo v5, "storeCredentials :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_118} :catch_10c

    goto :goto_131

    :goto_119
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    :cond_131
    :goto_131
    nop

    :goto_132
    return v3

    :goto_133
    :try_start_133
    const-string/jumbo v4, "unknown TIMA Version"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catch Ljava/security/KeyStoreException; {:try_start_133 .. :try_end_139} :catch_196
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_139} :catch_169
    .catchall {:try_start_133 .. :try_end_139} :catchall_167

    nop

    if-eqz v2, :cond_142

    :try_start_13c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_142

    :catch_140
    move-exception v3

    goto :goto_14d

    :cond_142
    :goto_142
    if-nez v1, :cond_165

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14c} :catch_140

    goto :goto_165

    :goto_14d
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_166

    :cond_165
    :goto_165
    nop

    :goto_166
    return v0

    :catchall_167
    move-exception v3

    goto :goto_1c4

    :catch_169
    move-exception v3

    :try_start_16a
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "Exception occured while trying to store the info inside keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v4, :cond_178

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_178
    .catchall {:try_start_16a .. :try_end_178} :catchall_167

    :cond_178
    if-eqz v2, :cond_180

    :try_start_17a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_180

    :catch_17e
    move-exception v3

    goto :goto_18c

    :cond_180
    :goto_180
    if-nez v1, :cond_100

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_18a} :catch_17e

    goto/16 :goto_100

    :goto_18c
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_ef

    :catch_196
    move-exception v3

    :try_start_197
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v4, :cond_1a5

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_1a5
    .catchall {:try_start_197 .. :try_end_1a5} :catchall_167

    :cond_1a5
    if-eqz v2, :cond_1ad

    :try_start_1a7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1ad

    :catch_1ab
    move-exception v3

    goto :goto_1b9

    :cond_1ad
    :goto_1ad
    if-nez v1, :cond_100

    const-string v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "storeCredentials :: Null tima keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1b7} :catch_1ab

    goto/16 :goto_100

    :goto_1b9
    nop

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_ef

    :goto_1c3
    return v0

    :goto_1c4
    nop

    if-eqz v2, :cond_1cd

    :try_start_1c7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1cd

    :catch_1cb
    move-exception v4

    goto :goto_1d8

    :cond_1cd
    :goto_1cd
    if-nez v1, :cond_1f0

    const-string v4, "KnoxVpnCredentialHandler"

    const-string/jumbo v5, "storeCredentials :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1d7} :catch_1cb

    goto :goto_1f0

    :goto_1d8
    nop

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close input stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KnoxVpnCredentialHandler"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1f0
    :goto_1f0
    throw v3

    nop

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_60
        :pswitch_58
    .end packed-switch

    :pswitch_data_1fa
    .packed-switch 0x1000c
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_102
        :pswitch_a3
        :pswitch_9d
    .end packed-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .registers 12

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_4e

    :try_start_f
    invoke-interface {v0}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v5

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_32

    const/4 v6, -0x1

    if-eq v1, v6, :cond_32

    invoke-interface {v0, v1, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    :cond_32
    invoke-interface {v0}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_35} :catch_3d
    .catchall {:try_start_f .. :try_end_35} :catchall_3b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v4, 0x1

    return v4

    :catchall_3b
    move-exception v4

    goto :goto_4a

    :catch_3d
    move-exception v5

    :try_start_3e
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_45

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    :cond_45
    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_4e
    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "storeCredentialsForTima20 failed returning false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private updateTimaVersion()V
    .registers 4

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v0

    if-eqz v0, :cond_55

    :try_start_a
    const-string v0, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    if-eqz v0, :cond_23

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    goto :goto_32

    :cond_23
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "FIPS3.0"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    goto :goto_32

    :cond_2e
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_33

    :goto_32
    goto :goto_3c

    :catch_33
    move-exception v0

    const-string v1, "KnoxVpnCredentialHandler"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    const-string v0, "KnoxVpnCredentialHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v4

    packed-switch v4, :pswitch_data_288

    packed-switch v4, :pswitch_data_290

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "Tima status is unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    move-object v1, v4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_23} :catch_22a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_23} :catch_1fe
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_23} :catch_1d2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_17a
    .catchall {:try_start_6 .. :try_end_23} :catchall_177

    if-eqz v0, :cond_2b

    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_2b

    :catch_29
    move-exception v4

    goto :goto_35

    :cond_2b
    :goto_2b
    if-nez v1, :cond_4d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_29

    goto :goto_4d

    :goto_35
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4d
    :goto_4d
    nop

    :goto_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_52
    :try_start_52
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "TIMA Compromised"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/security/KeyStoreException; {:try_start_52 .. :try_end_59} :catch_22a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_52 .. :try_end_59} :catch_1fe
    .catch Ljava/security/cert/CertificateException; {:try_start_52 .. :try_end_59} :catch_1d2
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_17a
    .catchall {:try_start_52 .. :try_end_59} :catchall_177

    if-eqz v0, :cond_61

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_61

    :catch_5f
    move-exception v4

    goto :goto_6b

    :cond_61
    :goto_61
    if-nez v1, :cond_83

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6a} :catch_5f

    goto :goto_83

    :goto_6b
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_83
    :goto_83
    nop

    :goto_84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :pswitch_88
    :try_start_88
    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "Tima have been deprecated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    :pswitch_90
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7ec2e91

    if-eq v6, v7, :cond_bb

    const v7, 0xc174

    if-eq v6, v7, :cond_b1

    const v7, 0xc535

    if-eq v6, v7, :cond_a7

    goto :goto_c4

    :cond_a7
    const-string v6, "3.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    const/4 v5, 0x1

    goto :goto_c4

    :cond_b1
    const-string v6, "2.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    const/4 v5, 0x0

    goto :goto_c4

    :cond_bb
    const-string v6, "FIPS3.0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    const/4 v5, 0x2

    :cond_c4
    :goto_c4
    packed-switch v5, :pswitch_data_29c

    const-string v4, "KnoxVpnCredentialHandler"

    goto/16 :goto_142

    :pswitch_cb
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v1, v4

    goto :goto_d7

    :pswitch_d1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    move-object v1, v4

    nop

    :goto_d7
    nop

    :goto_d8
    if-eqz v1, :cond_e3

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e3

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/security/KeyStoreException; {:try_start_88 .. :try_end_e3} :catch_22a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_88 .. :try_end_e3} :catch_1fe
    .catch Ljava/security/cert/CertificateException; {:try_start_88 .. :try_end_e3} :catch_1d2
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_e3} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e3} :catch_17a
    .catchall {:try_start_88 .. :try_end_e3} :catchall_177

    :cond_e3
    if-eqz v0, :cond_eb

    :try_start_e5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_eb

    :catch_e9
    move-exception v4

    goto :goto_f5

    :cond_eb
    :goto_eb
    if-nez v1, :cond_10d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f4} :catch_e9

    goto :goto_10d

    :goto_f5
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_fd
    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    :cond_10d
    :goto_10d
    nop

    :goto_10e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_256

    :pswitch_113
    if-eqz v0, :cond_11b

    :try_start_115
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_11b

    :catch_119
    move-exception v4

    goto :goto_125

    :cond_11b
    :goto_11b
    if-nez v1, :cond_13d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_124} :catch_119

    goto :goto_13d

    :goto_125
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    :cond_13d
    :goto_13d
    nop

    :goto_13e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_142
    :try_start_142
    const-string/jumbo v5, "unknown TIMA Version"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Ljava/security/KeyStoreException; {:try_start_142 .. :try_end_148} :catch_22a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_142 .. :try_end_148} :catch_1fe
    .catch Ljava/security/cert/CertificateException; {:try_start_142 .. :try_end_148} :catch_1d2
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_148} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_148} :catch_17a
    .catchall {:try_start_142 .. :try_end_148} :catchall_177

    if-eqz v0, :cond_150

    :try_start_14a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_150

    :catch_14e
    move-exception v4

    goto :goto_15a

    :cond_150
    :goto_150
    if-nez v1, :cond_172

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_159} :catch_14e

    goto :goto_172

    :goto_15a
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_173

    :cond_172
    :goto_172
    nop

    :goto_173
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_177
    move-exception v4

    goto/16 :goto_257

    :catch_17a
    move-exception v4

    :try_start_17b
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_182

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_182
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "Exception occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catchall {:try_start_17b .. :try_end_189} :catchall_177

    if-eqz v0, :cond_191

    :try_start_18b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_191

    :catch_18f
    move-exception v4

    goto :goto_19c

    :cond_191
    :goto_191
    if-nez v1, :cond_10d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_19a} :catch_18f

    goto/16 :goto_10d

    :goto_19c
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_fd

    :catch_1a6
    move-exception v4

    :try_start_1a7
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_1ae

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ae
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "IOException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b5
    .catchall {:try_start_1a7 .. :try_end_1b5} :catchall_177

    if-eqz v0, :cond_1bd

    :try_start_1b7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1bd

    :catch_1bb
    move-exception v4

    goto :goto_1c8

    :cond_1bd
    :goto_1bd
    if-nez v1, :cond_10d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1c6} :catch_1bb

    goto/16 :goto_10d

    :goto_1c8
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_fd

    :catch_1d2
    move-exception v4

    :try_start_1d3
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_1da

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :cond_1da
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catchall {:try_start_1d3 .. :try_end_1e1} :catchall_177

    if-eqz v0, :cond_1e9

    :try_start_1e3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1e9

    :catch_1e7
    move-exception v4

    goto :goto_1f4

    :cond_1e9
    :goto_1e9
    if-nez v1, :cond_10d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1f2} :catch_1e7

    goto/16 :goto_10d

    :goto_1f4
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_fd

    :catch_1fe
    move-exception v4

    :try_start_1ff
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_206

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_206
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20d
    .catchall {:try_start_1ff .. :try_end_20d} :catchall_177

    if-eqz v0, :cond_215

    :try_start_20f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_215

    :catch_213
    move-exception v4

    goto :goto_220

    :cond_215
    :goto_215
    if-nez v1, :cond_10d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_20f .. :try_end_21e} :catch_213

    goto/16 :goto_10d

    :goto_220
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_fd

    :catch_22a
    move-exception v4

    :try_start_22b
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_232

    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V

    :cond_232
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_239
    .catchall {:try_start_22b .. :try_end_239} :catchall_177

    if-eqz v0, :cond_241

    :try_start_23b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_241

    :catch_23f
    move-exception v4

    goto :goto_24c

    :cond_241
    :goto_241
    if-nez v1, :cond_10d

    const-string v4, "KnoxVpnCredentialHandler"

    const-string v5, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24a
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_24a} :catch_23f

    goto/16 :goto_10d

    :goto_24c
    nop

    const-string v5, "KnoxVpnCredentialHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_fd

    :goto_256
    return-void

    :goto_257
    nop

    if-eqz v0, :cond_260

    :try_start_25a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_260

    :catch_25e
    move-exception v5

    goto :goto_26a

    :cond_260
    :goto_260
    if-nez v1, :cond_282

    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "deleteCredentialsFromKeystore :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_269
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_269} :catch_25e

    goto :goto_282

    :goto_26a
    nop

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close input stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KnoxVpnCredentialHandler"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_283

    :cond_282
    :goto_282
    nop

    :goto_283
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    nop

    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_90
        :pswitch_88
    .end packed-switch

    :pswitch_data_290
    .packed-switch 0x1000c
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_113
        :pswitch_d1
        :pswitch_cb
    .end packed-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "KnoxVpnCredentialHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_22
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_218

    packed-switch v5, :pswitch_data_220

    const-string v5, "KnoxVpnCredentialHandler"

    const-string v7, "Tima status is unknown"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    move-object v1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    goto/16 :goto_cc

    :pswitch_42
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "TIMA Comprimised"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/security/KeyStoreException; {:try_start_22 .. :try_end_49} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_49} :catch_17a
    .catchall {:try_start_22 .. :try_end_49} :catchall_177

    nop

    if-eqz v2, :cond_52

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_52

    :catch_50
    move-exception v5

    goto :goto_5d

    :cond_52
    :goto_52
    if-nez v1, :cond_75

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5c} :catch_50

    goto :goto_75

    :goto_5d
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_75
    :goto_75
    nop

    :goto_76
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :pswitch_7a
    :try_start_7a
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v7, "Tima have been deprecated"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :pswitch_82
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x7ec2e91

    if-eq v8, v9, :cond_ad

    const v9, 0xc174

    if-eq v8, v9, :cond_a3

    const v9, 0xc535

    if-eq v8, v9, :cond_99

    goto :goto_b7

    :cond_99
    const-string v8, "3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    const/4 v5, 0x1

    goto :goto_b8

    :cond_a3
    const-string v8, "2.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    move v5, v6

    goto :goto_b8

    :cond_ad
    const-string v8, "FIPS3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    const/4 v5, 0x2

    goto :goto_b8

    :cond_b7
    :goto_b7
    move v5, v7

    :goto_b8
    packed-switch v5, :pswitch_data_22c

    const-string v5, "KnoxVpnCredentialHandler"

    goto/16 :goto_140

    :pswitch_bf
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    move-object v1, v5

    goto :goto_cb

    :pswitch_c5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v5

    move-object v1, v5

    nop

    :goto_cb
    nop

    :goto_cc
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v5, :cond_ee

    invoke-virtual {v5}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    if-eqz v6, :cond_ee

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_ed
    .catch Ljava/security/KeyStoreException; {:try_start_7a .. :try_end_ed} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ed} :catch_17a
    .catchall {:try_start_7a .. :try_end_ed} :catchall_177

    move-object v0, v7

    :cond_ee
    if-eqz v2, :cond_f6

    :try_start_f0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_f6

    :catch_f4
    move-exception v5

    goto :goto_102

    :cond_f6
    :goto_f6
    if-nez v1, :cond_1df

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_100} :catch_f4

    goto/16 :goto_1df

    :goto_102
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1cf

    :pswitch_10c
    :try_start_10c
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_110
    .catch Ljava/security/KeyStoreException; {:try_start_10c .. :try_end_110} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_110} :catch_17a
    .catchall {:try_start_10c .. :try_end_110} :catchall_177

    if-eqz v2, :cond_118

    :try_start_112
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_118

    :catch_116
    move-exception v6

    goto :goto_123

    :cond_118
    :goto_118
    if-nez v1, :cond_13b

    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_122} :catch_116

    goto :goto_13b

    :goto_123
    nop

    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    :cond_13b
    :goto_13b
    nop

    :goto_13c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_140
    :try_start_140
    const-string/jumbo v6, "unknown TIMA Version"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/security/KeyStoreException; {:try_start_140 .. :try_end_146} :catch_1a5
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_146} :catch_17a
    .catchall {:try_start_140 .. :try_end_146} :catchall_177

    nop

    if-eqz v2, :cond_14f

    :try_start_149
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_14f

    :catch_14d
    move-exception v5

    goto :goto_15a

    :cond_14f
    :goto_14f
    if-nez v1, :cond_172

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_159} :catch_14d

    goto :goto_172

    :goto_15a
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_173

    :cond_172
    :goto_172
    nop

    :goto_173
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_177
    move-exception v5

    goto/16 :goto_1e5

    :catch_17a
    move-exception v5

    :try_start_17b
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_189

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_189
    .catchall {:try_start_17b .. :try_end_189} :catchall_177

    :cond_189
    if-eqz v2, :cond_191

    :try_start_18b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_191

    :catch_18f
    move-exception v5

    goto :goto_19c

    :cond_191
    :goto_191
    if-nez v1, :cond_1df

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_19b} :catch_18f

    goto :goto_1df

    :goto_19c
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1cf

    :catch_1a5
    move-exception v5

    :try_start_1a6
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_1b4

    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_1b4
    .catchall {:try_start_1a6 .. :try_end_1b4} :catchall_177

    :cond_1b4
    if-eqz v2, :cond_1bc

    :try_start_1b6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1bc

    :catch_1ba
    move-exception v5

    goto :goto_1c7

    :cond_1bc
    :goto_1bc
    if-nez v1, :cond_1df

    const-string v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1c6} :catch_1ba

    goto :goto_1df

    :goto_1c7
    nop

    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1cf
    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e0

    :cond_1df
    :goto_1df
    nop

    :goto_1e0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_1e5
    nop

    if-eqz v2, :cond_1ee

    :try_start_1e8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1ee

    :catch_1ec
    move-exception v6

    goto :goto_1f9

    :cond_1ee
    :goto_1ee
    if-nez v1, :cond_211

    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "retrieveEcryptFSKey :: Null tima keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1f8} :catch_1ec

    goto :goto_211

    :goto_1f9
    nop

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KnoxVpnCredentialHandler"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_212

    :cond_211
    :goto_211
    nop

    :goto_212
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    nop

    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7a
    .end packed-switch

    :pswitch_data_220
    .packed-switch 0x1000c
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_c5
        :pswitch_bf
    .end packed-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    if-eqz v3, :cond_34

    const-string v4, "N/A"

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_18
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result v4

    move v0, v4

    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_39

    :cond_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
