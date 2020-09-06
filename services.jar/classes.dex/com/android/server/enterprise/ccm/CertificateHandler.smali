.class public Lcom/android/server/enterprise/ccm/CertificateHandler;
.super Ljava/lang/Object;
.source "CertificateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateHandler"


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

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    move v4, v0

    :goto_e
    if-ge v4, v3, :cond_20

    aget-object v5, v1, v4

    new-instance v6, Landroid/app/enterprise/CertificateInfo;

    move-object v7, v5

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-direct {v6, v7}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_20
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    array-length v5, v3

    move v6, v0

    :goto_3c
    if-ge v6, v5, :cond_4f

    aget-object v7, v3, v6

    move-object v8, v7

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_55
    .catchall {:try_start_2 .. :try_end_4c} :catchall_53

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_4f
    nop

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_53
    move-exception p1

    goto :goto_73

    :catch_55
    move-exception v1

    :try_start_56
    const-string v2, "CertificateHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installFrom exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_56 .. :try_end_71} :catchall_53

    monitor-exit p0

    return v0

    :goto_73
    monitor-exit p0

    throw p1
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


# virtual methods
.method public extractPkcs12([BLjava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p2, :cond_c

    const-string v1, "CertificateHandler"

    const-string/jumbo v2, "extractPkcs12() password is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    move v2, v0

    :goto_16
    const/4 v3, 0x5

    if-ge v2, v3, :cond_f2

    const-string v3, "CertificateHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extractPkcs12() try "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CertificateHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extractPkcs12() data length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_48
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v4, "CertificateHandler"

    const-string/jumbo v5, "extractPkcs12() keystore.aliases()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_6d

    return v0

    :cond_6d
    const-string v5, "CertificateHandler"

    const-string/jumbo v6, "extractPkcs12() aliases.hasMoreElements()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_cb

    const-string v5, "CertificateHandler"

    const-string/jumbo v6, "extractPkcs12()  aliases.nextElement()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_94

    const-string v6, "CertificateHandler"

    const-string/jumbo v7, "extractPkcs12() alias is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_94
    const-string v6, "CertificateHandler"

    const-string/jumbo v7, "extractPkcs12()  keystore.isKeyEntry(alias)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ca

    const-string v6, "CertificateHandler"

    const-string/jumbo v7, "extractPkcs12()  keystore.getEntry()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v6

    const-string v7, "CertificateHandler"

    const-string/jumbo v8, "extractPkcs12() entry instanceof PrivateKeyEntry"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v7, v6, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_ca

    const-string v7, "CertificateHandler"

    const-string/jumbo v8, "extractPkcs12() installFrom((PrivateKeyEntry) entry)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    check-cast v7, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/ccm/CertificateHandler;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z

    move-result v7
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_c9} :catch_cc

    return v7

    :cond_ca
    goto :goto_75

    :cond_cb
    goto :goto_ee

    :catch_cc
    move-exception v3

    const-string v4, "CertificateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extractPkcs12 exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x5

    :try_start_e6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_e9} :catch_ea
    .catch Ljava/lang/InterruptedException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_ee

    :catch_ea
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ee
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    :cond_f2
    return v0
.end method

.method public getFormattedPrivateKey()[B
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPemCertificateChain()[B
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_7
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1a
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    move-object v0, v3

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_3a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3e} :catch_5d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_3e} :catch_40

    move-object v1, v3

    goto :goto_79

    :catch_40
    move-exception v3

    const-string v4, "CertificateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPemCertificateChain exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_5d
    move-exception v3

    const-string v4, "CertificateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPemCertificateChain exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    nop

    :goto_7a
    return-object v1
.end method

.method public isPrivateKeyExists()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
