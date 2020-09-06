.class public Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private UidoftheCert:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    if-eqz p0, :cond_70

    invoke-static {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;

    invoke-direct {v2, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_45

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyChainConnection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_68

    new-instance v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/security/IKeyChainService;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v2, v9, v10}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;)V

    return-object v8

    :cond_68
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private broadcastStorageChange()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCEPCaller()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v0, :cond_16

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    return v2

    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_15

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_15
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    if-nez v2, :cond_16

    return v0

    :cond_16
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    return v0

    :cond_25
    const/4 v4, 0x0

    if-nez v4, :cond_29

    return v0

    :cond_29
    invoke-static {v4}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v5
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e

    return v5

    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "System Service"

    const-string v3, "Failed to parse key data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private makeUidWithUserID(II)I
    .registers 4

    if-gez p1, :cond_3

    return p2

    :cond_3
    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_c

    return v5

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    sget-boolean v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_2a

    const-string v6, "SCEPKeystoreProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteCertificateEntry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/16 v6, 0x3e8

    if-nez p2, :cond_43

    const/16 v0, 0x3e8

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move v1, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    move v2, v7

    goto :goto_4c

    :cond_43
    const/16 v0, 0x3f2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move v1, v7

    const/16 v2, 0x3f2

    :goto_4c
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_66

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_80

    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteCertificateEntry: processId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    const/4 v7, 0x0

    if-nez p2, :cond_1a6

    if-ne v2, v6, :cond_87

    goto/16 :goto_1a6

    :cond_87
    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v6

    move-object v3, v6

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_d2

    const-string v8, "USRCERT_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c4

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_bd

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete user cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_bd} :catch_301
    .catchall {:try_start_c .. :try_end_bd} :catchall_2ff

    :cond_bd
    nop

    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_c3
    return v5

    :cond_c4
    const/4 v7, 0x1

    :try_start_c5
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_ed

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete user cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    :cond_d2
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_ed

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    :goto_ed
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_12d

    const-string v8, "CACERT_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11f

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_118

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete CA Cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_118} :catch_301
    .catchall {:try_start_c5 .. :try_end_118} :catchall_2ff

    :cond_118
    nop

    if-eqz v3, :cond_11e

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_11e
    return v5

    :cond_11f
    const/4 v7, 0x1

    :try_start_120
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_148

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delete CA cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    :cond_12d
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_148

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_148
    :goto_148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_189

    const-string v8, "USRPKEY_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17a

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_173

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delKeyAsUser: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_173} :catch_301
    .catchall {:try_start_120 .. :try_end_173} :catchall_2ff

    :cond_173
    nop

    if-eqz v3, :cond_179

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_179
    return v5

    :cond_17a
    const/4 v7, 0x1

    :try_start_17b
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2ef

    const-string v8, "SCEPKeystoreProxyService"

    const-string/jumbo v9, "keyChainService.deleteCertificate delKeyAsUser: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ef

    :cond_189
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2ef

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ef

    :cond_1a6
    :goto_1a6
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1fb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1ee

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_1e7

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete user cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_1e7} :catch_301
    .catchall {:try_start_17b .. :try_end_1e7} :catchall_2ff

    :cond_1e7
    nop

    if-eqz v3, :cond_1ed

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1ed
    return v5

    :cond_1ee
    const/4 v7, 0x1

    :try_start_1ef
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_216

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete user cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_216

    :cond_1fb
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_216

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_216
    :goto_216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_267

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_25a

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_253

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete CA Cert: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_253} :catch_301
    .catchall {:try_start_1ef .. :try_end_253} :catchall_2ff

    :cond_253
    nop

    if-eqz v3, :cond_259

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_259
    return v5

    :cond_25a
    const/4 v7, 0x1

    :try_start_25b
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_282

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delete CA cert: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_282

    :cond_267
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_282

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_282
    :goto_282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2d3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2c6

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2bf

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delKeyAsUser: failure"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_2bf} :catch_301
    .catchall {:try_start_25b .. :try_end_2bf} :catchall_2ff

    :cond_2bf
    nop

    if-eqz v3, :cond_2c5

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_2c5
    return v5

    :cond_2c6
    const/4 v7, 0x1

    :try_start_2c7
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2ee

    const-string v8, "SCEPKeystoreProxyService"

    const-string v9, "deleteCertificateEntry delKeyAsUser: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ee

    :cond_2d3
    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2ee

    const-string v8, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not exist : USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2ee} :catch_301
    .catchall {:try_start_2c7 .. :try_end_2ee} :catchall_2ff

    :cond_2ee
    :goto_2ee
    nop

    :cond_2ef
    :goto_2ef
    if-ne v5, v7, :cond_2f8

    const/4 v5, 0x0

    if-eqz v3, :cond_2f7

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_2f7
    return v5

    :cond_2f8
    nop

    if-eqz v3, :cond_2fe

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_2fe
    return v5

    :catchall_2ff
    move-exception v4

    goto :goto_317

    :catch_301
    move-exception v4

    :try_start_302
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_310

    const-string v6, "SCEPKeystoreProxyService"

    const-string v7, "deleteCertificateEntry return exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_310
    .catchall {:try_start_302 .. :try_end_310} :catchall_2ff

    :cond_310
    nop

    if-eqz v3, :cond_316

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_316
    return v5

    :goto_317
    if-eqz v3, :cond_31c

    invoke-virtual {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_31c
    throw v4
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v2}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_31

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCertificate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :try_start_31
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const/16 v7, 0x3f2

    if-ne v5, v6, :cond_6c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v6

    :goto_6b
    goto :goto_ab

    :cond_6c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_99

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v6

    goto :goto_6b

    :cond_99
    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v6

    move-object v4, v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    const-string v8, "USRCERT_"

    invoke-interface {v6, p1, v8}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_aa} :catch_d7
    .catchall {:try_start_31 .. :try_end_aa} :catchall_d5

    move-object v6, v8

    :goto_ab
    if-nez v6, :cond_b4

    nop

    if-eqz v4, :cond_b3

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_b3
    return-object v1

    :cond_b4
    :try_start_b4
    invoke-static {v6}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_ce

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_ce

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/security/cert/Certificate;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/Certificate;

    aput-object v11, v9, v10

    iput-object v9, v2, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_ce} :catch_d7
    .catchall {:try_start_b4 .. :try_end_ce} :catchall_d5

    :cond_ce
    nop

    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_d4
    return-object v2

    :catchall_d5
    move-exception v1

    goto :goto_e1

    :catch_d7
    move-exception v5

    :try_start_d8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_d5

    if-eqz v4, :cond_e0

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_e0
    return-object v1

    :goto_e1
    if-eqz v4, :cond_e6

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_e6
    throw v1
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_1b

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    goto :goto_1b

    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1b
    :goto_1b
    return-void
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    return v2

    :cond_9
    if-nez p1, :cond_c

    return v2

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    move v6, v5

    :goto_1f
    array-length v7, v4

    if-ge v6, v7, :cond_2e

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_36
    .catchall {:try_start_c .. :try_end_2b} :catchall_34

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_2e
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_33
    return v5

    :catchall_34
    move-exception v1

    goto :goto_41

    :catch_36
    move-exception v1

    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    nop

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_40
    return v2

    :goto_41
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_46
    throw v1
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    const/16 v0, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz p1, :cond_4c

    :try_start_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v0, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_31} :catch_3f
    .catchall {:try_start_15 .. :try_end_31} :catchall_3d

    if-nez v5, :cond_38

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_38
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v7

    :catchall_3d
    move-exception v1

    goto :goto_48

    :catch_3f
    move-exception v5

    :try_start_40
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_4c
    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public installCaCertificate([B)V
    .registers 7

    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    :try_start_5
    monitor-enter v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_36

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_19

    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_17

    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "CA Certificate parse error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    monitor-exit v0

    return-void

    :cond_19
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_31

    const-string v3, "SCEPKeystoreProxyService"

    const-string v4, "CA Certificate successfully installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    monitor-exit v0

    goto :goto_55

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_46
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_36} :catch_36

    :catch_36
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_42

    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "CertificateException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_56

    :catch_46
    move-exception v1

    sget-boolean v2, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v2, :cond_52

    const-string v2, "SCEPKeystoreProxyService"

    const-string v3, "IOException while installing CA Certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_55
    nop

    :goto_56
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->broadcastStorageChange()V

    return-void
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_10

    return v5

    :cond_10
    if-nez v2, :cond_13

    return v5

    :cond_13
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    move-object v8, v0

    :try_start_17
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iget v11, v2, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v11, v11, [B

    iget-object v12, v2, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    move-object v11, v12

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v12, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v13

    new-array v14, v5, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v6, v16

    sget-boolean v16, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v16, :cond_60

    const-string v10, "SCEPKeystoreProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    if-eqz p4, :cond_119

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v0

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v12, v0, v15

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    const/16 v4, 0x3f2

    invoke-virtual {v10, v5, v0, v4, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_89
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_89} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_89} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_89} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_89} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_17 .. :try_end_89} :catch_389
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_89} :catch_37a
    .catchall {:try_start_17 .. :try_end_89} :catchall_378

    if-nez v0, :cond_96

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_94

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_94
    const/4 v0, 0x1

    return v0

    :cond_96
    :try_start_96
    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v0

    if-eqz v0, :cond_c7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    const/4 v15, 0x0

    invoke-virtual {v10, v0, v5, v4, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_ba
    .catch Ljava/security/KeyStoreException; {:try_start_96 .. :try_end_ba} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_96 .. :try_end_ba} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_96 .. :try_end_ba} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ba} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_96 .. :try_end_ba} :catch_389
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ba} :catch_37a
    .catchall {:try_start_96 .. :try_end_ba} :catchall_378

    if-nez v0, :cond_ee

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_c5

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_c5
    const/4 v0, 0x1

    return v0

    :cond_c7
    :try_start_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    const/4 v15, 0x1

    invoke-virtual {v10, v0, v5, v4, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_e1
    .catch Ljava/security/KeyStoreException; {:try_start_c7 .. :try_end_e1} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c7 .. :try_end_e1} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_c7 .. :try_end_e1} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_e1} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_c7 .. :try_end_e1} :catch_389
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_e1} :catch_37a
    .catchall {:try_start_c7 .. :try_end_e1} :catchall_378

    if-nez v0, :cond_ee

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_ec

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_ec
    const/4 v0, 0x1

    return v0

    :cond_ee
    :try_start_ee
    iget v0, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v0, :cond_117

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x0

    invoke-virtual {v10, v0, v5, v4, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v0
    :try_end_10a
    .catch Ljava/security/KeyStoreException; {:try_start_ee .. :try_end_10a} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ee .. :try_end_10a} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_ee .. :try_end_10a} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_10a} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_ee .. :try_end_10a} :catch_389
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10a} :catch_37a
    .catchall {:try_start_ee .. :try_end_10a} :catchall_378

    if-nez v0, :cond_117

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_115

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_115
    const/4 v0, 0x1

    return v0

    :cond_117
    goto/16 :goto_36d

    :cond_119
    move-object/from16 v18, v0

    :try_start_11b
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v4, 0x3e8

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    if-ne v0, v4, :cond_261

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v15

    invoke-virtual {v4, v5, v15, v0, v10}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_18f

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_184

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRCERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_184
    .catch Ljava/security/KeyStoreException; {:try_start_11b .. :try_end_184} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11b .. :try_end_184} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_11b .. :try_end_184} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_184} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_11b .. :try_end_184} :catch_389
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_184} :catch_37a
    .catchall {:try_start_11b .. :try_end_184} :catchall_378

    :cond_184
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_18d

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_18d
    const/4 v5, 0x1

    return v5

    :cond_18f
    :try_start_18f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRPKEY_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    const/4 v15, 0x1

    invoke-virtual {v4, v5, v10, v0, v15}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_1ed

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_1e2

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRPKEY_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catch Ljava/security/KeyStoreException; {:try_start_18f .. :try_end_1e2} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18f .. :try_end_1e2} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_18f .. :try_end_1e2} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1e2} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_18f .. :try_end_1e2} :catch_389
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1e2} :catch_37a
    .catchall {:try_start_18f .. :try_end_1e2} :catchall_378

    :cond_1e2
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_1eb

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1eb
    const/4 v5, 0x1

    return v5

    :cond_1ed
    :try_start_1ed
    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "MarkKeyAsUserSelectable call"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;

    invoke-direct {v5, v1, v3, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;Ljava/lang/String;I)V

    const/4 v10, 0x0

    new-array v15, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v15}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$MarkKeyAsUserSelectable;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v5, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v5, :cond_25f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CACERT_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x1

    invoke-virtual {v4, v5, v10, v0, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    if-nez v5, :cond_25f

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_254

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : CACERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_254
    .catch Ljava/security/KeyStoreException; {:try_start_1ed .. :try_end_254} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1ed .. :try_end_254} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_1ed .. :try_end_254} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_254} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1ed .. :try_end_254} :catch_389
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_254} :catch_37a
    .catchall {:try_start_1ed .. :try_end_254} :catchall_378

    :cond_254
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_25d

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_25d
    const/4 v5, 0x1

    return v5

    :cond_25f
    goto/16 :goto_36d

    :cond_261
    :try_start_261
    iget-object v4, v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v4

    move-object v8, v4

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    const-string v5, "USRCERT_"

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/security/cert/Certificate;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v15}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v15

    invoke-interface {v4, v3, v5, v15, v10}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    if-nez v5, :cond_2c1

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_2b6

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_CERTIFICATE keyChainService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRCERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b6
    .catch Ljava/security/KeyStoreException; {:try_start_261 .. :try_end_2b6} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_261 .. :try_end_2b6} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_261 .. :try_end_2b6} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_2b6} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_261 .. :try_end_2b6} :catch_389
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_2b6} :catch_37a
    .catchall {:try_start_261 .. :try_end_2b6} :catchall_378

    :cond_2b6
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_2bf

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_2bf
    const/4 v5, 0x1

    return v5

    :cond_2c1
    :try_start_2c1
    const-string v5, "USRPKEY_"

    invoke-interface {v13}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    const/4 v15, 0x1

    invoke-interface {v4, v3, v5, v10, v15}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    if-nez v5, :cond_310

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_305

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "USER_PRIVATE_KEY keyChainService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : USRPKEY_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_305
    .catch Ljava/security/KeyStoreException; {:try_start_2c1 .. :try_end_305} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2c1 .. :try_end_305} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_2c1 .. :try_end_305} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_305} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2c1 .. :try_end_305} :catch_389
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_305} :catch_37a
    .catchall {:try_start_2c1 .. :try_end_305} :catchall_378

    :cond_305
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_30e

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_30e
    const/4 v5, 0x1

    return v5

    :cond_310
    :try_start_310
    const-string v5, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "setUserSelectable called for other uid"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V

    iget v5, v2, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v5, :cond_36d

    const-string v5, "CACERT_"

    iget-object v10, v2, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v15, 0x1

    invoke-interface {v4, v3, v5, v10, v15}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v5

    if-nez v5, :cond_36d

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_362

    const-string v5, "SCEPKeystoreProxyService"

    const-string v10, "CA_CERTIFICATE keyChainService.put is failed"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Alias : CACERT_"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uid : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_362
    .catch Ljava/security/KeyStoreException; {:try_start_310 .. :try_end_362} :catch_3c4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_310 .. :try_end_362} :catch_3b5
    .catch Ljava/security/cert/CertificateException; {:try_start_310 .. :try_end_362} :catch_3a7
    .catch Ljava/io/IOException; {:try_start_310 .. :try_end_362} :catch_398
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_310 .. :try_end_362} :catch_389
    .catch Ljava/lang/Exception; {:try_start_310 .. :try_end_362} :catch_37a
    .catchall {:try_start_310 .. :try_end_362} :catchall_378

    :cond_362
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_36b

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_36b
    const/4 v5, 0x1

    return v5

    :cond_36d
    :goto_36d
    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_376

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_376
    const/4 v0, 0x0

    return v0

    :catchall_378
    move-exception v0

    goto :goto_3d3

    :catch_37a
    move-exception v0

    :try_start_37b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37e
    .catchall {:try_start_37b .. :try_end_37e} :catchall_378

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_387

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_387
    const/4 v4, 0x4

    return v4

    :catch_389
    move-exception v0

    :try_start_38a
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_38d
    .catchall {:try_start_38a .. :try_end_38d} :catchall_378

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_396

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_396
    const/4 v4, 0x2

    return v4

    :catch_398
    move-exception v0

    :try_start_399
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39c
    .catchall {:try_start_399 .. :try_end_39c} :catchall_378

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3a5

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3a5
    const/4 v4, 0x4

    return v4

    :catch_3a7
    move-exception v0

    :try_start_3a8
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3ab
    .catchall {:try_start_3a8 .. :try_end_3ab} :catchall_378

    const/4 v4, 0x3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3b4

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3b4
    return v4

    :catch_3b5
    move-exception v0

    :try_start_3b6
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_3b9
    .catchall {:try_start_3b6 .. :try_end_3b9} :catchall_378

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3c2

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3c2
    const/4 v4, 0x2

    return v4

    :catch_3c4
    move-exception v0

    :try_start_3c5
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3c8
    .catchall {:try_start_3c5 .. :try_end_3c8} :catchall_378

    nop

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3d1

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3d1
    const/4 v4, 0x2

    return v4

    :goto_3d3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3db

    invoke-virtual {v8}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3db
    throw v0
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_28

    const-string v3, "SCEPKeystoreProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAliasExists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :try_start_28
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    const/16 v5, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz p2, :cond_87

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_7e} :catch_135
    .catchall {:try_start_28 .. :try_end_7e} :catchall_133

    if-eqz v4, :cond_126

    :cond_80
    nop

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_86
    return v7

    :cond_87
    if-ne v3, v4, :cond_d5

    :try_start_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRCERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_ce

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRPKEY_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_ce

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACERT_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_cc} :catch_135
    .catchall {:try_start_89 .. :try_end_cc} :catchall_133

    if-eqz v4, :cond_d5

    :cond_ce
    nop

    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_d4
    return v7

    :cond_d5
    :try_start_d5
    iget-object v4, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v4

    move-object v2, v4

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_12c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USRPKEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_12c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v8
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_123} :catch_135
    .catchall {:try_start_d5 .. :try_end_123} :catchall_133

    if-eqz v8, :cond_126

    goto :goto_12c

    :cond_126
    if-eqz v2, :cond_12b

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_12b
    return v1

    :cond_12c
    :goto_12c
    nop

    if-eqz v2, :cond_132

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_132
    return v7

    :catchall_133
    move-exception v1

    goto :goto_140

    :catch_135
    move-exception v3

    :try_start_136
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_133

    nop

    if-eqz v2, :cond_13f

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_13f
    return v1

    :goto_140
    if-eqz v2, :cond_145

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_145
    throw v1
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .registers 4

    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_17
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
