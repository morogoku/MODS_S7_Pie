.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRandom:Ljava/util/Random;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-void
.end method

.method public static convertDerToPem([B)[B
    .registers 6

    const-string v0, "CertificateUtil"

    const-string v1, "Convert DER to PEM"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    const-string v4, "CERTIFICATE"

    invoke-direct {v3, v4, p0}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_2a

    return-object v3

    :catch_2a
    move-exception v0

    const-string v1, "CertificateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception converting DER to PEM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static convertPemToX509([B)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3a

    :try_start_7
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_32
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_b} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v0, v1

    goto :goto_3a

    :catch_d
    move-exception v1

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :catch_29
    move-exception v1

    const-string v2, "CertificateUtil"

    const-string v3, "Could not convert certificate."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :catch_32
    move-exception v1

    const-string v2, "CertificateUtil"

    const-string v3, "Could not convert certificate."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    nop

    :goto_3b
    if-nez v0, :cond_4a

    const-string v1, "CertificateUtil"

    const-string v2, "Could not convert any certificate."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_4a
    return-object v0
.end method

.method public static convertStoreTypeToSystemUidAsUser(II)I
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_b

    const v1, 0x186a0

    mul-int/2addr v1, p1

    add-int/lit16 v0, v1, 0x3e8

    goto :goto_10

    :cond_b
    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/16 v0, 0x3f2

    :cond_10
    :goto_10
    return v0
.end method

.method public static convertStoreTypeToUid(I)I
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_6

    const/4 v0, -0x1

    goto :goto_b

    :cond_6
    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    const/16 v0, 0x3f2

    :cond_b
    :goto_b
    return v0
.end method

.method public static convertToX509List(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_41

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :try_start_e
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_38
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_12} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v1

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :catch_2f
    move-exception v1

    const-string v2, "CertificateUtil"

    const-string v3, "Could not convert certificate."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :catch_38
    move-exception v1

    const-string v2, "CertificateUtil"

    const-string v3, "Could not convert certificate."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    nop

    :cond_41
    :goto_41
    const/4 v0, 0x0

    return-object v0
.end method

.method public static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .registers 6

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_18
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_c} :catch_f

    move-object v0, v2

    nop

    return-object v0

    :catch_f
    move-exception v2

    const-string v3, "CertificateUtil"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_18
    move-exception v2

    const-string v3, "CertificateUtil"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private extractPkcs12([BLjava/lang/String;I)Z
    .registers 11

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    const-string v1, "PKCS12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_2b

    return v0

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v1, v4, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    instance-of v6, v5, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v6, :cond_4d

    move-object v6, v5

    check-cast v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {p0, v6, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z

    move-result v6

    return v6

    :cond_4d
    goto :goto_55

    :cond_4e
    const-string v5, "CertificateUtil"

    const-string v6, "Skipping non-key entry"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_55} :catch_57

    :goto_55
    goto :goto_2b

    :cond_56
    goto :goto_6f

    :catch_57
    move-exception v1

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extractPkcs12(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6f
    return v0
.end method

.method private installCaCerts(Ljava/lang/String;II)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x1

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_55

    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3f2

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_36

    and-int/2addr v0, v4

    goto :goto_35

    :cond_33
    and-int/lit8 v0, v0, 0x0

    :goto_35
    goto :goto_3f

    :catch_36
    move-exception v2

    const/4 v0, 0x0

    const-string v4, "CertificateUtil"

    const-string v5, "Error installing CA Certificate for WIFI keystore: "

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3f
    const-string v2, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CaCerts put state for wifi keystore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_88

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    move-result-object v4

    if-eqz v4, :cond_70

    const-string v5, "CACERT_"

    invoke-virtual {v2, p1, v5, v4, v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_72

    :cond_70
    and-int/lit8 v0, v0, 0x0

    :goto_72
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaCerts put state for vpn and apps keystore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_127

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ce

    nop

    :try_start_ae
    new-array v7, v1, [Ljava/security/cert/Certificate;

    aput-object v5, v7, v3

    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b6} :catch_b8

    move-object v6, v7

    goto :goto_c2

    :catch_b8
    move-exception v7

    const-string v8, "CertificateUtil"

    const-string v9, "Error converting certificate to PEM: "

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    and-int/lit8 v0, v0, 0x0

    :goto_c2
    if-eqz v6, :cond_ce

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_cc

    move v8, v1

    goto :goto_cd

    :cond_cc
    move v8, v3

    :goto_cd
    and-int/2addr v0, v8

    :cond_ce
    goto :goto_92

    :cond_cf
    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_111

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_110

    move-object v7, v6

    :try_start_f0
    new-array v8, v1, [Ljava/security/cert/Certificate;

    aput-object v5, v8, v3

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f8} :catch_fa

    move-object v7, v8

    goto :goto_104

    :catch_fa
    move-exception v8

    const-string v9, "CertificateUtil"

    const-string v10, "Error converting certificate to PEM: "

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    and-int/lit8 v0, v0, 0x0

    :goto_104
    if-eqz v7, :cond_110

    invoke-virtual {v2, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10e

    move v9, v1

    goto :goto_10f

    :cond_10e
    move v9, v3

    :goto_10f
    and-int/2addr v0, v9

    :cond_110
    goto :goto_d5

    :cond_111
    const-string v1, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaCerts put state for default keystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    const-string v1, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaCerts put state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    return v0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "certificate_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c1

    const/4 v1, 0x0

    :try_start_c
    invoke-interface {v0, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    move v5, v1

    :goto_1e
    if-ge v5, v4, :cond_30

    aget-object v6, v2, v5

    new-instance v7, Lcom/samsung/android/knox/keystore/CertificateInfo;

    move-object v8, v6

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_30
    invoke-interface {v0, v3, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4a

    const-string v5, "CertificateUtil"

    const-string v6, "certificate failed during validation"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "installer_module"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6, v1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_48} :catch_54
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_48} :catch_4b
    .catchall {:try_start_c .. :try_end_48} :catchall_c1

    monitor-exit p0

    return v1

    :cond_4a
    :goto_4a
    goto :goto_5d

    :catch_4b
    move-exception v2

    :try_start_4c
    const-string v3, "CertificateUtil"

    const-string v4, "Certificate policy not found"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catch_54
    move-exception v2

    const-string v3, "CertificateUtil"

    const-string v4, "Failed talking to certificate policy"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :goto_5d
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    const-string v3, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# certs extracted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    array-length v4, v2

    :goto_8f
    if-ge v1, v4, :cond_a2

    aget-object v5, v2, v1

    move-object v6, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_a2
    const-string v1, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# ca certs extracted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_4c .. :try_end_be} :catchall_c1

    monitor-exit p0

    const/4 v1, 0x1

    return v1

    :catchall_c1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private installUserCert(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_50

    :try_start_c
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/security/cert/Certificate;

    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v6, v5, v3

    invoke-static {v5}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v5

    const/16 v6, 0x3f2

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_31

    and-int/2addr v0, v2

    goto :goto_3a

    :catch_31
    move-exception v2

    const/4 v0, 0x0

    const-string v4, "CertificateUtil"

    const-string v5, "Error installing User Certificate for WIFI keystore: "

    invoke-static {v4, v5, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    const-string v2, "CertificateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserCert put state for wifi keystore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_90

    const/4 v2, 0x0

    :try_start_55
    new-array v1, v1, [Ljava/security/cert/Certificate;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v4, v1, v3

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_61

    move-object v2, v1

    goto :goto_6b

    :catch_61
    move-exception v1

    const-string v3, "CertificateUtil"

    const-string v4, "Error converting certificate to PEM: "

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    and-int/lit8 v0, v0, 0x0

    :goto_6b
    if-eqz v2, :cond_7a

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string v5, "USRCERT_"

    const/4 v7, 0x1

    move-object v4, p1

    move-object v6, v2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BII)Z

    move-result v1

    and-int/2addr v0, v1

    :cond_7a
    const-string v1, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserCert put state for vpn and apps keystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_a6

    const-string v1, ".crt"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4

    const-string v1, "CERT"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    :cond_a4
    and-int/lit8 v0, v0, 0x0

    :cond_a6
    const-string v1, "CertificateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserCert put state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private installUserKey(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 13

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x1

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_62

    const/4 v1, 0x1

    :try_start_c
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "CertificateUtil"

    const-string v3, "Saving private key with FLAG_NONE for WIFI"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_22
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_41} :catch_43

    and-int/2addr v0, v2

    goto :goto_4c

    :catch_43
    move-exception v1

    const/4 v0, 0x0

    const-string v2, "CertificateUtil"

    const-string v3, "Error installing User Key for WIFI keystore: "

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4c
    const-string v1, "CertificateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserPKey put state for wifi keystore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_8e

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string v4, "USRPKEY_"

    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, p1

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BII)Z

    move-result v1

    and-int/2addr v0, v1

    const-string v1, "CertificateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_a4

    const-string v1, ".crt"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "CERT"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    :cond_a2
    and-int/lit8 v0, v0, 0x0

    :cond_a4
    return v0
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "2.5.29.19"

    invoke-virtual {p1, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v5
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    return v5

    :catch_2d
    move-exception v1

    return v0
.end method

.method private parseCert([BI)Z
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    const-string v4, "certificate_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v4
    :try_end_1d
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1d} :catch_76

    :try_start_1d
    invoke-interface {v4, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v5

    if-eqz v5, :cond_42

    new-instance v5, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v5, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    nop

    invoke-interface {v4, v5, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_42

    const-string v7, "CertificateUtil"

    const-string v8, "certificate failed during validation"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "installer_module"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8, v0, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_41} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_41} :catch_43
    .catch Ljava/security/cert/CertificateException; {:try_start_1d .. :try_end_41} :catch_76

    return v0

    :cond_42
    :goto_42
    goto :goto_55

    :catch_43
    move-exception v0

    :try_start_44
    const-string v5, "CertificateUtil"

    const-string v6, "Certificate policy not found"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :catch_4c
    move-exception v0

    const-string v5, "CertificateUtil"

    const-string v6, "Failed talking to certificate policy"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :goto_55
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "CertificateUtil"

    const-string/jumbo v5, "got a CA cert"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_75

    :cond_6a
    const-string v0, "CertificateUtil"

    const-string/jumbo v5, "got a user cert"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_74
    .catch Ljava/security/cert/CertificateException; {:try_start_44 .. :try_end_74} :catch_76

    const/4 v0, 0x1

    :goto_75
    goto :goto_8f

    :catch_76
    move-exception v0

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseCert(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8f
    return v0
.end method

.method public static splitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const-string v0, "CACERT_"

    const-string v1, "USRCERT_"

    const-string v2, "USRPKEY_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_2b

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    return-object v1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getAllUsersId()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method public getAllUsersInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return-object v2

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRandomInt()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    .registers 11

    const/4 v0, 0x1

    const-string v1, ".crt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "CERT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2c

    :cond_12
    const-string v1, ".p12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "PKCS12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_26

    :cond_23
    and-int/lit8 v0, v0, 0x0

    goto :goto_31

    :cond_26
    :goto_26
    invoke-direct {p0, p2, p4, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_31

    :cond_2c
    :goto_2c
    invoke-direct {p0, p2, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v1

    and-int/2addr v0, v1

    :goto_31
    if-eqz v0, :cond_4c

    :try_start_33
    invoke-direct {p0, p3, p5, p6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installCaCerts(Ljava/lang/String;II)Z

    move-result v1

    and-int/2addr v0, v1

    invoke-direct {p0, p3, p5, p6, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installUserCert(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    invoke-direct {p0, p3, p5, p6, p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installUserKey(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_43

    and-int/2addr v0, v1

    goto :goto_4c

    :catch_43
    move-exception v1

    const-string v2, "CertificateUtil"

    const-string/jumbo v3, "install(): "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return v0
.end method

.method public installAsUserInternal([BLjava/lang/String;Ljava/lang/String;II)I
    .registers 11

    const/4 v0, 0x0

    const-string v1, "CERT"

    if-nez p3, :cond_18

    invoke-direct {p0, p1, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, -0x2

    const-string v2, ""

    invoke-direct {p0, p1, v2, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v0, 0x0

    const-string v1, "PKCS12"

    goto :goto_22

    :cond_18
    invoke-direct {p0, p1, p3, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v1, "PKCS12"

    goto :goto_22

    :cond_21
    const/4 v0, -0x3

    :cond_22
    :goto_22
    if-nez v0, :cond_43

    :try_start_24
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/enterprise/utils/CertificateUtil;->installCaCerts(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v0, -0x4

    :cond_2b
    invoke-direct {p0, p2, p4, p5, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installUserCert(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const/4 v0, -0x5

    :cond_32
    invoke-direct {p0, p2, p4, p5, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->installUserKey(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_36} :catch_3a

    if-nez v2, :cond_39

    const/4 v0, -0x6

    :cond_39
    goto :goto_43

    :catch_3a
    move-exception v2

    const-string v3, "CertificateUtil"

    const-string/jumbo v4, "install(): "

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :goto_43
    return v0
.end method

.method public isGuestUser(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public sendIntentToSettings(IZ)V
    .registers 14

    if-eqz p2, :cond_89

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_2f

    :cond_2e
    move v4, p1

    :goto_2f
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v5, :cond_86

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_86

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_85

    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "com.samsung.android.knox.permission.KNOX_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v8, v3, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_85
    goto :goto_57

    :cond_86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_89
    return-void
.end method
