.class public Lcom/android/server/KeyProtector;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KeyProtector$KeyStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_IV_LEN:I = 0xc

.field private static final DEFAULT_KEY_LEN:I = 0x20

.field private static final FILE_PREFIX:Ljava/lang/String; = "ENCRYPTED_KEY_"

.field public static final LEGACY_KNOXCORE_UID:I = 0x4e2

.field private static final TAG:Ljava/lang/String; = "KeyProtector"

.field private static sInstance:Lcom/android/server/KeyProtector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([B)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/KeyProtector;->clear([B)V

    return-void
.end method

.method private static attach(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method private static clear([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private deleteFile(ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENCRYPTED_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile - File path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4b

    const-string v2, "KeyProtector"

    const-string v3, "Null path..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_4b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    :try_start_56
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_5c

    move v0, v3

    goto :goto_60

    :catch_5c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    :goto_60
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/KeyProtector;
    .registers 2

    const-class v0, Lcom/android/server/KeyProtector;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/KeyProtector;

    invoke-direct {v1}, Lcom/android/server/KeyProtector;-><init>()V

    sput-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    :cond_e
    sget-object v1, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKeyStore()Lcom/android/server/KeyProtector$KeyStore;
    .registers 3

    new-instance v0, Lcom/android/server/KeyProtector$KeyStore;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/android/server/KeyProtector$KeyStore;-><init>(I)V

    return-object v0
.end method

.method private readFile(ILjava/lang/String;)[B
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ENCRYPTED_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFile - File path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4b

    const-string v1, "KeyProtector"

    const-string v2, "Null path..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_4b
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_87

    :try_start_58
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v5, v4, [B

    move-object v1, v5

    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_68} :catch_78
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_71
    .catchall {:try_start_58 .. :try_end_68} :catchall_6f

    nop

    :goto_69
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_87

    :catch_6d
    move-exception v4

    goto :goto_87

    :catchall_6f
    move-exception v4

    goto :goto_7f

    :catch_71
    move-exception v4

    :try_start_72
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_87

    goto :goto_69

    :catch_78
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_6f

    if-eqz v2, :cond_87

    goto :goto_69

    :goto_7f
    if-eqz v2, :cond_86

    :try_start_81
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_86

    :catch_85
    move-exception v5

    :cond_86
    :goto_86
    throw v4

    :cond_87
    :goto_87
    return-object v1
.end method

.method private writeToFile(ILjava/lang/String;[B)Z
    .registers 10

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ENCRYPTED_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeToFile - File path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4c

    const-string v2, "KeyProtector"

    const-string v3, "Null path..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_4c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_52
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-virtual {v3, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5e} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5e} :catch_68
    .catchall {:try_start_52 .. :try_end_5e} :catchall_66

    const/4 v0, 0x1

    nop

    :goto_60
    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_76

    :catch_64
    move-exception v4

    goto :goto_76

    :catchall_66
    move-exception v4

    goto :goto_77

    :catch_68
    move-exception v4

    :try_start_69
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_76

    goto :goto_60

    :catch_6f
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_66

    if-eqz v3, :cond_76

    goto :goto_60

    :cond_76
    :goto_76
    return v0

    :goto_77
    if-eqz v3, :cond_7e

    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v5

    :cond_7e
    :goto_7e
    throw v4
.end method


# virtual methods
.method public decryptFast([B[B)[B
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_43

    if-nez p2, :cond_b

    goto :goto_43

    :cond_b
    nop

    const/4 v1, 0x0

    const/16 v2, 0xc

    :try_start_f
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v7, 0x80

    invoke-direct {v6, v7, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v4, v5, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_36

    move-object v0, v5

    goto :goto_42

    :catch_36
    move-exception v1

    const-string v2, "KeyProtector"

    const-string/jumbo v3, "fast decryption - Unexpected error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    return-object v0

    :cond_43
    :goto_43
    const-string v1, "KeyProtector"

    const-string/jumbo v2, "fast decryption - Only supported for 32-bytes key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 10

    nop

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    move v0, v2

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v1

    :goto_25
    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->deleteFile(ILjava/lang/String;)Z

    move-result v3

    if-nez v0, :cond_45

    const-string v4, "KeyProtector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete key with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    if-nez v3, :cond_61

    const-string v4, "KeyProtector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected failure while delete file with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    if-eqz v0, :cond_66

    if-eqz v3, :cond_66

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    return v1
.end method

.method public encryptFast([B[B)[B
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_9

    goto :goto_57

    :cond_9
    move-object v1, v0

    :try_start_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_4a

    :try_start_f
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_32} :catch_39
    .catchall {:try_start_f .. :try_end_32} :catchall_37

    move-object v1, v7

    :try_start_33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_4a

    goto :goto_56

    :catchall_37
    move-exception v3

    goto :goto_3b

    :catch_39
    move-exception v0

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    :goto_3b
    if-eqz v0, :cond_46

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_4a

    goto :goto_49

    :catch_41
    move-exception v4

    :try_start_42
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_49

    :cond_46
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_49
    throw v3
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception v0

    const-string v2, "KeyProtector"

    const-string/jumbo v3, "fast encryption - Unexpected error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_56
    return-object v1

    :cond_57
    :goto_57
    const-string v1, "KeyProtector"

    const-string/jumbo v2, "fast encryption - Only supported for 32-bytes key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public exists(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    nop

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v1

    move v0, v1

    if-eqz v1, :cond_30

    const-string v1, "KeyProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key exists in the KeyStore. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v0
.end method

.method public migrateFromTimaKeyStore(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    :try_start_5
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "KeyProtector"

    const-string v3, "Error while migrating from TIMA KeyStore..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_17
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1c

    const/4 v0, 0x1

    :goto_1b
    goto :goto_20

    :catch_1c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return v0
.end method

.method public protect([BLjava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_a2

    if-nez p2, :cond_9

    goto/16 :goto_a2

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->setSecretKey(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v3

    const-string v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    move-object v0, v6

    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e} :catch_96

    move-object v1, v6

    nop

    nop

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v1, :cond_3a

    move v4, v2

    goto :goto_3b

    :cond_3a
    array-length v4, v1

    :goto_3b
    const/16 v6, 0xc

    if-eq v4, v6, :cond_5b

    :try_start_3f
    const-string v5, "KeyProtector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid iv length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v2

    :catch_59
    move-exception v5

    goto :goto_7f

    :cond_5b
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_61} :catch_59

    nop

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, p3, p2, v6}, Lcom/android/server/KeyProtector;->writeToFile(ILjava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_77

    const-string v5, "KeyProtector"

    const-string v6, "Failed to write into file..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v2

    :cond_77
    const-string v2, "KeyProtector"

    const-string v6, "Successfully wrote into file!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_7f
    nop

    const-string v6, "KeyProtector"

    const-string v7, "Failed to concatenate byte arrays"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    return v2

    :cond_8e
    :try_start_8e
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unexpected failure while set key"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_96} :catch_96

    :catch_96
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    return v2

    :cond_a2
    :goto_a2
    const-string v3, "KeyProtector"

    const-string v4, "Wrong input parameter..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public release(Ljava/lang/String;I)[B
    .registers 12

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_46

    const/4 v2, 0x0

    const/16 v3, 0xc

    :try_start_a
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_39

    nop

    nop

    :try_start_15
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v4

    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_34

    move-object v0, v6

    goto :goto_46

    :catch_34
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :catch_39
    move-exception v2

    const-string v3, "KeyProtector"

    const-string v4, "Failed in copying array..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3

    :cond_46
    :goto_46
    return-object v0
.end method

.method public releaseMinor(Ljava/lang/String;I)[B
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_3d

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    invoke-virtual {v4, p2, p1}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_34

    const-string v5, "KeyProtector"

    const-string v6, "Found key from TIMA KeyStore."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "KeyProtector"

    const-string v6, "Error while migrating from TIMA KeyStore..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_30
    invoke-virtual {v4, p2, p1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    goto :goto_39

    :cond_34
    const-string v5, "Failed to get key from TIMA KeyStore."

    invoke-static {v5}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_3e

    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_3d
    return-object v0

    :catchall_3e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
