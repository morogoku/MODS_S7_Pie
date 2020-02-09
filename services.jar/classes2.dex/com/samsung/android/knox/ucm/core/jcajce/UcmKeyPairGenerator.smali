.class public Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "UcmKeyPairGenerator.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mKeyGenParamSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private mKeyPairGenSpec:Landroid/security/KeyPairGeneratorSpec;

.field private mKeySize:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method private static getDefaultSignatureAlgorithmForKeyType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "sha256WithRSA"

    return-object v0

    :cond_c
    const-string v0, "DSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo v0, "sha1WithDSA"

    return-object v0

    :cond_18
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "sha256WithECDSA"

    return-object v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 8

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eq v0, v1, :cond_85

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4c

    const-string v3, "bytearrayresponse"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    nop

    :cond_4c
    move-object v3, v4

    if-eqz v3, :cond_7d

    :try_start_4f
    iget-object v4, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_5e} :catch_74
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4f .. :try_end_5e} :catch_6b

    move-object v4, v5

    nop

    nop

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    new-instance v6, Ljava/security/KeyPair;

    invoke-direct {v6, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v6

    :catch_6b
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "keystore returned invalid key encoding"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_74
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t instantiate key generator"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_7d
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "generateKeyPair returns null byte arr"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call initialize with an android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_39

    instance-of v0, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    return-void

    :cond_1c
    instance-of v0, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    return-void

    :cond_30
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "params must be of type android.security.KeyPairGeneratorSpecor or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "must supply params of type android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
