.class public Lcom/android/server/locksettings/EncryptedPasswordManager;
.super Ljava/lang/Object;
.source "EncryptedPasswordManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final HDR_CHARS:[C

.field private static final HEADER:Ljava/lang/String;

.field private static final RSA_KEYSIZE_1024:I = 0x400

.field private static final RSA_KEYSIZE_2048:I = 0x800

.field private static final RSA_KEYSIZE_512:I = 0x200

.field private static final RSA_KEYSIZE_768:I = 0x300

.field private static final SCHEME_OTE:I = 0x1

.field private static final SCHEME_RSA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EncryptedPasswordManager"

.field private static final TARGET_DISKENCRYPT:I = 0x2

.field private static final TARGET_KEYSTORE:I = 0x1

.field private static final TARGET_MAX:I = 0x3

.field private static final TARGET_RESERVED:I = 0x3


# instance fields
.field private mKeysize:I

.field private mPublicKey:Ljava/security/PublicKey;

.field private mScheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->HEADER:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->DEBUG:Z

    return-void

    :array_22
    .array-data 2
        0xdds
        0xdes
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    const/16 v0, 0x200

    iput v0, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mKeysize:I

    return-void
.end method

.method private encodeToHex([B)Ljava/lang/String;
    .registers 10

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_28

    aget-byte v5, p1, v4

    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v2

    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v7, v5, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_28
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :array_2e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private loadKeymasterPublicKey()Z
    .registers 4

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mKeysize:I

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mPublicKey:Ljava/security/PublicKey;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    const/4 v2, 0x1

    return v2

    :catch_17
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encryptPassword([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    iget v2, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_ee

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v4, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mKeysize:I

    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, -0xa

    if-gt v2, v4, :cond_ce

    iget v2, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mKeysize:I

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :try_start_31
    new-array v5, v3, [B

    iget v6, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    new-array v6, v3, [B

    and-int/lit16 v8, v4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const-string v7, "RSA/ECB/PKCS1PADDING"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v7, v3, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    move-object v2, v3

    sget-object v3, Lcom/android/server/locksettings/EncryptedPasswordManager;->HEADER:Ljava/lang/String;

    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encodeToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encodeToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encodeToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_96} :catch_98

    move-object v1, v3

    goto :goto_ee

    :catch_98
    move-exception v3

    const-string v5, "EncryptedPasswordManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDF: encryption operation failed - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EncryptedPasswordManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MDF: password length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_ce
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDF: Password length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is too long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ee
    :goto_ee
    return-object v1
.end method

.method public encryptPassword([B)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v4, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aget-byte v6, v3, v5

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    sget-object v6, Lcom/android/server/locksettings/EncryptedPasswordManager;->HDR_CHARS:[C

    const/4 v7, 0x1

    aget-char v6, v6, v7

    int-to-byte v6, v6

    aget-byte v7, v3, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    nop

    :goto_2f
    move v4, v5

    if-ge v4, v1, :cond_42

    add-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    const/4 v6, 0x2

    add-int/2addr v6, v4

    aget-byte v6, v3, v6

    aget-byte v7, p1, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x1

    goto :goto_2f

    :cond_42
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/EncryptedPasswordManager;->encodeToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/locksettings/EncryptedPasswordManager;->loadKeymasterPublicKey()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    iput v2, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    goto :goto_d

    :cond_b
    iput v1, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    :goto_d
    sget-boolean v0, Lcom/android/server/locksettings/EncryptedPasswordManager;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "EncryptedPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EncryptedPasswordManager is initialized with scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget v0, p0, Lcom/android/server/locksettings/EncryptedPasswordManager;->mScheme:I

    if-ne v0, v2, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method
