.class public Lcom/android/server/asks/ASKSManagerService;
.super Landroid/content/pm/IASKSManager$Stub;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/asks/ASKSManagerService$Deletable;,
        Lcom/android/server/asks/ASKSManagerService$Restrict;,
        Lcom/android/server/asks/ASKSManagerService$ASKSSession;,
        Lcom/android/server/asks/ASKSManagerService$ASKSState;
    }
.end annotation


# static fields
.field static final ASKS_VERSION:Ljava/lang/String; = "3.1.1"

.field static final TAG:Ljava/lang/String; = "ASKSManager"

.field static mASKSPolicyVersion:Ljava/lang/String;


# instance fields
.field private final AASA_CASE:I

.field private AASA_CERT_FILE:Ljava/lang/String;

.field private final ADP_CASE:I

.field private final ADP_POLICY_VERSION:Ljava/lang/String;

.field private final ADP_VERSION:Ljava/lang/String;

.field private final ASKS_BLACK:I

.field private final ASKS_CASE:I

.field private final ASKS_CERTSTORE:I

.field private final ASKS_CRL:I

.field private final ASKS_FILE:Ljava/lang/String;

.field private final ASKS_HALFBLACK:I

.field private final ASKS_KNOWN:I

.field private final ASKS_TRUSTEDSTORE:I

.field private final ASKS_WHITE:I

.field private CA_CERT_PATH:Ljava/lang/String;

.field private CA_CERT_SYSTEM_PATH:Ljava/lang/String;

.field private final DEBUG_MODE:Z

.field private DEBUG_MODE_FOR_DEVELOPMENT:Z

.field private EE_CERT_FILE:Ljava/lang/String;

.field private final EM_SUPPORT_PACKAGE_FILE:Ljava/lang/String;

.field private final PROPERTY_ADP_POLICY_VERSION:Ljava/lang/String;

.field private final PROPERTY_ADP_VERSION:Ljava/lang/String;

.field private final PROPERTY_ASKS_POLICY_VERSION:Ljava/lang/String;

.field private final PROPERTY_ASKS_RUFS_ENABLE:Ljava/lang/String;

.field private final PROPERTY_ASKS_TIME_VALUE:Ljava/lang/String;

.field private final PROPERTY_ASKS_VERSION:Ljava/lang/String;

.field private final PROTECTION_LIST:I

.field private final RESTRICTED_FROM_AASA:Ljava/lang/String;

.field private final RESTRICTED_FROM_POLICY:Ljava/lang/String;

.field private final RESTRICTED_FROM_TOKEN:Ljava/lang/String;

.field private ROOT_CERT_FILE:Ljava/lang/String;

.field private final SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

.field private final SECURE_TIME_FILE:Ljava/lang/String;

.field private final TAG_AASA:Ljava/lang/String;

.field private final TAG_ADP:Ljava/lang/String;

.field private final TAG_DELETABLE:Ljava/lang/String;

.field private final TAG_EM:Ljava/lang/String;

.field private final TAG_RESTRICTED:Ljava/lang/String;

.field private final TAG_RUFS:Ljava/lang/String;

.field private final TAG_SECURETIME:Ljava/lang/String;

.field private TYPE_MOBILE:I

.field private TYPE_NOT_CONNECTED:I

.field private TYPE_WIFI:I

.field private isFirstBoot:Z

.field private final mASKSStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mFile:Landroid/util/AtomicFile;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ">;"
        }
    .end annotation
.end field

.field volatile mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "00000000"

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Landroid/content/pm/IASKSManager$Stub;-><init>()V

    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_VERSION:Ljava/lang/String;

    const-string v0, "20191001"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_POLICY_VERSION:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->isFirstBoot:Z

    const-string v1, "AASA_ASKSManager"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_AASA:Ljava/lang/String;

    const-string v1, "AASA_ASKSManager_ADP"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_ADP:Ljava/lang/String;

    const-string v1, "AASA_ASKSManager_DELETABLE"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_DELETABLE:Ljava/lang/String;

    const-string v1, "AASA_ASKSManager_EM"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_EM:Ljava/lang/String;

    const-string v1, "AASA_ASKSManager_RESTRICTED"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_RESTRICTED:Ljava/lang/String;

    const-string v1, "AASA_ASKSManager_RUFS"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_RUFS:Ljava/lang/String;

    const-string v1, "AASA_ASKSManager_SECURETIME"

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_SECURETIME:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_WHITE:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_BLACK:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_KNOWN:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_TRUSTEDSTORE:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CRL:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CERTSTORE:I

    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_HALFBLACK:I

    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->PROTECTION_LIST:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CASE:I

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CASE:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_CASE:I

    const-string v3, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    const-string v3, "/system/etc/ASKS_INTER_"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    const-string v3, "/system/etc/ASKS_EDGE_1.crt"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    const-string v3, "/system/etc/aasa_real_crt2.crt"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CERT_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/asks.xml"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/EMSupportPackages.xml"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->EM_SUPPORT_PACKAGE_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/trustedTime"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->SECURE_TIME_FILE:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/SamsungAnalyticsLog"

    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    iput v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    iput v1, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    const-string/jumbo v0, "security.ASKS.version"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "security.ASKS.time_value"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_TIME_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "security.ASKS.policy_version"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_POLICY_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "security.ADP.version"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ADP_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "security.ADP.policy_version"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ADP_POLICY_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "security.ASKS.rufs_enable"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_RUFS_ENABLE:Ljava/lang/String;

    const-string v0, "Token"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_TOKEN:Ljava/lang/String;

    const-string v0, "Policy"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_POLICY:Ljava/lang/String;

    const-string v0, "AASA"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_AASA:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE:Z

    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "security.ASKS.version"

    const-string v1, "3.1.1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security.ASKS.time_value"

    const-string v1, "00000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security.ASKS.policy_version"

    sget-object v1, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security.ADP.version"

    const-string v1, "3.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security.ADP.policy_version"

    const-string v1, "20191001"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/asks.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_122

    :try_start_f0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_107

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_107

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_107
    new-instance v2, Lcom/android/server/asks/PolicyConvert;

    invoke-direct {v2}, Lcom/android/server/asks/PolicyConvert;-><init>()V

    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/asks/PolicyConvert;->convert(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_118

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_117} :catch_119

    const/4 v1, 0x1

    :cond_118
    goto :goto_122

    :catch_119
    move-exception v2

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "cannot create the file even it does not exist"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_122
    :goto_122
    new-instance v2, Landroid/util/AtomicFile;

    const-string v3, "asks"

    invoke-direct {v2, v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->readState()V

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->copyASKSpolicyFromSystem()Z

    move-result v2

    if-eqz v2, :cond_139

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    const/4 v1, 0x1

    :cond_139
    if-eqz v1, :cond_13e

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    :cond_13e
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    return-void
.end method

.method private checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B
    .registers 13

    iget-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v0, :cond_5

    return-object p2

    :cond_5
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_a
    const-string/jumbo v4, "x.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_117

    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCAKeyIndex()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".crt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_3a

    move-object v3, v5

    goto :goto_79

    :catch_3a
    move-exception v5

    :try_start_3b
    const-string v6, "AASA_ASKSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Look at system File. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCAKeyIndex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_78} :catch_117

    move-object v3, v6

    :goto_79
    :try_start_79
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v5, "AASA_ASKSManager"

    const-string/jumbo v6, "signerCert is verificated!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_88} :catch_f9

    nop

    nop

    :try_start_8a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_95} :catch_117

    move-object v1, v5

    nop

    :try_start_97
    invoke-virtual {v4, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    move-object v2, v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v5, "AASA_ASKSManager"

    const-string v6, "CAcert is verificated!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ac} :catch_db

    nop

    :try_start_ad
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string v5, "AASA_ASKSManager"

    const-string/jumbo v6, "rootCert is verificated!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_bc} :catch_bd

    return-object p2

    :catch_bd
    move-exception v5

    :try_start_be
    const-string v6, "AASA_ASKSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: rootCert is not verified "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "22"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    :catch_db
    move-exception v5

    const-string v6, "AASA_ASKSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: CACert is not verified by RootCert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "22"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    :catch_f9
    move-exception v2

    const-string v5, "AASA_ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "22"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_116} :catch_117

    return-object v5

    :catch_117
    move-exception v2

    const-string v4, "AASA_ASKSManager"

    const-string v5, "Token is NOT verificated in CheckCRL!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "22"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method private checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B)[B
    .registers 16

    const/16 v0, 0x200

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, p3

    if-ge v4, v0, :cond_f

    const-string v4, "22"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    :cond_f
    :try_start_f
    new-array v4, v0, [B

    const/4 v5, 0x0

    invoke-static {p3, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getTokenContents([BI)[B

    move-result-object v6

    move-object v3, v6

    if-eqz v3, :cond_163

    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    goto/16 :goto_163

    :cond_22
    const-string v6, "SHA256WithRSAEncryption"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v6

    const-string/jumbo v7, "x.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    const/4 v8, 0x0

    packed-switch p2, :pswitch_data_1b6

    goto/16 :goto_d7

    :pswitch_35
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_66

    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v9

    invoke-direct {p0, p1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v9
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_53} :catch_177
    .catchall {:try_start_f .. :try_end_53} :catchall_175

    if-eqz v9, :cond_d7

    nop

    if-eqz v1, :cond_5e

    :try_start_58
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_5e

    :catch_5c
    move-exception v5

    goto :goto_63

    :cond_5e
    :goto_5e
    nop

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_62} :catch_5c

    goto :goto_64

    :goto_63
    goto :goto_65

    :goto_64
    nop

    :goto_65
    return-object v9

    :cond_66
    const/4 v5, 0x0

    if-eqz v1, :cond_6f

    :try_start_69
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_6f

    :catch_6d
    move-exception v9

    goto :goto_75

    :cond_6f
    :goto_6f
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_74} :catch_6d

    goto :goto_76

    :goto_75
    goto :goto_77

    :cond_76
    :goto_76
    nop

    :goto_77
    return-object v5

    :pswitch_78
    const/4 v9, 0x0

    :try_start_79
    new-instance v10, Ljava/util/jar/JarFile;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v10

    nop

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCertName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v10

    move-object v9, v10

    if-eqz v9, :cond_95

    invoke-virtual {v1, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    move-object v2, v10

    goto :goto_b6

    :cond_95
    const-string v5, "AASA_ASKSManager"

    const-string v10, "Token Cert does not exist!"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    const-string v5, "21"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a6} :catch_177
    .catchall {:try_start_79 .. :try_end_a6} :catchall_175

    nop

    :try_start_a7
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_ad

    :catch_ab
    move-exception v10

    goto :goto_b3

    :goto_ad
    if-eqz v2, :cond_b4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b2} :catch_ab

    goto :goto_b4

    :goto_b3
    goto :goto_b5

    :cond_b4
    :goto_b4
    nop

    :goto_b5
    return-object v5

    :goto_b6
    :try_start_b6
    invoke-direct {p0, p1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v10
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ba} :catch_177
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_175

    if-eqz v10, :cond_cd

    nop

    nop

    :try_start_be
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_c4

    :catch_c2
    move-exception v5

    goto :goto_ca

    :goto_c4
    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c9} :catch_c2

    goto :goto_cb

    :goto_ca
    goto :goto_cc

    :cond_cb
    :goto_cb
    nop

    :goto_cc
    return-object v10

    :cond_cd
    goto :goto_d7

    :pswitch_ce
    :try_start_ce
    new-instance v9, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CERT_FILE:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    nop

    :cond_d7
    :goto_d7
    invoke-virtual {v7, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    move-object v8, v9

    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_e3
    if-eqz v2, :cond_e8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_e8
    invoke-virtual {v6, v8}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    array-length v9, v3

    invoke-virtual {v6, v3, v5, v9}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v6, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-nez v5, :cond_118

    iget-boolean v5, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v5, :cond_fa

    goto :goto_118

    :cond_fa
    const-string v5, "AASA_ASKSManager"

    const-string v9, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "22"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_107} :catch_177
    .catchall {:try_start_ce .. :try_end_107} :catchall_175

    if-eqz v1, :cond_10f

    :try_start_109
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_10f

    :catch_10d
    move-exception v9

    goto :goto_115

    :cond_10f
    :goto_10f
    if-eqz v2, :cond_116

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_114} :catch_10d

    goto :goto_116

    :goto_115
    goto :goto_117

    :cond_116
    :goto_116
    nop

    :goto_117
    return-object v5

    :cond_118
    :goto_118
    packed-switch p2, :pswitch_data_1c0

    goto :goto_143

    :pswitch_11c
    :try_start_11c
    invoke-direct {p0, p1, v3, v8}, Lcom/android/server/asks/ASKSManagerService;->checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B

    move-result-object v5
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_120} :catch_177
    .catchall {:try_start_11c .. :try_end_120} :catchall_175

    if-eqz v1, :cond_128

    :try_start_122
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_128

    :catch_126
    move-exception v9

    goto :goto_12e

    :cond_128
    :goto_128
    if-eqz v2, :cond_12f

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_12d} :catch_126

    goto :goto_12f

    :goto_12e
    goto :goto_130

    :cond_12f
    :goto_12f
    nop

    :goto_130
    return-object v5

    :pswitch_131
    nop

    if-eqz v1, :cond_13a

    :try_start_134
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_13a

    :catch_138
    move-exception v5

    goto :goto_140

    :cond_13a
    :goto_13a
    if-eqz v2, :cond_141

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_13f} :catch_138

    goto :goto_141

    :goto_140
    goto :goto_142

    :cond_141
    :goto_141
    nop

    :goto_142
    return-object v3

    :goto_143
    if-eqz v1, :cond_14b

    :try_start_145
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_14b

    :catch_149
    move-exception v4

    goto :goto_151

    :cond_14b
    :goto_14b
    if-eqz v2, :cond_153

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_150} :catch_149

    goto :goto_153

    :goto_151
    nop

    goto :goto_154

    :cond_153
    :goto_153
    nop

    :goto_154
    const-string v4, "AASA_ASKSManager"

    const-string/jumbo v5, "this is not on the way to check integrity"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "22"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    :cond_163
    :goto_163
    nop

    if-eqz v1, :cond_16c

    :try_start_166
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_16c

    :catch_16a
    move-exception v5

    goto :goto_172

    :cond_16c
    :goto_16c
    if-eqz v2, :cond_173

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_171} :catch_16a

    goto :goto_173

    :goto_172
    goto :goto_174

    :cond_173
    :goto_173
    nop

    :goto_174
    return-object v3

    :catchall_175
    move-exception v4

    goto :goto_1a5

    :catch_177
    move-exception v4

    :try_start_178
    const-string v5, "AASA_ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: checkIntegrity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "22"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_194
    .catchall {:try_start_178 .. :try_end_194} :catchall_175

    if-eqz v1, :cond_19c

    :try_start_196
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_19c

    :catch_19a
    move-exception v6

    goto :goto_1a2

    :cond_19c
    :goto_19c
    if-eqz v2, :cond_1a3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1a1} :catch_19a

    goto :goto_1a3

    :goto_1a2
    goto :goto_1a4

    :cond_1a3
    :goto_1a3
    nop

    :goto_1a4
    return-object v5

    :goto_1a5
    nop

    if-eqz v1, :cond_1ae

    :try_start_1a8
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_1ae

    :catch_1ac
    move-exception v5

    goto :goto_1b4

    :cond_1ae
    :goto_1ae
    if-eqz v2, :cond_1b5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1b3} :catch_1ac

    goto :goto_1b5

    :goto_1b4
    nop

    :cond_1b5
    :goto_1b5
    throw v4

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_78
        :pswitch_35
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_131
        :pswitch_11c
        :pswitch_11c
    .end packed-switch
.end method

.method private checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    if-nez p3, :cond_18

    const/4 v0, 0x0

    goto :goto_42

    :cond_18
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2b

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_2b
    const/16 v3, 0x9

    if-eq p1, v3, :cond_37

    const/16 v3, 0x12

    if-eq p1, v3, :cond_37

    const/16 v3, 0x13

    if-ne p1, v3, :cond_42

    :cond_37
    if-eqz v2, :cond_42

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v0, 0x0

    :cond_42
    :goto_42
    return v0
.end method

.method private checkNetworkConnection(Landroid/content/Context;)I
    .registers 6

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string v1, "checkNetworkConnection : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_13

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string v1, "context is null. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    return v0

    :cond_13
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    return v2

    :cond_2b
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_34

    iget v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    return v2

    :cond_34
    iget v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    return v2
.end method

.method private checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_131

    if-nez p2, :cond_7

    goto/16 :goto_131

    :cond_7
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "ALL"

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_c6

    array-length v6, v1

    if-ne v6, v7, :cond_72

    const-string v6, "ALL"

    aget-object v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    array-length v0, v2

    if-ne v0, v7, :cond_40

    const/4 v5, 0x1

    goto/16 :goto_130

    :cond_40
    const/4 v0, 0x1

    nop

    :goto_42
    move v5, v7

    array-length v6, v2

    if-ge v5, v6, :cond_53

    aget-object v6, v2, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    const/4 v0, 0x0

    goto :goto_53

    :cond_50
    add-int/lit8 v7, v5, 0x1

    goto :goto_42

    :cond_53
    :goto_53
    move v5, v0

    goto/16 :goto_130

    :cond_56
    const-string v6, "ALL"

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_130

    nop

    :goto_61
    array-length v6, v2

    if-ge v0, v6, :cond_130

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const/4 v5, 0x1

    goto/16 :goto_130

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_72
    const/4 v5, 0x1

    move v6, v7

    :goto_74
    array-length v8, v1

    if-ge v6, v8, :cond_84

    aget-object v8, v1, v6

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    const/4 v5, 0x0

    goto :goto_84

    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_84
    :goto_84
    if-ne v5, v7, :cond_130

    const-string v6, "ALL"

    aget-object v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a9

    array-length v0, v2

    if-ne v0, v7, :cond_96

    const/4 v5, 0x1

    goto/16 :goto_130

    :cond_96
    nop

    :goto_97
    move v0, v7

    array-length v6, v2

    if-ge v0, v6, :cond_130

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    const/4 v5, 0x0

    goto/16 :goto_130

    :cond_a6
    add-int/lit8 v7, v0, 0x1

    goto :goto_97

    :cond_a9
    const-string v6, "ALL"

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_130

    const/4 v5, 0x0

    nop

    :goto_b5
    array-length v6, v2

    if-ge v0, v6, :cond_130

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    const/4 v5, 0x1

    goto/16 :goto_130

    :cond_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_c6
    const-string v6, "ALL"

    aget-object v8, v1, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_130

    move v6, v0

    :goto_d1
    array-length v8, v1

    if-ge v6, v8, :cond_e1

    aget-object v8, v1, v6

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    const/4 v5, 0x1

    goto :goto_e1

    :cond_de
    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    :cond_e1
    :goto_e1
    if-ne v5, v7, :cond_130

    const-string v6, "ALL"

    aget-object v8, v2, v0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_114

    array-length v6, v2

    if-ne v6, v7, :cond_102

    const/4 v5, 0x0

    nop

    :goto_f2
    array-length v6, v1

    if-ge v0, v6, :cond_130

    aget-object v6, v1, v0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ff

    const/4 v5, 0x1

    goto :goto_130

    :cond_ff
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    :cond_102
    nop

    :goto_103
    move v0, v7

    array-length v6, v2

    if-ge v0, v6, :cond_130

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    const/4 v5, 0x0

    goto :goto_130

    :cond_111
    add-int/lit8 v7, v0, 0x1

    goto :goto_103

    :cond_114
    const-string v6, "ALL"

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_130

    const/4 v5, 0x0

    nop

    :goto_120
    array-length v6, v2

    if-ge v0, v6, :cond_130

    aget-object v6, v2, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12d

    const/4 v5, 0x1

    goto :goto_130

    :cond_12d
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_130
    :goto_130
    return v5

    :cond_131
    :goto_131
    const-string v1, "AASA_ASKSManager"

    const-string v2, "ERROR: checkTokenTarget input is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method private convertMillsToString(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringToMills(Ljava/lang/String;)J
    .registers 8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_12} :catch_14

    move-wide v1, v4

    goto :goto_1a

    :catch_14
    move-exception v3

    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v1, -0x1

    :goto_1a
    return-wide v1
.end method

.method private convertToHex([B)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_31

    aget-byte v4, p1, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    move v6, v5

    move v5, v2

    :goto_12
    if-ltz v6, :cond_1c

    const/16 v7, 0x9

    if-gt v6, v7, :cond_1c

    const/16 v7, 0x30

    add-int/2addr v7, v6

    goto :goto_21

    :cond_1c
    const/16 v7, 0x61

    add-int/lit8 v8, v6, -0xa

    add-int/2addr v7, v8

    :goto_21
    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v4, 0xf

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    if-lt v5, v8, :cond_2f

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2f
    move v5, v7

    goto :goto_12

    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyASKSpolicyFromSystem()Z
    .registers 28

    move-object/from16 v1, p0

    const-string v2, "/system/etc/"

    const-string v3, "/data/system/.aasa/AASApolicy/"

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    new-instance v0, Lcom/android/server/asks/ASKSManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/asks/ASKSManagerService$1;-><init>(Lcom/android/server/asks/ASKSManagerService;)V

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_22

    const-string v0, "AASA_ASKSManager"

    const-string v9, "There are no target file in /system/etc/"

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_31
    new-instance v0, Ljava/io/File;

    const-string v10, "/data/system/.aasa/asks.xml"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "AASA_ASKSManager"

    const-string v10, "ASKS file exists."

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ASKS_FILE"

    const-string v10, "/data/system/.aasa/asks.xml"

    invoke-direct {v1, v0, v10}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string v0, "AASA_ASKSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mASKSPolicyVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    array-length v10, v7

    move-object v12, v0

    move v11, v8

    :goto_6d
    if-ge v11, v10, :cond_279

    aget-object v13, v7, v11

    new-instance v0, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    const-string v0, ""

    const-string v15, "00000000"

    const-string v16, "00000000"

    move-object/from16 v17, v3

    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24b

    const-string v0, "ASKS_RULE_FILE"

    move-object/from16 v19, v2

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_132

    const-string v0, "AASA_ASKSManager"

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v4

    const-string v4, "There are already exist xml files in /.aasa/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ASKS_RULE_FILE"

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_fc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_fc
    move-object v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_136

    const-string v0, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip, Current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rule is latest version."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_12e

    move-object v0, v15

    move-object v12, v0

    :cond_12e
    move-object/from16 v25, v5

    goto/16 :goto_26a

    :cond_132
    move-object/from16 v20, v3

    move/from16 v21, v4

    :cond_136
    const/16 v0, 0x800

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object/from16 v16, v0

    :try_start_13e
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_140
    .catch Ljava/io/FileNotFoundException; {:try_start_13e .. :try_end_140} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_140} :catch_1c9
    .catchall {:try_start_13e .. :try_end_140} :catchall_1bf

    :try_start_140
    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_149
    .catch Ljava/io/FileNotFoundException; {:try_start_140 .. :try_end_149} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_149} :catch_1c9
    .catchall {:try_start_140 .. :try_end_149} :catchall_1bf

    move-object/from16 v22, v0

    const/4 v0, 0x0

    :goto_14c
    move/from16 v23, v0

    :try_start_14e
    array-length v0, v3
    :try_end_14f
    .catch Ljava/io/FileNotFoundException; {:try_start_14e .. :try_end_14f} :catch_1af
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_14f} :catch_1a8
    .catchall {:try_start_14e .. :try_end_14f} :catchall_19d

    const/4 v1, 0x0

    :try_start_150
    invoke-virtual {v4, v3, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0
    :try_end_154
    .catch Ljava/io/FileNotFoundException; {:try_start_150 .. :try_end_154} :catch_198
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_154} :catch_191
    .catchall {:try_start_150 .. :try_end_154} :catchall_19d

    move/from16 v24, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_177

    move-object/from16 v25, v5

    move-object/from16 v1, v22

    move/from16 v0, v24

    const/4 v5, 0x0

    :try_start_160
    invoke-virtual {v1, v3, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_163
    .catch Ljava/io/FileNotFoundException; {:try_start_160 .. :try_end_163} :catch_172
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_16f
    .catchall {:try_start_160 .. :try_end_163} :catchall_16a

    move-object/from16 v22, v1

    move-object/from16 v5, v25

    move-object/from16 v1, p0

    goto :goto_14c

    :catchall_16a
    move-exception v0

    move-object/from16 v26, v3

    goto/16 :goto_235

    :catch_16f
    move-exception v0

    goto/16 :goto_1cf

    :catch_172
    move-exception v0

    move-object/from16 v26, v3

    goto/16 :goto_1fc

    :cond_177
    move-object/from16 v25, v5

    move-object/from16 v1, v22

    const/4 v5, 0x0

    :try_start_17c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_182

    :catch_180
    move-exception v0

    goto :goto_187

    :goto_182
    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_186} :catch_180

    goto :goto_18c

    :goto_187
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18d

    :goto_18c
    nop

    :goto_18d
    move-object/from16 v26, v3

    goto/16 :goto_211

    :catch_191
    move-exception v0

    move-object/from16 v25, v5

    move v5, v1

    move-object/from16 v1, v22

    goto :goto_1ae

    :catch_198
    move-exception v0

    move-object/from16 v25, v5

    move v5, v1

    goto :goto_1b2

    :catchall_19d
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v1, v22

    move-object/from16 v26, v3

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_237

    :catch_1a8
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v1, v22

    const/4 v5, 0x0

    :goto_1ae
    goto :goto_1cf

    :catch_1af
    move-exception v0

    move-object/from16 v25, v5

    :goto_1b2
    move-object/from16 v1, v22

    move-object/from16 v26, v3

    goto :goto_1fc

    :catch_1b7
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v3

    move-object/from16 v1, v16

    goto :goto_1fc

    :catchall_1bf
    move-exception v0

    move-object/from16 v25, v5

    move-object v1, v0

    move-object/from16 v26, v3

    move-object/from16 v3, v16

    goto/16 :goto_237

    :catch_1c9
    move-exception v0

    move-object/from16 v25, v5

    const/4 v5, 0x0

    move-object/from16 v1, v16

    :goto_1cf
    :try_start_1cf
    const-string v5, "AASA_ASKSManager"
    :try_end_1d1
    .catchall {:try_start_1cf .. :try_end_1d1} :catchall_1ef

    move-object/from16 v26, v3

    :try_start_1d3
    const-string v3, "IOException"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1db
    .catchall {:try_start_1d3 .. :try_end_1db} :catchall_234

    if-eqz v4, :cond_1e3

    :try_start_1dd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_1e3

    :catch_1e1
    move-exception v0

    goto :goto_1e9

    :cond_1e3
    :goto_1e3
    if-eqz v1, :cond_1ee

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1e8} :catch_1e1

    goto :goto_1ee

    :goto_1e9
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_211

    :cond_1ee
    :goto_1ee
    goto :goto_211

    :catchall_1ef
    move-exception v0

    move-object/from16 v26, v3

    move-object v3, v1

    move-object v1, v0

    goto :goto_237

    :catch_1f5
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v25, v5

    move-object/from16 v1, v16

    :goto_1fc
    :try_start_1fc
    const-string v3, "AASA_ASKSManager"

    const-string v5, "FileNotFoundException"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_206
    .catchall {:try_start_1fc .. :try_end_206} :catchall_234

    if-eqz v4, :cond_20b

    :try_start_208
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_20b
    if-eqz v1, :cond_1ee

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_210
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_210} :catch_1e1

    goto :goto_1ee

    :goto_211
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v0, v3, :cond_21c

    move-object v12, v2

    :cond_21c
    const-string v0, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "there is xml file /system/etc/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26a

    :catchall_234
    move-exception v0

    :goto_235
    move-object v3, v1

    move-object v1, v0

    :goto_237
    if-eqz v4, :cond_23f

    :try_start_239
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_23f

    :catch_23d
    move-exception v0

    goto :goto_245

    :cond_23f
    :goto_23f
    if-eqz v3, :cond_24a

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_244} :catch_23d

    goto :goto_24a

    :goto_245
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_24a
    :goto_24a
    throw v1

    :cond_24b
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v25, v5

    const-string v0, "AASA_ASKSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there is no xml file /system/etc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v5, v25

    move-object/from16 v1, p0

    const/4 v8, 0x0

    goto/16 :goto_6d

    :cond_279
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v25, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_291

    sput-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_293

    :cond_291
    move/from16 v4, v21

    :goto_293
    return v4
.end method

.method private enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-nez v0, :cond_b

    goto :goto_25

    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_25
    return-void
.end method

.method private enforceSystemOrRoot()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    const/4 v1, 0x1

    return v1
.end method

.method private findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B
    .registers 14

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ""
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_18} :catch_fc

    :try_start_18
    const-string v5, "INDEX"

    invoke-direct {p0, v1, v5}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_fc

    move-object v4, v5

    nop

    :try_start_20
    const-string v5, "AASA_ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "0.0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    const-string v5, "AASA_ASKSManager"

    const-string v6, "ENG Cert Index"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    :cond_48
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[^0-9]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-virtual {p1, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCAKeyIndex(Ljava/lang/String;)V

    const-string v8, "AASA_ASKSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mTokenName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " SignerVersion : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    const-string v8, "1"

    move-object v6, v8

    :cond_8e
    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a5

    const-string v3, "AASA_ASKSManager"

    const-string v7, "Signer Cert File is not matched with index!"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "21"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_a5
    const-string v9, "SIGNER"

    aget-object v8, v5, v8

    const/16 v10, 0xe

    invoke-direct {p0, v10, v9, v8}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c0

    const-string v3, "AASA_ASKSManager"

    const-string v7, "SIGNER is in CRL"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "21"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_c0
    const-string v8, "INTER"

    aget-object v7, v5, v7

    invoke-direct {p0, v10, v8, v7}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_d8

    const-string v3, "AASA_ASKSManager"

    const-string v7, "INTER is in CRL"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "21"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    return-object v3

    :cond_d8
    :goto_d8
    nop

    return-object v3

    :catch_da
    move-exception v3

    const-string v5, "AASA_ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "21"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5
    :try_end_fb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_fb} :catch_fc

    return-object v5

    :catch_fc
    move-exception v0

    const-string v1, "AASA_ASKSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "21"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private getADPDataFromXML(Ljava/util/HashMap;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ADPContainer;",
            ">;)V"
        }
    .end annotation

    const-string v1, "/data/system/.aasa/AASApolicy/ADP.xml"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "AASA_ASKSManager_ADP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file does not exist - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e4

    const/4 v0, 0x0

    move-object v5, v0

    :try_start_4d
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_52} :catch_54

    move-object v5, v0

    goto :goto_58

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_58
    :try_start_58
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_64
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_6f

    if-eq v7, v3, :cond_6f

    goto :goto_64

    :cond_6f
    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;-><init>()V

    move-object v8, v0

    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;-><init>()V

    :goto_7a
    move-object v9, v0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    if-eq v0, v3, :cond_1a9

    const/4 v0, 0x3

    if-eq v7, v0, :cond_124

    const/4 v0, 0x4

    if-ne v7, v0, :cond_8a

    goto/16 :goto_124

    :cond_8a
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const-string v0, "HASHVALUE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->set_pkgName(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    goto/16 :goto_11f

    :cond_a0
    const-string/jumbo v0, "versionType"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_a7} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_a7} :catch_1b6
    .catchall {:try_start_58 .. :try_end_a7} :catchall_1b1

    if-eqz v0, :cond_c2

    :try_start_a9
    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    :try_end_b8
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b8} :catch_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_b8} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b8} :catch_1b6
    .catchall {:try_start_a9 .. :try_end_b8} :catchall_1b1

    :goto_b8
    goto :goto_11f

    :catch_b9
    move-exception v0

    :try_start_ba
    const-string v11, "AASA_ASKSManager_ADP"

    const-string v12, "ERROR: does not match versionType"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    :cond_c2
    const-string/jumbo v0, "pattern"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto :goto_11f

    :cond_d3
    const-string/jumbo v0, "hashCode"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto :goto_11f

    :cond_e4
    const-string/jumbo v0, "sep"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    const/4 v11, 0x1

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_f2} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_f2} :catch_1b6
    .catchall {:try_start_ba .. :try_end_f2} :catchall_1b1

    move-object v12, v0

    :try_start_f3
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_fd
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_fd} :catch_101
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f3 .. :try_end_fd} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_fd} :catch_1b6
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_1b1

    if-lt v0, v13, :cond_100

    const/4 v11, 0x0

    :cond_100
    goto :goto_109

    :catch_101
    move-exception v0

    :try_start_102
    const-string v13, "AASA_ASKSManager_ADP"

    const-string v14, "NumberFormatExceptionn"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_109
    if-eqz v11, :cond_10e

    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->flush()V

    :cond_10e
    goto :goto_11f

    :cond_10f
    const-string/jumbo v0, "format"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    :cond_11f
    :goto_11f
    nop

    move-object/from16 v11, p1

    goto/16 :goto_1a2

    :cond_124
    :goto_124
    const-string v0, "HASHVALUE"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    const/4 v0, 0x0

    invoke-virtual {v8}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->createADPContainer()Lcom/android/server/asks/ADPContainer;

    move-result-object v10

    move-object v0, v10

    if-nez v0, :cond_155

    const-string v10, "AASA_ASKSManager_ADP"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not make ADP object"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p1

    goto :goto_161

    :cond_155
    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v10
    :try_end_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_102 .. :try_end_159} :catch_1c2
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_159} :catch_1b6
    .catchall {:try_start_102 .. :try_end_159} :catchall_1b1

    move-object/from16 v11, p1

    :try_start_15b
    invoke-virtual {v11, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->flush()V

    :goto_161
    goto :goto_1a2

    :cond_162
    move-object/from16 v11, p1

    const-string/jumbo v0, "pattern"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;

    move-result-object v0

    if-nez v0, :cond_192

    const-string v10, "AASA_ASKSManager_ADP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not make ADPPolicy object"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a1

    :cond_192
    invoke-virtual {v8}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->get_ADPPolicy()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_19b

    invoke-virtual {v8}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->set_ADPPolicy()Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    :cond_19b
    invoke-virtual {v8, v0}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->add_ADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    invoke-virtual {v9}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->flush()V
    :try_end_1a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15b .. :try_end_1a1} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_1a1} :catch_1a5
    .catchall {:try_start_15b .. :try_end_1a1} :catchall_1d5

    :goto_1a1
    nop

    :cond_1a2
    :goto_1a2
    move-object v0, v9

    goto/16 :goto_7a

    :catch_1a5
    move-exception v0

    goto :goto_1b9

    :catch_1a7
    move-exception v0

    goto :goto_1c5

    :cond_1a9
    move-object/from16 v11, p1

    if-eqz v5, :cond_1d4

    :try_start_1ad
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b0} :catch_1ce

    goto :goto_1d4

    :catchall_1b1
    move-exception v0

    move-object/from16 v11, p1

    :goto_1b4
    move-object v3, v0

    goto :goto_1d7

    :catch_1b6
    move-exception v0

    move-object/from16 v11, p1

    :goto_1b9
    :try_start_1b9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_1d5

    if-eqz v5, :cond_1d4

    :try_start_1be
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1ce

    goto :goto_1d4

    :catch_1c2
    move-exception v0

    move-object/from16 v11, p1

    :goto_1c5
    :try_start_1c5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1c8
    .catchall {:try_start_1c5 .. :try_end_1c8} :catchall_1d5

    if-eqz v5, :cond_1d4

    :try_start_1ca
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1ce

    goto :goto_1d4

    :catch_1ce
    move-exception v0

    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e6

    :cond_1d4
    :goto_1d4
    goto :goto_1e6

    :catchall_1d5
    move-exception v0

    goto :goto_1b4

    :goto_1d7
    if-eqz v5, :cond_1e3

    :try_start_1d9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1dc} :catch_1dd

    goto :goto_1e3

    :catch_1dd
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_1e3
    :goto_1e3
    throw v3

    :cond_1e4
    move-object/from16 v11, p1

    :goto_1e6
    return-void
.end method

.method private getASKSDataFromXML(ILjava/util/HashMap;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v0, ""

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    packed-switch p1, :pswitch_data_134

    :pswitch_c
    return-void

    :pswitch_d
    const-string v0, "/data/system/.aasa/AASApolicy/protection_list.xml"

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "digest"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_1c
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSHB.xml"

    const-string v3, "HASHVALUE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "HASH"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_29
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    const-string v3, "STORE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "DUMMY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_36
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    const-string v3, "CERT"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "NUM"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_43
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSTS.xml"

    const-string v3, "STORE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "DUMMY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_50
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSP.xml"

    const-string v3, "HASHVALUE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "UID"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_5d
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSB.xml"

    const-string v3, "HASHVALUE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "HASH"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :pswitch_6a
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSW.xml"

    const-string v3, "HASHVALUE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "HASH"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_77
    move-object v3, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_9e

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_9e
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a5

    return-void

    :cond_a5
    const/4 v0, 0x0

    move-object v7, v0

    :try_start_a7
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_ac} :catch_12f

    move-object v7, v0

    nop

    :try_start_ae
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v8, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const-string v11, ""

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    :goto_bf
    if-eq v12, v5, :cond_114

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    packed-switch v12, :pswitch_data_150

    goto :goto_10e

    :pswitch_c9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10e

    if-eqz v1, :cond_10e

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10e

    :pswitch_db
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f2

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    :cond_f2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v14

    goto :goto_10e

    :cond_f9
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10e

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_10e

    if-eqz v10, :cond_10e

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    :goto_10e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v12, v14

    goto :goto_bf

    :cond_114
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_117} :catch_124
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_117} :catch_119

    nop

    return-void

    :catch_119
    move-exception v0

    move-object v5, v0

    :try_start_11b
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_11f

    goto :goto_120

    :catch_11f
    move-exception v0

    :goto_120
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_124
    move-exception v0

    move-object v5, v0

    :try_start_126
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_12a

    goto :goto_12b

    :catch_12a
    move-exception v0

    :goto_12b
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :catch_12f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :pswitch_data_134
    .packed-switch 0x8
        :pswitch_6a
        :pswitch_5d
        :pswitch_50
        :pswitch_c
        :pswitch_43
        :pswitch_c
        :pswitch_36
        :pswitch_29
        :pswitch_c
        :pswitch_c
        :pswitch_1c
        :pswitch_d
    .end packed-switch

    :pswitch_data_150
    .packed-switch 0x2
        :pswitch_db
        :pswitch_c9
    .end packed-switch
.end method

.method private getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "00000000"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ASKS_FILE"

    const-string v3, "<asks version=\""

    const-string v4, "\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ASKS_RULE_FILE"

    const-string v3, "<VERSION value=\""

    const-string v4, "\"/>"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_21
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_59

    aget-object v5, v4, v6

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v6, v7, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_58

    aget-object v3, v5, v3
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_57} :catch_5a

    move-object v0, v3

    :cond_58
    goto :goto_5e

    :cond_59
    return-object v0

    :catch_5a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5e
    return-object v0
.end method

.method private getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_c

    move-object v3, v0

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_10
    move-object v4, v2

    :try_start_11
    new-instance v0, Ljava/util/jar/JarFile;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_13} :catch_157
    .catchall {:try_start_11 .. :try_end_13} :catchall_150

    move-object/from16 v5, p1

    :try_start_15
    invoke-direct {v0, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    nop

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    move-object v10, v0

    const/4 v0, 0x0

    :goto_2d
    move v11, v0

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_32} :catch_14e
    .catchall {:try_start_15 .. :try_end_32} :catchall_14c

    if-eqz v0, :cond_89

    add-int/lit8 v0, v11, 0x1

    :try_start_36
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/jar/JarEntry;

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "META-INF/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_49

    goto :goto_2d

    :cond_49
    const-string v13, "SEC-INF/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_52

    goto :goto_2d

    :cond_52
    const-string/jumbo v13, "token/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5c

    goto :goto_2d

    :cond_5c
    invoke-direct {v1, v4, v11, v3}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0xc350

    if-lt v0, v13, :cond_7d

    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/LinkedHashMap;

    move-object v10, v13

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    :cond_7d
    goto :goto_2d

    :catchall_7e
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v3

    goto/16 :goto_183

    :catch_84
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_15c

    :cond_89
    if-eqz v11, :cond_98

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v10, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_98} :catch_84
    .catchall {:try_start_36 .. :try_end_98} :catchall_7e

    :cond_98
    nop

    :try_start_99
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_14e
    .catchall {:try_start_99 .. :try_end_9c} :catchall_14c

    move-object v12, v2

    :try_start_9d
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_a3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9d .. :try_end_a3} :catch_a5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a3} :catch_84
    .catchall {:try_start_9d .. :try_end_a3} :catchall_7e

    move-object v12, v0

    goto :goto_a9

    :catch_a5
    move-exception v0

    :try_start_a6
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_a9
    const/4 v0, 0x0

    :goto_aa
    move v13, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_11b

    new-instance v0, Ljava/util/TreeMap;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c5
    move-object v15, v0

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v2, v16

    invoke-virtual {v14, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_dc} :catch_14e
    .catchall {:try_start_a6 .. :try_end_dc} :catchall_14c

    move-object/from16 v17, v0

    :try_start_de
    const-string v0, "ISO-8859-1"
    :try_end_e0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_de .. :try_end_e0} :catch_101
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e0} :catch_14e
    .catchall {:try_start_de .. :try_end_e0} :catchall_14c

    move-object/from16 v9, v17

    :try_start_e2
    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e2 .. :try_end_e6} :catch_fa
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e6} :catch_14e
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_14c

    move-object/from16 v18, v2

    :try_start_e8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_ec
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e8 .. :try_end_ec} :catch_f5
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ec} :catch_14e
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_14c

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :try_start_ef
    invoke-virtual {v12, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_f2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ef .. :try_end_f2} :catch_f3
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_14a
    .catchall {:try_start_ef .. :try_end_f2} :catchall_181

    goto :goto_10c

    :catch_f3
    move-exception v0

    goto :goto_109

    :catch_f5
    move-exception v0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_109

    :catch_fa
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_109

    :catch_101
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v9, v17

    const/4 v3, 0x0

    :goto_109
    :try_start_109
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_10c
    nop

    move-object v0, v15

    move-object/from16 v3, v19

    const/4 v2, 0x0

    goto :goto_c5

    :cond_112
    move-object/from16 v19, v3

    const/4 v3, 0x0

    add-int/lit8 v0, v13, 0x1

    move-object/from16 v3, v19

    const/4 v2, 0x0

    goto :goto_aa

    :cond_11b
    move-object/from16 v19, v3

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string v0, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " advanced hash::"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_13c} :catch_14a
    .catchall {:try_start_109 .. :try_end_13c} :catchall_181

    nop

    nop

    :try_start_13e
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_142

    goto :goto_148

    :catch_142
    move-exception v0

    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_149

    :goto_148
    nop

    :goto_149
    return-object v2

    :catch_14a
    move-exception v0

    goto :goto_15c

    :catchall_14c
    move-exception v0

    goto :goto_153

    :catch_14e
    move-exception v0

    goto :goto_15a

    :catchall_150
    move-exception v0

    move-object/from16 v5, p1

    :goto_153
    move-object/from16 v19, v3

    move-object v2, v0

    goto :goto_183

    :catch_157
    move-exception v0

    move-object/from16 v5, p1

    :goto_15a
    move-object/from16 v19, v3

    :goto_15c
    :try_start_15c
    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catchall {:try_start_15c .. :try_end_172} :catchall_181

    if-eqz v4, :cond_17e

    :try_start_174
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_178

    goto :goto_17e

    :catch_178
    move-exception v0

    move-object v2, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17f

    :cond_17e
    :goto_17e
    nop

    :goto_17f
    const/4 v2, 0x0

    return-object v2

    :catchall_181
    move-exception v0

    move-object v2, v0

    :goto_183
    if-eqz v4, :cond_18f

    :try_start_185
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_189

    goto :goto_18f

    :catch_189
    move-exception v0

    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_18f
    :goto_18f
    throw v2
.end method

.method private getApkFileHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_76

    move-object v3, v4

    nop

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_75

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_75

    nop

    const/16 v5, 0x1000

    :try_start_1c
    new-array v5, v5, [B

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v6

    const/4 v6, 0x0

    move v7, v6

    :goto_26
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v7, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_32

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_26

    :cond_32
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3f} :catch_49
    .catchall {:try_start_1c .. :try_end_3f} :catchall_47

    move-object v0, v6

    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_46

    :catch_44
    move-exception v5

    goto :goto_75

    :goto_46
    goto :goto_75

    :catchall_47
    move-exception v5

    goto :goto_6b

    :catch_49
    move-exception v5

    :try_start_4a
    const-string v6, "AASA_ASKSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ERROR: getApkFileHash:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_4a .. :try_end_60} :catchall_47

    nop

    if-eqz v2, :cond_69

    :try_start_63
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_69

    :catch_67
    move-exception v6

    goto :goto_6a

    :cond_69
    :goto_69
    nop

    :goto_6a
    return-object v0

    :goto_6b
    nop

    if-eqz v2, :cond_74

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_74

    :catch_72
    move-exception v6

    nop

    :cond_74
    :goto_74
    throw v5

    :cond_75
    :goto_75
    return-object v0

    :catch_76
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0
.end method

.method private getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getRestrictDataFromXML(Ljava/util/HashMap;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$Restrict;",
            ">;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "/data/system/.aasa/AASApolicy/ASKSRNEW.xml"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "AASA_ASKSManager_RESTRICTED"

    const-string v5, "There is no restict rule in system."

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-void

    :cond_1a
    :try_start_1a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :goto_2a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v8, :cond_36

    if-eq v7, v9, :cond_36

    goto :goto_2a

    :cond_36
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-string v12, "VERSION"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_53

    const-string/jumbo v12, "value"

    invoke-interface {v0, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    :cond_53
    :goto_53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v7, v12

    if-eq v12, v9, :cond_12e

    const/4 v12, 0x3

    if-ne v7, v12, :cond_d7

    const-string v12, "PACKAGE"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d2

    if-eqz v8, :cond_c4

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_6f} :catch_13c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_6f} :catch_133

    if-eqz v12, :cond_c4

    if-ne v4, v9, :cond_74

    goto :goto_c4

    :cond_74
    move-object/from16 v12, p2

    :try_start_76
    invoke-direct {v1, v8, v10, v12}, Lcom/android/server/asks/ASKSManagerService;->isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v14

    if-eqz v14, :cond_b3

    if-nez v11, :cond_90

    new-instance v20, Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "Policy"

    const/16 v19, 0x0

    move-object/from16 v14, v20

    move-object v15, v6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_8e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_8e} :catch_bf
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8e} :catch_ba

    move-object/from16 v11, v20

    :cond_90
    move-object/from16 v14, p1

    :try_start_92
    invoke-virtual {v14, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "AASA_ASKSManager_RESTRICTED"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    :cond_b3
    move-object/from16 v14, p1

    :goto_b5
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    goto :goto_df

    :catch_ba
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_138

    :catch_bf
    move-exception v0

    move-object/from16 v14, p1

    goto/16 :goto_141

    :cond_c4
    :goto_c4
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    const-string v9, "AASA_ASKSManager_RESTRICTED"

    const-string v13, "The package information is wrong."

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v4, 0x0

    goto :goto_df

    :cond_d2
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    goto :goto_e3

    :cond_d7
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    const/4 v9, 0x4

    if-ne v7, v9, :cond_e3

    nop

    :goto_df
    const/4 v9, 0x1

    const/4 v13, 0x0

    goto/16 :goto_53

    :cond_e3
    :goto_e3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v13, "PACKAGE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f9

    const-string/jumbo v13, "name"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    goto :goto_129

    :cond_f9
    const-string v13, "CERT"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10d

    const-string/jumbo v13, "value"

    const/4 v15, 0x0

    invoke-interface {v0, v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_129

    :cond_10d
    const/4 v15, 0x0

    const-string v13, "RESTRICT"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_129

    new-instance v13, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v13}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    move-object v11, v13

    const-string v13, "Policy"

    invoke-virtual {v11, v13}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    invoke-direct {v1, v0, v11, v6}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    :try_end_128
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_128} :catch_12c
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_128} :catch_12a

    nop

    :cond_129
    :goto_129
    goto :goto_df

    :catch_12a
    move-exception v0

    goto :goto_138

    :catch_12c
    move-exception v0

    goto :goto_141

    :cond_12e
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    goto :goto_144

    :catch_133
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    :goto_138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_145

    :catch_13c
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    :goto_141
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_144
    nop

    :goto_145
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_14d

    const/4 v0, 0x0

    move-object v14, v0

    :cond_14d
    return-void
.end method

.method private getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AASAASKS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_17} :catch_19

    move-object v0, v1

    :goto_18
    goto :goto_1d

    :catch_19
    move-exception v1

    goto :goto_1d

    :catch_1b
    move-exception v1

    goto :goto_18

    :goto_1d
    return-object v0
.end method

.method private getTokenContents([BI)[B
    .registers 12

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, p2

    :goto_7
    aget-byte v4, p1, v1

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1b

    const/4 v4, 0x5

    if-lt v3, v4, :cond_12

    const/4 v2, 0x1

    goto :goto_1b

    :cond_12
    aget-byte v4, p1, v1

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    if-ne v2, v1, :cond_25

    const-string v1, "22"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    :cond_25
    new-array v1, v3, [B

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v5, v4

    :try_start_2c
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_35} :catch_37

    move v5, v6

    goto :goto_3b

    :catch_37
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_3b
    new-array v6, v5, [B

    add-int v7, p2, v3

    const-string v8, ","

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {p1, v7, v6, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v6
.end method

.method private getTrustedFile()[Ljava/lang/String;
    .registers 8

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "getTrustedFile : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x3

    :try_start_d
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/system/.aasa/trustedTime"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    nop

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    nop

    :cond_1d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_31

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_1d

    array-length v5, v0

    if-ne v5, v4, :cond_1d

    nop

    :cond_31
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_34} :catch_3e
    .catchall {:try_start_d .. :try_end_34} :catchall_3c

    nop

    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3b

    :catch_39
    move-exception v5

    goto :goto_48

    :cond_3b
    :goto_3b
    goto :goto_48

    :catchall_3c
    move-exception v2

    goto :goto_4f

    :catch_3e
    move-exception v5

    :try_start_3f
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_3c

    if-eqz v3, :cond_3b

    :try_start_44
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_39

    goto :goto_3b

    :goto_48
    if-eqz v0, :cond_4e

    array-length v5, v0

    if-ne v5, v4, :cond_4e

    return-object v0

    :cond_4e
    return-object v2

    :goto_4f
    nop

    if-eqz v3, :cond_58

    :try_start_52
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_58

    :catch_56
    move-exception v4

    nop

    :cond_58
    :goto_58
    throw v2
.end method

.method private getTrustedToday()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "security.ASKS.time_value"

    const-string v1, "00000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_13
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedTodayInner()Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method private getTrustedTodayInner()Ljava/lang/String;
    .registers 12

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    goto :goto_4b

    :cond_1a
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AASA_ASKSManager_SECURETIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getElapsedToday : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_4b
    :goto_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasTrustedTime()Z
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/trustedTime"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private isAASAToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "token"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string v5, "Token.xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setAASATokenPath(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setAASATokenName(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    const-string v6, "REVOKE"

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    const-string v6, "20200220"

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    const-string v6, "AASA"

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4b} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4b} :catch_55
    .catchall {:try_start_2 .. :try_end_4b} :catchall_53

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    goto :goto_d

    :cond_4e
    :goto_4e
    nop

    :goto_4f
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_89

    :catchall_53
    move-exception v2

    goto :goto_8a

    :catch_55
    move-exception v2

    :try_start_56
    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_IsToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_89

    goto :goto_4f

    :catch_6f
    move-exception v2

    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_IsToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_56 .. :try_end_86} :catchall_53

    if-eqz v1, :cond_89

    goto :goto_4f

    :cond_89
    :goto_89
    return v0

    :goto_8a
    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_8f
    throw v2
.end method

.method private isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    nop

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SEC-INF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v5, "buildinfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCodePath(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setTokenName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEC-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "buildConfirm.crt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCertName(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_97

    :cond_50
    const-string v5, "META-INF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    const-string v5, "SEC-INF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_95

    const-string v5, "buildinfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCodePath(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setTokenName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "META-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "SEC-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "buildConfirm.crt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCertName(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_93} :catch_9e
    .catchall {:try_start_2 .. :try_end_93} :catchall_9c

    const/4 v0, 0x1

    goto :goto_97

    :cond_95
    goto/16 :goto_d

    :cond_97
    :goto_97
    nop

    :goto_98
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    goto :goto_b8

    :catchall_9c
    move-exception v2

    goto :goto_b9

    :catch_9e
    move-exception v2

    :try_start_9f
    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ERROR: AASA_ASKSIsToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_9f .. :try_end_b5} :catchall_9c

    if-eqz v1, :cond_b8

    goto :goto_98

    :cond_b8
    :goto_b8
    return v0

    :goto_b9
    if-eqz v1, :cond_be

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    :cond_be
    throw v2
.end method

.method private isAutoTimeEnabled(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "isAutoTimeEnabled : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_13

    const-string v1, "AASA_ASKSManager_SECURETIME"

    const-string v2, "context is null. "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13
    nop

    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    const-string v1, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v2, "isAutoTimeEnabled : ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_34

    :cond_2b
    const-string v1, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v2, "isAutoTimeEnabled : OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_14 .. :try_end_33} :catch_35

    const/4 v0, 0x0

    :goto_34
    goto :goto_3a

    :catch_35
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_3a
    return v0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    nop

    const/4 v0, 0x1

    return v0

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I
    .registers 11

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v5, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    aput-object v5, v1, v3

    const/4 v3, 0x3

    const-string v5, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    aput-object v5, v1, v3

    const/4 v3, 0x4

    const-string v5, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    aput-object v5, v1, v3

    const/4 v3, 0x5

    const-string v5, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    aput-object v5, v1, v3

    const/4 v3, 0x6

    const-string v5, "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa"

    aput-object v5, v1, v3

    const/4 v3, 0x7

    const-string v5, "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad"

    aput-object v5, v1, v3

    const/16 v3, 0x8

    const-string v5, "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665"

    aput-object v5, v1, v3

    const/16 v3, 0x9

    const-string v5, "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c"

    aput-object v5, v1, v3

    iget-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v3, :cond_49

    const-string v3, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    aput-object v3, v1, v2

    :cond_49
    if-eqz p2, :cond_73

    move v2, v0

    move v0, v4

    :goto_4d
    array-length v3, p2

    if-ge v0, v3, :cond_72

    aget-object v3, p2, v0

    if-eqz v3, :cond_6f

    move v3, v4

    :goto_55
    array-length v5, v1

    if-ge v3, v5, :cond_6f

    aget-object v5, v1, v3

    aget-object v6, p2, v0

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6c

    move v2, v3

    goto :goto_6f

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_72
    move v0, v2

    :cond_73
    const/4 v2, -0x1

    if-ne v0, v2, :cond_c4

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c4

    if-eqz p2, :cond_c4

    nop

    :goto_86
    array-length v5, p2

    if-ge v4, v5, :cond_c4

    aget-object v5, p2, v4

    if-eqz v5, :cond_c1

    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct {p0, v6, v5, v7}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_c1

    const-string v2, "AASA_ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signValue is same with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    goto :goto_c4

    :cond_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    :cond_c4
    :goto_c4
    return v0
.end method

.method private isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    :cond_10
    const/4 v2, 0x0

    if-nez v1, :cond_43

    if-eqz p3, :cond_42

    if-eqz p1, :cond_42

    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "AASA_ASKSManager_RESTRICTED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTargetPackage() : There is no information of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", check current session."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getSignature()[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_47

    :cond_42
    return v2

    :cond_43
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    :goto_47
    if-eqz v0, :cond_90

    array-length v3, v0

    if-lez v3, :cond_90

    const-string v3, ""

    move-object v4, v3

    move v3, v2

    :goto_50
    array-length v5, v0

    if-ge v3, v5, :cond_74

    aget-object v5, v0, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_5a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_71

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6e

    const/4 v2, 0x1

    return v2

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_74
    const-string v3, "AASA_ASKSManager_RESTRICTED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTargetPackage() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not matched to target certificates."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return v2
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_5

    return-object v1

    :cond_5
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x0

    const/16 v3, 0x1000

    new-array v4, v3, [B

    if-eqz v0, :cond_21

    :goto_11
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v2, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1e

    invoke-virtual {p3, v4, v5, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_11

    :cond_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_21
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_27} :catch_2a

    move-object v1, v3

    nop

    :cond_29
    return-object v1

    :catch_2a
    move-exception v2

    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCert(md) : TinyAASA + No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_72

    :try_start_48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_72

    :catch_4c
    move-exception v3

    goto :goto_72

    :catch_4e
    move-exception v2

    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCert(md) : TinyAASA + No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_71

    :try_start_6c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v3

    :cond_71
    :goto_71
    nop

    :cond_72
    :goto_72
    return-object v1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10

    const/4 v0, 0x0

    move-object v1, v0

    if-eqz p2, :cond_64

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_18

    :goto_b
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_18
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v2

    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCert(B) : No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_65

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_65

    :catch_3f
    move-exception v3

    goto :goto_65

    :catch_41
    move-exception v2

    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadCert(B) : No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_64

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v3

    :cond_64
    :goto_64
    nop

    :cond_65
    :goto_65
    return-object v0
.end method

.method public static main(Landroid/content/Context;)Lcom/android/server/asks/ASKSManagerService;
    .registers 4

    const-string v0, "ASKSManager"

    const-string/jumbo v1, "main starts"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/asks/ASKSManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    const-string v1, "asks"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v1, "ASKSManager"

    const-string/jumbo v2, "main ends"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private openSession(Ljava/lang/String;)Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    invoke-virtual {v0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPackageName(Ljava/lang/String;)V

    return-object v0

    :cond_19
    new-instance v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;-><init>()V

    move-object v0, v1

    invoke-virtual {v0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private parsePackageForAASA(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->setAASACertFile()V

    :try_start_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/asks/ASKSManagerService;->isAASAToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "AASA_ASKSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AASA target : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, p3}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V

    :cond_3b
    if-eqz p4, :cond_43

    move-object v1, p4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setManifestPermission(Ljava/util/ArrayList;)V

    :cond_43
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/asks/ASKSManagerService;->verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result v2

    move v1, v2

    if-nez v2, :cond_5b

    const-string v2, "AASA_ASKSManager"

    const-string v3, "AASA OK"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5b
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    goto :goto_64

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_64
    return v0
.end method

.method private parsePackageForASKS(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)I
    .registers 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, -0x1

    const-string v3, "0x1"

    const-string/jumbo v4, "ro.boot.em.status"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "ro.build.official.release"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v3, v8, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v3, :cond_2f

    const/4 v0, 0x0

    const/4 v1, 0x1

    :cond_2f
    move v15, v0

    move v14, v1

    const-string v1, ""

    const-string v0, ""

    move-object v3, v0

    :try_start_36
    invoke-direct {v8, v10}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {v9, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgNameHash(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {v8, v11}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v9, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_52} :catch_53

    :cond_52
    goto :goto_54

    :catch_53
    move-exception v0

    :goto_54
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    const/16 v0, 0x9

    const/4 v7, 0x0

    :try_start_5b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_8b

    if-eqz v14, :cond_6e

    const/4 v0, -0x7

    return v0

    :cond_6e
    const-string v0, "AASA_ASKSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in BlackList, so fail to install"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AASA_ASKSManager"

    const-string v1, "anyway continue to install since this binary is not official"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    invoke-direct {v8, v9, v11}, Lcom/android/server/asks/ASKSManagerService;->isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z

    move-result v0

    const/16 v5, 0x8

    if-eqz v0, :cond_17d

    const/4 v2, 0x0

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {v8, v0, v12, v1}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_a1

    const/4 v0, 0x1

    :goto_9e
    move/from16 v18, v0

    goto :goto_ad

    :cond_a1
    const/16 v0, 0xa

    invoke-direct {v8, v0, v10, v1}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_a7} :catch_1f0

    if-eq v0, v6, :cond_ab

    const/4 v0, 0x1

    goto :goto_9e

    :cond_ab
    move/from16 v18, v2

    :goto_ad
    const/4 v0, -0x1

    const/16 v19, 0x1

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    move/from16 v20, v0

    move v0, v5

    move/from16 v5, v18

    move/from16 v6, v19

    move v11, v7

    move/from16 v7, p6

    :try_start_be
    invoke-direct/range {v1 .. v7}, Lcom/android/server/asks/ASKSManagerService;->verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_ce

    const-string v0, "AASA_ASKSManager"

    const-string v1, "ASKS OK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_173

    :cond_ce
    if-eqz v14, :cond_151

    rem-int/lit8 v1, v2, 0xa

    const/4 v3, 0x3

    if-lt v1, v3, :cond_d7

    if-nez v15, :cond_f2

    :cond_d7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v2, v1, v12}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_f2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_139

    rem-int/lit8 v1, v2, 0xa
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_103} :catch_178

    packed-switch v1, :pswitch_data_2da

    :pswitch_106
    const/4 v1, -0x7

    goto :goto_117

    :pswitch_108
    const/16 v1, -0xbbe

    goto :goto_117

    :pswitch_10b
    const/16 v1, -0xbb9

    goto :goto_117

    :pswitch_10e
    const/16 v1, -0xbb8

    goto :goto_117

    :pswitch_111
    const/16 v1, -0xbba

    goto :goto_117

    :pswitch_114
    const/16 v1, -0xbbc

    nop

    :goto_117
    :try_start_117
    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", returnValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_135} :catch_136

    return v1

    :catch_136
    move-exception v0

    move v13, v1

    goto :goto_179

    :cond_139
    :try_start_139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1, v12}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_173

    :cond_151
    const-string v0, "AASA_ASKSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fail to install"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AASA_ASKSManager"

    const-string v1, "anyway continue to install since this binary is not official"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_173} :catch_178

    :goto_173
    nop

    move/from16 v2, v18

    goto/16 :goto_1ed

    :catch_178
    move-exception v0

    :goto_179
    move/from16 v2, v18

    goto/16 :goto_1f2

    :cond_17d
    move v0, v5

    move v1, v6

    move v11, v7

    :try_start_180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v0, v3, v4}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1b2

    if-eqz v14, :cond_1ed

    if-nez v15, :cond_1af

    const/16 v1, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v1, v3, v12}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1af
    const/16 v1, -0xbbb

    return v1

    :cond_1b2
    if-eqz v14, :cond_1ed

    if-nez v15, :cond_1cd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v11, v1, v12}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1cd
    if-eqz p7, :cond_1ed

    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Is installation of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " blocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_1ea} :catch_1ee

    const/16 v3, -0xbbb

    return v3

    :cond_1ed
    :goto_1ed
    goto :goto_20c

    :catch_1ee
    move-exception v0

    goto :goto_1f2

    :catch_1f0
    move-exception v0

    move v11, v7

    :goto_1f2
    const-string v3, "AASA_ASKSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20c
    const-string v0, "com.sec.android.preloadinstaller"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bd

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v8, v0}, Lcom/android/server/asks/ASKSManagerService;->getADPDataFromXML(Ljava/util/HashMap;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2bd

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AASA_ASKSManager_ADP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "target ADP - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/ADPContainer;

    invoke-virtual {v4}, Lcom/android/server/asks/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/asks/ADPOperation;->isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/asks/ADPOperation;->filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2b5

    const-string v6, "AASA_ASKSManager_ADP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "target list has size "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    if-eqz v6, :cond_2ab

    const-string v7, "AASA_ASKSManager_ADP"

    const-string/jumbo v11, "picked one adp policy"

    invoke-static {v7, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result v7

    if-nez v7, :cond_2b5

    const-string v7, "AASA_ASKSManager_ADP"

    const-string/jumbo v11, "install fail, cannot back to the previous version"

    invoke-static {v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0xbbd

    return v7

    :cond_2ab
    const-string v7, "AASA_ASKSManager_ADP"

    const-string v11, "cannot get target policy"

    invoke-static {v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0xbbd

    return v7

    :cond_2b5
    const-string v6, "AASA_ASKSManager_ADP"

    const-string/jumbo v7, "successs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2bd
    const-string v0, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is installing.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    nop

    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_114
        :pswitch_111
        :pswitch_106
        :pswitch_10e
        :pswitch_10b
        :pswitch_108
    .end packed-switch
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "NONE"

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method private parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_53

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_4e

    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eq v3, v1, :cond_27

    const-string v1, "AASA_ASKSManager"

    const-string/jumbo v3, "this is an exceptional case"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_2f
    if-eqz p3, :cond_4e

    const-string v3, "PERMISSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-eq v3, v1, :cond_47

    const-string v1, "AASA_ASKSManager"

    const-string/jumbo v3, "this is an exceptional case for permission"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    :cond_53
    return-void
.end method

.method private readDeletable(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v0, :cond_27

    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "datelimit"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_26

    if-nez v2, :cond_1d

    goto :goto_26

    :cond_1d
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v3, v1, v2}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_27

    :cond_26
    :goto_26
    return-void

    :cond_27
    :goto_27
    return-void
.end method

.method private readEMMode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setEMMode(I)V

    :cond_1d
    return-void
.end method

.method private readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_16
    :goto_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_75

    const/4 v3, 0x3

    if-ne v4, v3, :cond_27

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_75

    :cond_27
    if-eq v4, v3, :cond_16

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2d

    goto :goto_16

    :cond_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "restrict"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-direct {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrict(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_74

    :cond_3e
    const-string/jumbo v5, "emmode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-direct {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readEMMode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_74

    :cond_4b
    const-string v5, "delete"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-direct {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readDeletable(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_74

    :cond_57
    const-string v5, "ASKSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <pkg>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_74
    goto :goto_16

    :cond_75
    return-void
.end method

.method private readPermissionList(ILorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "permission"

    const-string/jumbo v5, "value"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "PERMISSION"

    const-string v6, "PEM"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    if-eq v4, v2, :cond_7e

    const/4 v4, 0x3

    if-ne v5, v4, :cond_3b

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_7e

    :cond_3b
    if-eq v5, v4, :cond_2b

    const/4 v4, 0x4

    if-ne v5, v4, :cond_41

    goto :goto_2b

    :cond_41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x0

    invoke-interface {p2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {p2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    goto :goto_2b

    :cond_7e
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_85

    const/4 p3, 0x0

    :cond_85
    return-void
.end method

.method private readRestrict(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    :cond_16
    return-void
.end method

.method private readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "datelimit"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p3, :cond_1b

    const-string/jumbo v6, "version"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, p3

    :goto_1c
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2a

    const-string/jumbo v6, "from"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_29
    goto :goto_2f

    :cond_2a
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :goto_2f
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_35

    move v7, v6

    goto :goto_36

    :cond_35
    move v7, v4

    :goto_36
    if-nez v1, :cond_3a

    move v4, v6

    nop

    :cond_3a
    or-int/2addr v4, v7

    if-nez v4, :cond_64

    if-eqz v3, :cond_64

    if-nez v2, :cond_42

    goto :goto_64

    :cond_42
    const-string v4, "REVOKE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    invoke-direct {p0, v6, p1, v5}, Lcom/android/server/asks/ASKSManagerService;->readPermissionList(ILorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    nop

    :cond_54
    invoke-virtual {p2, v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V

    return-void

    :cond_64
    :goto_64
    const/4 p2, 0x0

    return-void
.end method

.method private readState()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1ab

    :try_start_4
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_184
    .catchall {:try_start_4 .. :try_end_a} :catchall_182

    nop

    nop

    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_182

    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2b

    if-eq v5, v6, :cond_2b

    goto :goto_1f

    :cond_2b
    if-ne v5, v7, :cond_96

    const/4 v4, 0x0

    const-string/jumbo v7, "version"

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    sput-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string/jumbo v7, "security.ASKS.policy_version"

    sget-object v8, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    :cond_45
    :goto_45
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v5, v8

    if-eq v8, v6, :cond_89

    const/4 v8, 0x3

    if-ne v5, v8, :cond_55

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_89

    :cond_55
    if-eq v5, v8, :cond_45

    const/4 v8, 0x4

    if-ne v5, v8, :cond_5b

    goto :goto_45

    :cond_5b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PACKAGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6b

    invoke-direct {p0, v3}, Lcom/android/server/asks/ASKSManagerService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_88

    :cond_6b
    const-string v9, "ASKSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <asks>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_88
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_88} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_88} :catch_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_88} :catch_10a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_88} :catch_e8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_88} :catch_c5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_88} :catch_a2
    .catchall {:try_start_12 .. :try_end_88} :catchall_9f

    :goto_88
    goto :goto_45

    :cond_89
    const/4 v2, 0x1

    if-nez v2, :cond_91

    :try_start_8c
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_182

    :cond_91
    :try_start_91
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_170
    .catchall {:try_start_91 .. :try_end_94} :catchall_182

    goto/16 :goto_16f

    :cond_96
    :try_start_96
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9f
    .catch Ljava/lang/IllegalStateException; {:try_start_96 .. :try_end_9f} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_96 .. :try_end_9f} :catch_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_9f} :catch_10a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_96 .. :try_end_9f} :catch_e8
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_c5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_96 .. :try_end_9f} :catch_a2
    .catchall {:try_start_96 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v3

    goto/16 :goto_175

    :catch_a2
    move-exception v3

    :try_start_a3
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_a3 .. :try_end_b9} :catchall_9f

    if-nez v2, :cond_c0

    :try_start_bb
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_182

    :cond_c0
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_170
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_182

    goto/16 :goto_16f

    :catch_c5
    move-exception v3

    :try_start_c6
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catchall {:try_start_c6 .. :try_end_dc} :catchall_9f

    if-nez v2, :cond_e3

    :try_start_de
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_182

    :cond_e3
    :try_start_e3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_170
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_182

    goto/16 :goto_16f

    :catch_e8
    move-exception v3

    :try_start_e9
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_9f

    if-nez v2, :cond_106

    :try_start_101
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_182

    :cond_106
    :try_start_106
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_170
    .catchall {:try_start_106 .. :try_end_109} :catchall_182

    goto :goto_16f

    :catch_10a
    move-exception v3

    :try_start_10b
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_10b .. :try_end_121} :catchall_9f

    if-nez v2, :cond_128

    :try_start_123
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_128
    .catchall {:try_start_123 .. :try_end_128} :catchall_182

    :cond_128
    :try_start_128
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_170
    .catchall {:try_start_128 .. :try_end_12b} :catchall_182

    goto :goto_16f

    :catch_12c
    move-exception v3

    :try_start_12d
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_12d .. :try_end_143} :catchall_9f

    if-nez v2, :cond_14a

    :try_start_145
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_14a
    .catchall {:try_start_145 .. :try_end_14a} :catchall_182

    :cond_14a
    :try_start_14a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_170
    .catchall {:try_start_14a .. :try_end_14d} :catchall_182

    goto :goto_16f

    :catch_14e
    move-exception v3

    :try_start_14f
    const-string v4, "ASKSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catchall {:try_start_14f .. :try_end_165} :catchall_9f

    if-nez v2, :cond_16c

    :try_start_167
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_16c
    .catchall {:try_start_167 .. :try_end_16c} :catchall_182

    :cond_16c
    :try_start_16c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_170
    .catchall {:try_start_16c .. :try_end_16f} :catchall_182

    :goto_16f
    goto :goto_172

    :catch_170
    move-exception v3

    nop

    :goto_172
    :try_start_172
    monitor-exit p0
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_182

    :try_start_173
    monitor-exit v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_1ab

    return-void

    :goto_175
    if-nez v2, :cond_17c

    :try_start_177
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_17c
    .catchall {:try_start_177 .. :try_end_17c} :catchall_182

    :cond_17c
    :try_start_17c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_180
    .catchall {:try_start_17c .. :try_end_17f} :catchall_182

    goto :goto_181

    :catch_180
    move-exception v4

    :goto_181
    :try_start_181
    throw v3

    :catchall_182
    move-exception v1

    goto :goto_1a9

    :catch_184
    move-exception v1

    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing asks rules "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; starting empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1a7
    .catchall {:try_start_181 .. :try_end_1a7} :catchall_182

    :try_start_1a7
    monitor-exit v0
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_1ab

    return-void

    :goto_1a9
    :try_start_1a9
    monitor-exit p0
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_182

    :try_start_1aa
    throw v1

    :catchall_1ab
    move-exception v1

    monitor-exit v0
    :try_end_1ad
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_1ab

    throw v1
.end method

.method private readyForBooting(Landroid/content/Context;)V
    .registers 11

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "readyForBooting : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_12

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string v1, "context is null. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-lez v0, :cond_2c

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_57

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_57

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_47

    const/4 v2, 0x2

    :cond_47
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v3, p0

    move v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    :cond_57
    :goto_57
    return-void
.end method

.method private setAASACertFile()V
    .registers 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "/system/etc/aasa_real_crt2.crt"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CERT_FILE:Ljava/lang/String;

    goto :goto_f

    :cond_b
    const-string v0, "/system/etc/aasa_test_crt2.crt"

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CERT_FILE:Ljava/lang/String;

    :goto_f
    return-void
.end method

.method private setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/SamsungAnalyticsLog"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-gez v1, :cond_3f

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3f} :catch_40

    :cond_3f
    goto :goto_58

    :catch_40
    move-exception v0

    const-string v1, "AASA_ASKSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSamsungAnalyticsLog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void
.end method

.method private setTrustTimeByToken(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertStringToMills(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    return-void
.end method

.method private setTrustedFile(IJJ)V
    .registers 11

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "setTrustedFile : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string/jumbo v1, "security.ASKS.time_value"

    invoke-direct {p0, p2, p3}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_13
    new-instance v1, Ljava/io/PrintWriter;

    const-string v2, "/data/system/.aasa/trustedTime"

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_45} :catch_4c
    .catchall {:try_start_13 .. :try_end_45} :catchall_4a

    nop

    :goto_46
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_67

    :catchall_4a
    move-exception v1

    goto :goto_68

    :catch_4c
    move-exception v1

    :try_start_4d
    const-string v2, "AASA_ASKSManager_SECURETIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrustedTime() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_4a

    if-eqz v0, :cond_67

    goto :goto_46

    :cond_67
    :goto_67
    return-void

    :goto_68
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_6d
    throw v1
.end method

.method private toChars([B)[C
    .registers 14

    move-object v0, p1

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    new-array v3, v2, [C

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_35

    aget-byte v5, v0, v4

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    mul-int/lit8 v7, v4, 0x2

    const/16 v8, 0x30

    const/16 v9, 0x61

    const/16 v10, 0xa

    if-lt v6, v10, :cond_1d

    add-int v11, v9, v6

    sub-int/2addr v11, v10

    goto :goto_1f

    :cond_1d
    add-int v11, v8, v6

    :goto_1f
    int-to-char v11, v11

    aput-char v11, v3, v7

    and-int/lit8 v6, v5, 0xf

    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v10, :cond_2d

    add-int/2addr v9, v6

    sub-int/2addr v9, v10

    goto :goto_2f

    :cond_2d
    add-int v9, v8, v6

    :goto_2f
    int-to-char v8, v9

    aput-char v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_35
    return-object v3
.end method

.method private updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .registers 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/asks/ASKSManagerService;->getRestrictDataFromXML(Ljava/util/HashMap;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "AASA_ASKSManager_RESTRICTED"

    const-string v5, "There is no restricted rule."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_19
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    if-eqz v4, :cond_12d

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12d

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v8

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v8, :cond_82

    const-string v10, "Token"

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_82

    const-string v10, "AASA_ASKSManager_RESTRICTED"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRestictRule() : current restricted rule("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") is from Token. Skipped."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_82
    if-eqz v8, :cond_98

    if-eqz v8, :cond_b9

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-le v10, v11, :cond_b9

    :cond_98
    invoke-virtual {v7, v9}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    const-string v10, "AASA_ASKSManager_RESTRICTED"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "update restricted rule(POLICY) for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_b9
    goto :goto_12b

    :cond_ba
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v8

    if-eqz v8, :cond_f3

    const-string v8, "Policy"

    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    const-string v8, "AASA_ASKSManager_RESTRICTED"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateRestrictRule() : remove restricted rule for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_12b

    :cond_f3
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v8

    if-eqz v8, :cond_12b

    const-string v8, "Token"

    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12b

    const-string v8, "AASA_ASKSManager_RESTRICTED"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateRestictRule() : current restricted rule("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") is from Token. not removed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12b
    :goto_12b
    goto/16 :goto_2f

    :cond_12d
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_135
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    if-eqz v6, :cond_152

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    goto :goto_135

    :cond_152
    const-string v6, "AASA_ASKSManager_RESTRICTED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRestrictRule() : new restricted rule for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v6, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    iget-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_135

    :cond_18a
    return v1
.end method

.method private updateRestrictedTargetPackages()V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    if-eqz v5, :cond_43

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_43
    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_55

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "DENY"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    :goto_55
    goto :goto_15

    :cond_56
    invoke-static {v0}, Landroid/content/pm/ASKSManager;->updateRestrictedTargetPackages(Ljava/util/HashMap;)V

    return-void
.end method

.method private verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I
    .registers 72
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    const-string v0, "AASA_ASKSManager"

    const-string v6, " AASA_VerifyToken START"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v12

    packed-switch v4, :pswitch_data_b68

    goto :goto_38

    :pswitch_1d
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_38

    :pswitch_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getAASATokenPath()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getAASATokenName()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_31} :catch_36
    .catchall {:try_start_1d .. :try_end_31} :catchall_33

    move-object v9, v0

    goto :goto_38

    :catchall_33
    move-exception v0

    goto/16 :goto_b62

    :catch_36
    move-exception v0

    goto :goto_78

    :goto_38
    :try_start_38
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, v8}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_76
    .catchall {:try_start_38 .. :try_end_3d} :catchall_72

    move-object v10, v0

    if-nez p4, :cond_4a

    :try_start_40
    const-string v0, "/data/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_36
    .catchall {:try_start_40 .. :try_end_46} :catchall_33

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    move v6, v0

    :cond_4a
    :try_start_4a
    invoke-virtual {v10, v9}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_76
    .catchall {:try_start_4a .. :try_end_4e} :catchall_72

    move-object v11, v0

    if-eqz v11, :cond_6b

    move-object v15, v13

    :try_start_52
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v12

    long-to-int v0, v12

    new-array v0, v0, [B

    invoke-direct {v1, v10, v11, v0}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v12
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5d} :catch_68
    .catchall {:try_start_52 .. :try_end_5d} :catchall_64

    move-object v13, v12

    :try_start_5e
    invoke-direct {v1, v2, v4, v0}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B)[B

    move-result-object v12
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_36
    .catchall {:try_start_5e .. :try_end_62} :catchall_33

    move-object v7, v12

    goto :goto_6c

    :catchall_64
    move-exception v0

    move-object v13, v15

    goto/16 :goto_b62

    :catch_68
    move-exception v0

    move-object v13, v15

    goto :goto_78

    :cond_6b
    move-object v15, v13

    :goto_6c
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    move/from16 v17, v6

    goto :goto_95

    :catchall_72
    move-exception v0

    move-object v15, v13

    goto/16 :goto_b62

    :catch_76
    move-exception v0

    move-object v15, v13

    :goto_78
    :try_start_78
    const-string v12, "AASA_ASKSManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_b5f

    move/from16 v17, v6

    :try_start_81
    const-string v6, " ERROR: AASA_VerifyToken "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_b5b

    if-eqz v10, :cond_95

    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_95
    :goto_95
    const/16 v0, 0x16

    if-nez v7, :cond_a1

    const-string v6, "AASA_ASKSManager"

    const-string v12, " ERROR: plz check certification in the device - Fail to check integrity"

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a1
    array-length v6, v7

    const/4 v14, 0x1

    if-eq v6, v14, :cond_b41

    array-length v6, v7

    const/4 v14, 0x2

    if-ne v6, v14, :cond_af

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    goto/16 :goto_b45

    :cond_af
    if-nez v13, :cond_b9

    const-string v6, "AASA_ASKSManager"

    const-string v12, " ERROR: plz check certification in the device - Fail to read Token"

    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b9
    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_bb
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object/from16 v19, v0

    move-object/from16 v12, v19

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object/from16 v20, v0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v14, v20

    const/4 v11, 0x0

    invoke-interface {v14, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_d4} :catch_b1b

    const/4 v0, 0x1

    :try_start_d5
    const-string v11, "MODE"

    invoke-direct {v1, v14, v11}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/android/server/asks/ASKSManagerService;->isInteger(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e4

    const/16 v15, 0x15

    return v15

    :cond_e4
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_ed} :catch_aec
    .catch Ljava/lang/NumberFormatException; {:try_start_d5 .. :try_end_ed} :catch_abf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_ed} :catch_b1b

    move-object/from16 v22, v0

    packed-switch v15, :pswitch_data_b70

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    move-object/from16 v47, v22

    const/16 v1, 0x15

    return v1

    :pswitch_101
    const/4 v0, 0x1

    if-ne v4, v0, :cond_17f

    :try_start_104
    const-string v23, "PACKAGE"

    const-string v24, "DIGEST"

    const-string v25, "CREATE"

    const-string v26, "MODELS"

    const-string v27, "CARRIERS"

    const-string v28, "EXPIRED"

    const-string v29, "RESTRICT"

    const-string v30, "DATELIMIT"

    const-string v31, "CROSSDOWN"

    const-string v32, "RUFS"

    const-string v33, "BEFORE"

    const-string v34, "AFTER"

    const-string v35, "CHECK"

    const-string v36, "EMMODE"

    const-string v37, "ADPMODELS"

    const-string v38, "ADPCARRIERS"

    const-string v39, "ASKSRNEWMODELS"

    const-string v40, "ASKSRNEWCARRIERS"

    filled-new-array/range {v23 .. v40}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_130} :catch_170
    .catch Ljava/lang/NumberFormatException; {:try_start_104 .. :try_end_130} :catch_161
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_104 .. :try_end_130} :catch_156

    move-object/from16 v41, v6

    move-object/from16 v6, v22

    :try_start_134
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_14f
    .catch Ljava/lang/NumberFormatException; {:try_start_134 .. :try_end_137} :catch_148
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_137} :catch_141

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    goto/16 :goto_27a

    :catch_141
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    goto/16 :goto_1bc

    :catch_148
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    goto/16 :goto_1c1

    :catch_14f
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    goto/16 :goto_1c6

    :catch_156
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    goto/16 :goto_b24

    :catch_161
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_acc

    :catch_170
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_af9

    :cond_17f
    move-object/from16 v41, v6

    move-object/from16 v6, v22

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    goto/16 :goto_27a

    :pswitch_18d
    move-object/from16 v41, v6

    move-object/from16 v6, v22

    const/4 v0, 0x1

    if-ne v4, v0, :cond_255

    if-eqz v17, :cond_20a

    :try_start_196
    const-string v0, "AASA_ASKSManager"
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_198} :catch_1fd
    .catch Ljava/lang/NumberFormatException; {:try_start_196 .. :try_end_198} :catch_1f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_196 .. :try_end_198} :catch_1e7

    move-object/from16 v42, v8

    :try_start_19a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19f} :catch_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_19a .. :try_end_19f} :catch_1d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19a .. :try_end_19f} :catch_1ca

    move-object/from16 v43, v9

    :try_start_1a1
    const-string v9, "Violate security policy of MSTG. Package("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") is blocked. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->writeBlockApkList(Ljava/lang/String;)V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1b8} :catch_1c5
    .catch Ljava/lang/NumberFormatException; {:try_start_1a1 .. :try_end_1b8} :catch_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a1 .. :try_end_1b8} :catch_1bb

    const/16 v0, 0xf

    return v0

    :catch_1bb
    move-exception v0

    :goto_1bc
    move-object/from16 v44, v10

    goto/16 :goto_b24

    :catch_1c0
    move-exception v0

    :goto_1c1
    move-object/from16 v44, v10

    goto/16 :goto_ab4

    :catch_1c5
    move-exception v0

    :goto_1c6
    move-object/from16 v44, v10

    goto/16 :goto_aba

    :catch_1ca
    move-exception v0

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    goto/16 :goto_b24

    :catch_1d1
    move-exception v0

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_acc

    :catch_1dc
    move-exception v0

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_af9

    :catch_1e7
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    goto/16 :goto_b24

    :catch_1f0
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_acc

    :catch_1fd
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_af9

    :cond_20a
    move-object/from16 v42, v8

    move-object/from16 v43, v9

    :try_start_20e
    const-string v0, "AASA_ASKSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Token 0:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PACKAGE"

    const-string v8, "CREATE"

    const-string v9, "ADVANCEDDIGEST"
    :try_end_22a
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_22a} :catch_24c
    .catch Ljava/lang/NumberFormatException; {:try_start_20e .. :try_end_22a} :catch_243
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20e .. :try_end_22a} :catch_23e

    move-object/from16 v44, v10

    :try_start_22c
    const-string v10, "DIGEST"

    move-object/from16 v45, v11

    const-string v11, "CROSSDOWN"

    filled-new-array {v0, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_27a

    :catch_23e
    move-exception v0

    move-object/from16 v44, v10

    goto/16 :goto_b24

    :catch_243
    move-exception v0

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_acc

    :catch_24c
    move-exception v0

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto/16 :goto_af9

    :cond_255
    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v45, v11

    if-nez v4, :cond_27a

    const-string v22, "PACKAGE"

    const-string v23, "CERT"

    const-string v24, "CREATE"

    const-string v25, "ADVANCEDDIGEST"

    const-string v26, "MODELS"

    const-string v27, "CARRIERS"

    const-string v28, "DATE"

    const-string v29, "PERMISSION"

    filled-new-array/range {v22 .. v29}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_27a
    :goto_27a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_284
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_296

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "NONE"

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_284

    :cond_296
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0
    :try_end_29a
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_29a} :catch_ab9
    .catch Ljava/lang/NumberFormatException; {:try_start_22c .. :try_end_29a} :catch_ab3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22c .. :try_end_29a} :catch_b19

    move-object v9, v0

    :try_start_29b
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_29f
    .catch Ljava/io/IOException; {:try_start_29b .. :try_end_29f} :catch_aad
    .catch Ljava/lang/NumberFormatException; {:try_start_29b .. :try_end_29f} :catch_aa7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29b .. :try_end_29f} :catch_b19

    move-object v10, v0

    :try_start_2a0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v11, 0x0

    invoke-interface {v10, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v10, v8}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v46, v21

    move-object/from16 v47, v6

    const-string v6, "PACKAGE"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_312

    const-string v6, "NONE"
    :try_end_2ca
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2ca} :catch_aa1
    .catch Ljava/lang/NumberFormatException; {:try_start_2a0 .. :try_end_2ca} :catch_a9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a0 .. :try_end_2ca} :catch_b19

    move-object/from16 v48, v9

    :try_start_2cc
    const-string v9, "PACKAGE"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_305

    const-string v6, "PACKAGE"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_300

    const-string v6, "AASA_ASKSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2ee
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2ee} :catch_30d
    .catch Ljava/lang/NumberFormatException; {:try_start_2cc .. :try_end_2ee} :catch_308
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2cc .. :try_end_2ee} :catch_b19

    move-object/from16 v49, v10

    :try_start_2f0
    const-string v10, "OK:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_318

    :cond_300
    move-object/from16 v49, v10

    add-int/lit8 v0, v0, -0x1

    goto :goto_318

    :cond_305
    move-object/from16 v49, v10

    goto :goto_316

    :catch_308
    move-exception v0

    move-object/from16 v49, v10

    goto/16 :goto_acc

    :catch_30d
    move-exception v0

    move-object/from16 v49, v10

    goto/16 :goto_af9

    :cond_312
    move-object/from16 v48, v9

    move-object/from16 v49, v10

    :goto_316
    add-int/lit8 v0, v0, -0x1

    :goto_318
    const-string v6, "CERT"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_366

    const-string v6, "NONE"

    const-string v9, "CERT"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_366

    move v6, v0

    const/4 v0, 0x0

    :goto_330
    array-length v9, v13

    if-ge v0, v9, :cond_364

    const-string v9, "CERT"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/String;

    aget-object v3, v13, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->toChars([B)[C

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_35d

    const-string v3, "AASA_ASKSManager"

    const-string v9, "OK:CERT"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35f

    :cond_35d
    add-int/lit8 v6, v6, -0x1

    :goto_35f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    goto :goto_330

    :cond_364
    move v0, v6

    goto :goto_36a

    :cond_366
    if-nez v4, :cond_36a

    add-int/lit8 v0, v0, -0x1

    :cond_36a
    :goto_36a
    const-string v3, "DIGEST"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c6

    const-string v3, "NONE"

    const-string v6, "DIGEST"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c6

    const/4 v3, 0x1

    if-ne v4, v3, :cond_3cb

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39d

    const-string v6, "DIGEST"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39d

    const-string v6, "AASA_ASKSManager"

    const-string v9, "OK:HASH"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c5

    :cond_39d
    const-string v6, "AASA_ASKSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOT OK:HASH : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " comp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "DIGEST"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :goto_3c5
    goto :goto_3cb

    :cond_3c6
    const/4 v3, 0x1

    if-ne v4, v3, :cond_3cb

    add-int/lit8 v0, v0, -0x1

    :cond_3cb
    :goto_3cb
    const-string v3, "ADVANCEDDIGEST"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_426

    const-string v3, "NONE"

    const-string v6, "ADVANCEDDIGEST"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_426

    if-nez v4, :cond_42a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3fd

    const-string v6, "ADVANCEDDIGEST"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3fd

    const-string v6, "AASA_ASKSManager"

    const-string v9, "OK:AdvancedHASH"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_425

    :cond_3fd
    const-string v6, "AASA_ASKSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOT OK:AdvancedHASH : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " comp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "ADVANCEDDIGEST"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :goto_425
    goto :goto_42a

    :cond_426
    if-nez v4, :cond_42a

    add-int/lit8 v0, v0, -0x1

    :cond_42a
    :goto_42a
    const-string v3, "CROSSDOWN"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49f

    const-string v3, "NONE"

    const-string v6, "CROSSDOWN"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49f

    const-string v3, "CROSSDOWN"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_451

    add-int/lit8 v0, v0, -0x1

    goto :goto_49e

    :cond_451
    const-string/jumbo v9, "ro.build.2ndbrand"

    const-string/jumbo v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_467

    const-string v10, "AASA_ASKSManager"

    move-object/from16 v50, v3

    const-string v3, "OK:CROSSDOWN"

    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49e

    :cond_467
    move-object/from16 v50, v3

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_480

    and-int/lit8 v3, v6, 0x2

    if-nez v3, :cond_480

    const-string v3, "AASA_ASKSManager"

    const-string v10, "FAILED CROSSDOWN for sep lite"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x92

    return v3

    :cond_480
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_497

    and-int/lit8 v3, v6, 0x1

    if-nez v3, :cond_497

    const-string v3, "AASA_ASKSManager"

    const-string v10, "FAILED CROSSDOWN for galaxy"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x9c

    return v3

    :cond_497
    const-string v3, "AASA_ASKSManager"

    const-string v10, "OK:CROSSDOWN"

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49e
    goto :goto_4c5

    :cond_49f
    const/4 v3, 0x1

    if-ne v4, v3, :cond_4c5

    const-string/jumbo v3, "true"

    const-string/jumbo v6, "ro.build.2ndbrand"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c5

    const/4 v3, 0x1

    if-eq v5, v3, :cond_4c5

    const/4 v3, 0x2

    if-eq v5, v3, :cond_4c5

    const/4 v3, 0x4

    if-ne v5, v3, :cond_4bc

    goto :goto_4c5

    :cond_4bc
    const-string v3, "AASA_ASKSManager"

    const-string v6, "Error : No value CROSSDOWN in 2ndbrand."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    :cond_4c5
    :goto_4c5
    const-string v3, "MODELS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_501

    const-string v3, "NONE"

    const-string v6, "MODELS"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_501

    if-nez v12, :cond_4e9

    const/4 v12, 0x1

    const-string v3, "MODELS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v3

    goto :goto_503

    :cond_4e9
    const-string v3, "MODELS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3, v11}, Lcom/android/server/asks/ASKSManagerService;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_503

    const-string v6, "AASA_ASKSManager"

    const-string v9, "Error : MODEL"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_503

    :cond_501
    move-object/from16 v3, v20

    :cond_503
    :goto_503
    const-string v6, "CARRIERS"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53f

    const-string v6, "NONE"

    const-string v9, "CARRIERS"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53f

    const/4 v6, 0x1

    if-ne v12, v6, :cond_535

    const-string v6, "CARRIERS"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v11, v6

    invoke-direct {v1, v3, v11}, Lcom/android/server/asks/ASKSManagerService;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_53f

    const-string v6, "AASA_ASKSManager"

    const-string v9, "Error : CARRIERS"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_53f

    :cond_535
    const/4 v12, 0x1

    const-string v6, "CARRIERS"

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v11, v6

    :cond_53f
    :goto_53f
    move v6, v0

    const-string v0, "CREATE"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ce

    const-string v0, "NONE"

    const-string v9, "CREATE"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ce

    const-string v0, "AASA_ASKSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CREATE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "CREATE"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_574
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_574} :catch_a98
    .catch Ljava/lang/NumberFormatException; {:try_start_2f0 .. :try_end_574} :catch_a96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f0 .. :try_end_574} :catch_b19

    const/4 v14, 0x1

    :try_start_575
    const-string v0, "CREATE"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_57d
    .catch Ljava/lang/NumberFormatException; {:try_start_575 .. :try_end_57d} :catch_5bb
    .catch Ljava/io/IOException; {:try_start_575 .. :try_end_57d} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_575 .. :try_end_57d} :catch_b19

    move-object v9, v0

    move-object/from16 v10, v46

    :try_start_580
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_584
    .catch Ljava/lang/NumberFormatException; {:try_start_580 .. :try_end_584} :catch_5b7
    .catch Ljava/io/IOException; {:try_start_580 .. :try_end_584} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_580 .. :try_end_584} :catch_b19

    move-object/from16 v51, v3

    :try_start_586
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v52, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v3, v0, :cond_59c

    const-string v0, "AASA_ASKSManager"

    const-string v3, "createDate is bigger than today."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v9}, Lcom/android/server/asks/ASKSManagerService;->setTrustTimeByToken(Ljava/lang/String;)V

    :cond_59c
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5a3

    invoke-virtual {v2, v9}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setVersion(Ljava/lang/String;)V

    goto :goto_5b2

    :cond_5a3
    if-nez v4, :cond_5b2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v0

    if-eqz v0, :cond_5b2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V
    :try_end_5b2
    .catch Ljava/lang/NumberFormatException; {:try_start_586 .. :try_end_5b2} :catch_5b5
    .catch Ljava/io/IOException; {:try_start_586 .. :try_end_5b2} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_586 .. :try_end_5b2} :catch_b19

    :cond_5b2
    :goto_5b2
    nop

    move v3, v14

    goto :goto_5e1

    :catch_5b5
    move-exception v0

    goto :goto_5c2

    :catch_5b7
    move-exception v0

    move-object/from16 v51, v3

    goto :goto_5c2

    :catch_5bb
    move-exception v0

    move-object/from16 v51, v3

    move-object/from16 v10, v46

    move-object/from16 v9, v16

    :goto_5c2
    :try_start_5c2
    const-string v3, "AASA_ASKSManager"

    move-object/from16 v53, v0

    const-string v0, "Error : CREATE-NumberFormatException"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x15

    return v3

    :cond_5ce
    move-object/from16 v51, v3

    move-object/from16 v10, v46

    const/4 v0, 0x1

    if-ne v4, v0, :cond_5de

    const-string v0, "AASA_ASKSManager"

    const-string v3, "Error : CREATE in asks case."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    :cond_5de
    move v3, v14

    move-object/from16 v9, v16

    :goto_5e1
    const-string v0, "DATE"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_657

    const-string v0, "NONE"

    const-string v14, "DATE"

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_657

    const-string v0, "AASA_ASKSManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v54, v3

    const-string v3, "DATE : "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DATE"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_617
    .catch Ljava/io/IOException; {:try_start_5c2 .. :try_end_617} :catch_a98
    .catch Ljava/lang/NumberFormatException; {:try_start_5c2 .. :try_end_617} :catch_a96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c2 .. :try_end_617} :catch_b19

    :try_start_617
    const-string v0, "DATE"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_61f
    .catch Ljava/lang/NumberFormatException; {:try_start_617 .. :try_end_61f} :catch_648
    .catch Ljava/io/IOException; {:try_start_617 .. :try_end_61f} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_617 .. :try_end_61f} :catch_b19

    move-object v3, v0

    :try_start_620
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v55, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v14, v0, :cond_63b

    const-string v0, "AASA_ASKSManager"

    const-string/jumbo v14, "today Date is bigger than expiredDate."

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    return v0

    :cond_63b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V
    :try_end_642
    .catch Ljava/lang/NumberFormatException; {:try_start_620 .. :try_end_642} :catch_646
    .catch Ljava/io/IOException; {:try_start_620 .. :try_end_642} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_620 .. :try_end_642} :catch_b19

    nop

    move-object/from16 v18, v3

    goto :goto_664

    :catch_646
    move-exception v0

    goto :goto_64b

    :catch_648
    move-exception v0

    move-object/from16 v3, v18

    :goto_64b
    :try_start_64b
    const-string v14, "AASA_ASKSManager"

    move-object/from16 v56, v0

    const-string v0, "Error : CREATE-NumberFormatException"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa1

    return v0

    :cond_657
    move/from16 v54, v3

    if-nez v4, :cond_664

    const-string v0, "AASA_ASKSManager"

    const-string v3, "Error : DATE in aasa case."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    :cond_664
    :goto_664
    const-string v0, "EXPIRED"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e5

    const-string v0, "NONE"

    const-string v3, "EXPIRED"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e5

    const-string v0, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EXPIRED : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "EXPIRED"

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_698
    .catch Ljava/io/IOException; {:try_start_64b .. :try_end_698} :catch_a98
    .catch Ljava/lang/NumberFormatException; {:try_start_64b .. :try_end_698} :catch_a96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64b .. :try_end_698} :catch_b19

    :try_start_698
    const-string v0, "EXPIRED"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6a0
    .catch Ljava/lang/NumberFormatException; {:try_start_698 .. :try_end_6a0} :catch_6d6
    .catch Ljava/io/IOException; {:try_start_698 .. :try_end_6a0} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_698 .. :try_end_6a0} :catch_b19

    move-object v3, v0

    :try_start_6a1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-le v0, v14, :cond_6b5

    const-string v0, "AASA_ASKSManager"

    const-string v14, "createDate is bigger than expiredDate."

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    return v0

    :cond_6b5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v57, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v14, v0, :cond_6d0

    const-string v0, "AASA_ASKSManager"

    const-string/jumbo v14, "today Date is bigger than expiredDate."

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6cd
    .catch Ljava/lang/NumberFormatException; {:try_start_6a1 .. :try_end_6cd} :catch_6d4
    .catch Ljava/io/IOException; {:try_start_6a1 .. :try_end_6cd} :catch_a98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a1 .. :try_end_6cd} :catch_b19

    const/16 v0, 0xe

    return v0

    :cond_6d0
    nop

    move-object/from16 v18, v3

    goto :goto_6e5

    :catch_6d4
    move-exception v0

    goto :goto_6d9

    :catch_6d6
    move-exception v0

    move-object/from16 v3, v18

    :goto_6d9
    :try_start_6d9
    const-string v14, "AASA_ASKSManager"

    move-object/from16 v58, v0

    const-string v0, "EXPIRED : NumberFormatException"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0x15

    return v14

    :cond_6e5
    :goto_6e5
    const-string v0, "PERMISSION"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d6

    const-string v0, "NONE"

    const-string v3, "PERMISSION"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d6

    if-nez v4, :cond_7d1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3
    :try_end_706
    .catch Ljava/io/IOException; {:try_start_6d9 .. :try_end_706} :catch_a98
    .catch Ljava/lang/NumberFormatException; {:try_start_6d9 .. :try_end_706} :catch_a96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d9 .. :try_end_706} :catch_b19

    :try_start_706
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14
    :try_end_70a
    .catch Ljava/io/IOException; {:try_start_706 .. :try_end_70a} :catch_7ca
    .catch Ljava/lang/NumberFormatException; {:try_start_706 .. :try_end_70a} :catch_7c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_706 .. :try_end_70a} :catch_b19

    move-object/from16 v59, v3

    :try_start_70c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v14, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_715
    .catch Ljava/io/IOException; {:try_start_70c .. :try_end_715} :catch_7ba
    .catch Ljava/lang/NumberFormatException; {:try_start_70c .. :try_end_715} :catch_7b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70c .. :try_end_715} :catch_b19

    move-object v3, v14

    const/4 v5, 0x0

    :try_start_717
    invoke-direct {v1, v5, v3, v0}, Lcom/android/server/asks/ASKSManagerService;->readPermissionList(ILorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getManifestPermission()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_772

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_725
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_76b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v60, v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getManifestPermission()Ljava/util/ArrayList;

    move-result-object v14
    :try_end_737
    .catch Ljava/io/IOException; {:try_start_717 .. :try_end_737} :catch_7a8
    .catch Ljava/lang/NumberFormatException; {:try_start_717 .. :try_end_737} :catch_79f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_717 .. :try_end_737} :catch_b19

    move-object/from16 v61, v3

    move-object/from16 v3, v60

    :try_start_73b
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_760

    const-string v14, "AASA_ASKSManager"

    move-object/from16 v62, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v63, v11

    const-string/jumbo v11, "remove undeclared permission : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_764

    :cond_760
    move-object/from16 v62, v10

    move-object/from16 v63, v11

    :goto_764
    move-object/from16 v3, v61

    move-object/from16 v10, v62

    move-object/from16 v11, v63

    goto :goto_725

    :cond_76b
    move-object/from16 v61, v3

    move-object/from16 v62, v10

    move-object/from16 v63, v11

    goto :goto_77b

    :cond_772
    move-object/from16 v61, v3

    move-object/from16 v62, v10

    move-object/from16 v63, v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_77b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_789

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V
    :try_end_788
    .catch Ljava/io/IOException; {:try_start_73b .. :try_end_788} :catch_798
    .catch Ljava/lang/NumberFormatException; {:try_start_73b .. :try_end_788} :catch_791
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73b .. :try_end_788} :catch_b19

    goto :goto_78b

    :cond_789
    add-int/lit8 v6, v6, -0x1

    :goto_78b
    nop

    move-object/from16 v48, v59

    move-object/from16 v20, v61

    goto :goto_7e0

    :catch_791
    move-exception v0

    move-object/from16 v48, v59

    move-object/from16 v49, v61

    goto/16 :goto_acc

    :catch_798
    move-exception v0

    move-object/from16 v48, v59

    move-object/from16 v49, v61

    goto/16 :goto_af9

    :catch_79f
    move-exception v0

    move-object/from16 v61, v3

    move-object/from16 v48, v59

    move-object/from16 v49, v61

    goto/16 :goto_acc

    :catch_7a8
    move-exception v0

    move-object/from16 v61, v3

    move-object/from16 v48, v59

    move-object/from16 v49, v61

    goto/16 :goto_af9

    :catch_7b1
    move-exception v0

    move-object/from16 v61, v14

    move-object/from16 v48, v59

    move-object/from16 v49, v61

    goto/16 :goto_acc

    :catch_7ba
    move-exception v0

    move-object/from16 v61, v14

    move-object/from16 v48, v59

    move-object/from16 v49, v61

    goto/16 :goto_af9

    :catch_7c3
    move-exception v0

    move-object/from16 v59, v3

    move-object/from16 v48, v59

    goto/16 :goto_acc

    :catch_7ca
    move-exception v0

    move-object/from16 v59, v3

    move-object/from16 v48, v59

    goto/16 :goto_af9

    :cond_7d1
    move-object/from16 v62, v10

    move-object/from16 v63, v11

    goto :goto_7de

    :cond_7d6
    move-object/from16 v62, v10

    move-object/from16 v63, v11

    if-nez v4, :cond_7de

    add-int/lit8 v6, v6, -0x1

    :cond_7de
    :goto_7de
    move-object/from16 v20, v49

    :goto_7e0
    :try_start_7e0
    const-string v0, "RESTRICT"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8ef

    const-string v0, "NONE"

    const-string v3, "RESTRICT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8ef

    const-string v0, "DELETE"

    const-string v3, "RESTRICT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85c

    const-string v0, "AASA_ASKSManager_DELETABLE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RESTRICT"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v0}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>()V

    invoke-virtual {v0, v9}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setVersion(Ljava/lang/String;)V

    const-string v3, "DATELIMIT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_850

    const-string v3, "NONE"

    const-string v5, "DATELIMIT"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_850

    const-string v3, "DATELIMIT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setDateLimit(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_85a

    :cond_850
    const-string v3, "AASA_ASKSManager_DELETABLE"

    const-string v5, "FAIL: DATELIMIT in deletable"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    nop

    :goto_85a
    goto/16 :goto_8ef

    :cond_85c
    new-instance v0, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    const-string v3, "RESTRICT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    const-string v3, "Token"

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    const-string v3, "DATELIMIT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_896

    const-string v3, "NONE"

    const-string v5, "DATELIMIT"

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_896

    const-string v3, "DATELIMIT"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V

    goto :goto_8a0

    :cond_896
    const-string v3, "AASA_ASKSManager_RESTRICTED"

    const-string v5, "FAIL: DATELIMIT in restricted."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    const/4 v0, 0x0

    :goto_8a0
    if-eqz v0, :cond_8dd

    const-string v3, "REVOKE"

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8dd

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5
    :try_end_8b7
    .catch Ljava/io/IOException; {:try_start_7e0 .. :try_end_8b7} :catch_a91
    .catch Ljava/lang/NumberFormatException; {:try_start_7e0 .. :try_end_8b7} :catch_a8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e0 .. :try_end_8b7} :catch_b19

    :try_start_8b7
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10
    :try_end_8bb
    .catch Ljava/io/IOException; {:try_start_8b7 .. :try_end_8bb} :catch_8ea
    .catch Ljava/lang/NumberFormatException; {:try_start_8b7 .. :try_end_8bb} :catch_8e5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b7 .. :try_end_8bb} :catch_b19

    :try_start_8bb
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v14, 0x0

    invoke-interface {v10, v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-direct {v1, v11, v10, v3}, Lcom/android/server/asks/ASKSManagerService;->readPermissionList(ILorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    nop

    invoke-virtual {v0, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V
    :try_end_8cc
    .catch Ljava/io/IOException; {:try_start_8bb .. :try_end_8cc} :catch_8d6
    .catch Ljava/lang/NumberFormatException; {:try_start_8bb .. :try_end_8cc} :catch_8cf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8bb .. :try_end_8cc} :catch_b19

    move-object/from16 v20, v10

    goto :goto_8df

    :catch_8cf
    move-exception v0

    move-object/from16 v48, v5

    move-object/from16 v49, v10

    goto/16 :goto_acc

    :catch_8d6
    move-exception v0

    move-object/from16 v48, v5

    move-object/from16 v49, v10

    goto/16 :goto_af9

    :cond_8dd
    move-object/from16 v5, v48

    :goto_8df
    :try_start_8df
    invoke-virtual {v2, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_8e2
    .catch Ljava/io/IOException; {:try_start_8df .. :try_end_8e2} :catch_8ea
    .catch Ljava/lang/NumberFormatException; {:try_start_8df .. :try_end_8e2} :catch_8e5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8df .. :try_end_8e2} :catch_b19

    move-object/from16 v48, v5

    goto :goto_8ef

    :catch_8e5
    move-exception v0

    move-object/from16 v48, v5

    goto/16 :goto_a8e

    :catch_8ea
    move-exception v0

    move-object/from16 v48, v5

    goto/16 :goto_a92

    :cond_8ef
    :goto_8ef
    :try_start_8ef
    const-string v0, "RUFS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a74

    const-string v0, "NONE"

    const-string v3, "RUFS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a74

    const-string v0, "BEFORE"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6b

    const-string v0, "NONE"

    const-string v3, "BEFORE"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6b

    const-string v0, "AFTER"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a61

    const-string v0, "NONE"

    const-string v3, "AFTER"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a61

    const-string v0, "CHECK"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a57

    const-string v0, "NONE"

    const-string v3, "CHECK"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a57

    const-string v0, "RUFS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const-string v0, "BEFORE"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    const-string v0, "AFTER"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    const-string v0, "CHECK"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    const-string v0, "AASA_ASKSManager_RUFS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/asks/RUFSContainer;

    invoke-direct {v0}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    move-object v1, v0

    invoke-virtual {v1, v3}, Lcom/android/server/asks/RUFSContainer;->setPolicyVersion(Ljava/lang/String;)V
    :try_end_9a2
    .catch Ljava/io/IOException; {:try_start_8ef .. :try_end_9a2} :catch_a91
    .catch Ljava/lang/NumberFormatException; {:try_start_8ef .. :try_end_9a2} :catch_a8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8ef .. :try_end_9a2} :catch_b19

    move-object/from16 v64, v3

    :try_start_9a4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/asks/RUFSContainer;->setSizeofZip(J)V

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/asks/RUFSContainer;->setSizeofFiles(J)V

    invoke-virtual {v1, v11}, Lcom/android/server/asks/RUFSContainer;->setDigest(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    const-string v0, "AASA_ASKSManager_RUFS"

    const-string v3, " SET RUFS TOKEN True!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c0
    .catch Ljava/lang/NumberFormatException; {:try_start_9a4 .. :try_end_9c0} :catch_9c1
    .catch Ljava/io/IOException; {:try_start_9a4 .. :try_end_9c0} :catch_a91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9a4 .. :try_end_9c0} :catch_b19

    goto :goto_9cf

    :catch_9c1
    move-exception v0

    const/4 v3, 0x0

    :try_start_9c3
    invoke-virtual {v1, v3}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    const-string v3, "AASA_ASKSManager_RUFS"

    const-string v4, " SET RUFS TOKEN False!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    :goto_9cf
    const-string v0, "ADPMODELS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a11

    const-string v0, "NONE"

    const-string v3, "ADPMODELS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a11

    const-string v0, "ADPCARRIERS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a11

    const-string v0, "NONE"

    const-string v3, "ADPCARRIERS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a11

    const-string v0, "ADPMODELS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "ADPCARRIERS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/asks/RUFSContainer;->setADPModels(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/asks/RUFSContainer;->setADPCarriers(Ljava/lang/String;)V

    :cond_a11
    const-string v0, "ASKSRNEWMODELS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a53

    const-string v0, "NONE"

    const-string v3, "ASKSRNEWMODELS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a53

    const-string v0, "ASKSRNEWCARRIERS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a53

    const-string v0, "NONE"

    const-string v3, "ASKSRNEWCARRIERS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a53

    const-string v0, "ASKSRNEWMODELS"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "ASKSRNEWCARRIERS"

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWModels(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWCarriers(Ljava/lang/String;)V

    :cond_a53
    invoke-virtual {v2, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V

    goto :goto_a74

    :cond_a57
    const-string v0, "AASA_ASKSManager_RUFS"

    const-string v1, "ERROR: CHECK in RUFS"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_a74

    :cond_a61
    const-string v0, "AASA_ASKSManager_RUFS"

    const-string v1, "ERROR: AFTER in RUFS"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_a74

    :cond_a6b
    const-string v0, "AASA_ASKSManager_RUFS"

    const-string v1, "ERROR: BEFORE in RUFS"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, -0x1

    :cond_a74
    :goto_a74
    if-nez v6, :cond_a7f

    const-string v0, "AASA_ASKSManager"

    const-string v1, " Pass ALL"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_a7f
    const-string v0, "AASA_ASKSManager"

    const-string v1, " Fail: auth"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a86
    .catch Ljava/io/IOException; {:try_start_9c3 .. :try_end_a86} :catch_a91
    .catch Ljava/lang/NumberFormatException; {:try_start_9c3 .. :try_end_a86} :catch_a8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c3 .. :try_end_a86} :catch_b19

    nop

    nop

    move-object/from16 v0, v48

    const/16 v1, 0xdd

    return v1

    :catch_a8d
    move-exception v0

    :goto_a8e
    move-object/from16 v49, v20

    goto :goto_acc

    :catch_a91
    move-exception v0

    :goto_a92
    move-object/from16 v49, v20

    goto/16 :goto_af9

    :catch_a96
    move-exception v0

    goto :goto_acc

    :catch_a98
    move-exception v0

    goto/16 :goto_af9

    :catch_a9b
    move-exception v0

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    goto :goto_acc

    :catch_aa1
    move-exception v0

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    goto :goto_af9

    :catch_aa7
    move-exception v0

    move-object/from16 v48, v9

    move-object/from16 v49, v14

    goto :goto_acc

    :catch_aad
    move-exception v0

    move-object/from16 v48, v9

    move-object/from16 v49, v14

    goto :goto_af9

    :catch_ab3
    move-exception v0

    :goto_ab4
    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto :goto_acc

    :catch_ab9
    move-exception v0

    :goto_aba
    move-object/from16 v48, v12

    move-object/from16 v49, v14

    goto :goto_af9

    :catch_abf
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    :goto_acc
    :try_start_acc
    const-string v1, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 v1, 0x15

    return v1

    :catch_aec
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    move-object/from16 v48, v12

    move-object/from16 v49, v14

    :goto_af9
    const-string v1, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_acc .. :try_end_b16} :catch_b19

    const/16 v1, 0x15

    return v1

    :catch_b19
    move-exception v0

    goto :goto_b24

    :catch_b1b
    move-exception v0

    move-object/from16 v41, v6

    move-object/from16 v42, v8

    move-object/from16 v43, v9

    move-object/from16 v44, v10

    :goto_b24
    const-string v1, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    return v1

    :cond_b41
    move-object/from16 v42, v8

    move-object/from16 v43, v9

    :goto_b45
    const-string v0, "AASA_ASKSManager"

    const-string v1, " ERROR: plz check certification in the device - Fail to check integrity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    move-object v1, v0

    const/4 v3, 0x0

    :try_start_b53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b57
    .catch Ljava/lang/NumberFormatException; {:try_start_b53 .. :try_end_b57} :catch_b59

    move v3, v0

    goto :goto_b5a

    :catch_b59
    move-exception v0

    :goto_b5a
    return v3

    :catchall_b5b
    move-exception v0

    move/from16 v6, v17

    goto :goto_b62

    :catchall_b5f
    move-exception v0

    move/from16 v17, v6

    :goto_b62
    if-eqz v10, :cond_b67

    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    :cond_b67
    throw v0

    :pswitch_data_b68
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1d
    .end packed-switch

    :pswitch_data_b70
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_101
    .end packed-switch
.end method

.method private writeBlockApkList(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/blockedList.log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const-string v3, "AASA_ASKSManager"

    const-string/jumbo v4, "writeBlockApkList() Success"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_29
    .catchall {:try_start_1 .. :try_end_22} :catchall_27

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_44

    :catchall_27
    move-exception v1

    goto :goto_45

    :catch_29
    move-exception v1

    :try_start_2a
    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeBlockApkList() Fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_27

    if-eqz v0, :cond_44

    goto :goto_23

    :cond_44
    :goto_44
    return-void

    :goto_45
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_4a
    throw v1
.end method

.method private writeState()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_15d
    .catchall {:try_start_3 .. :try_end_9} :catchall_15b

    nop

    nop

    :try_start_b
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15b

    :try_start_13
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "asks"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-interface {v3, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_136

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v8, :cond_134

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->hasValue()Z

    move-result v9

    if-eqz v9, :cond_134

    const-string/jumbo v9, "package"

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "name"

    invoke-interface {v3, v5, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    if-eqz v9, :cond_d5

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v9

    const-string/jumbo v10, "restrict"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "version"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "type"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "datelimit"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "from"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "REVOKE"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cf

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cf

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "permission"

    invoke-interface {v3, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "value"

    invoke-interface {v3, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "permission"

    invoke-interface {v3, v5, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b0

    :cond_cf
    const-string/jumbo v10, "restrict"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d5
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_107

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "emmode"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "value"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "emmode"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_107
    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v9

    if-eqz v9, :cond_12e

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v9

    const-string v10, "delete"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "version"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "datelimit"

    invoke-virtual {v9}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getDateLimit()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "delete"

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12e
    const-string/jumbo v9, "package"

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_134
    goto/16 :goto_3f

    :cond_136
    const-string v7, "asks"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v5, "security.ASKS.policy_version"

    sget-object v7, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_14b} :catch_14c
    .catchall {:try_start_13 .. :try_end_14b} :catchall_15b

    goto :goto_159

    :catch_14c
    move-exception v3

    :try_start_14d
    const-string v4, "AASA_ASKSManager"

    const-string v5, "Failed to write state, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_159
    monitor-exit v0

    return-void

    :catchall_15b
    move-exception v1

    goto :goto_176

    :catch_15d
    move-exception v1

    const-string v2, "AASA_ASKSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_176
    monitor-exit v0
    :try_end_177
    .catchall {:try_start_14d .. :try_end_177} :catchall_15b

    throw v1
.end method


# virtual methods
.method public checkASKSTarget(I)[Ljava/lang/String;
    .registers 16

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14e

    const-string v0, "AASA_ASKSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkASKSTarget type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Landroid/util/ArrayMap;

    move-result-object v3

    goto :goto_3e

    :cond_37
    const-string v4, "AASA_ASKSManager"

    const-string v5, "checkASKSTarget() : Fail to load PackageManagerInternal."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    const/16 v4, 0x9

    invoke-direct {p0, v4, v2}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_4b

    goto/16 :goto_14d

    :cond_4b
    if-eqz v3, :cond_14e

    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_10b

    const/4 v4, 0x1

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6e

    const/4 v4, 0x0

    :cond_6e
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_77

    const/4 v4, 0x0

    :cond_77
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v7

    if-eqz v7, :cond_97

    const/4 v4, 0x1

    const-string v7, "AASA_ASKSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isUpdatedSystemApp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    if-eqz v4, :cond_10b

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v7, v8}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_10b

    :try_start_a6
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_109

    const-string v9, "AASA_ASKSManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkDevice Target app :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ::"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_109

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_109

    const-string v11, "AASA_ASKSManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is in Blist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_109} :catch_10a

    :cond_109
    goto :goto_10b

    :catch_10a
    move-exception v8

    :cond_10b
    :goto_10b
    goto/16 :goto_56

    :cond_10d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_14e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_11a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14c

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v5

    const-string v6, "AASA_ASKSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "return value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    :cond_14c
    return-object v1

    :goto_14d
    return-object v1

    :cond_14e
    return-object v1
.end method

.method public checkDeletableListForASKS()V
    .registers 16

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v5

    if-eqz v5, :cond_dd

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getDateLimit()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_dd

    if-eqz v5, :cond_dd

    :try_start_42
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v6, v7, :cond_d4

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    if-eqz v7, :cond_63

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    move-object v6, v7

    goto :goto_6a

    :cond_63
    const-string v7, "AASA_ASKSManager_DELETABLE"

    const-string v8, "Fail to load PackageManagerInternal."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    if-eqz v6, :cond_b4

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    const-string v8, "/data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_78} :catch_d5

    if-eqz v7, :cond_b4

    const/4 v7, 0x4

    :try_start_7b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a app deleted by the restricted policy. the date is expired ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v13

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_b1} :catch_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_b1} :catch_d5

    goto :goto_b3

    :catch_b2
    move-exception v7

    :goto_b3
    goto :goto_d1

    :cond_b4
    :try_start_b4
    const-string v7, "AASA_ASKSManager_DELETABLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "does not found delete target - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d1
    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_d4} :catch_d5

    :cond_d4
    goto :goto_dd

    :catch_d5
    move-exception v6

    const-string v7, "AASA_ASKSManager_DELETABLE"

    const-string v8, "NumberFormatException ::"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    :goto_dd
    goto/16 :goto_1a

    :cond_df
    goto :goto_e7

    :cond_e0
    const-string v0, "AASA_ASKSManager_DELETABLE"

    const-string v1, "ERROR::: Unknown caller"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e7
    return-void
.end method

.method public checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-nez v2, :cond_d

    return v1

    :cond_d
    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    if-eqz v4, :cond_3a

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v6, v7, :cond_3a

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3a

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v1, 0x4

    :cond_3a
    return v1
.end method

.method public clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Only the system can claim clearASKSruleForRemovedPackage"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_16
    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    :cond_1b
    return-void
.end method

.method public getGrantedPermissionsForAASA(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v2

    if-eqz v2, :cond_3b

    const-string v2, "AASA"

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    goto :goto_6e

    :cond_3b
    if-nez v1, :cond_6e

    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    if-eqz v3, :cond_6e

    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    const-string v4, "AASA"

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public getSEInfo(Ljava/lang/String;)[B
    .registers 11

    const-string v0, "Only the system can claim getSEInfo"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string v0, "aasa_blocked"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    const/4 v2, 0x0

    if-eqz p1, :cond_61

    if-nez v1, :cond_19

    goto :goto_61

    :cond_19
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v4

    if-eqz v3, :cond_46

    const-string v5, "DENY"

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_46

    if-eqz v5, :cond_46

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v7, v8, :cond_46

    return-object v0

    :cond_46
    const/4 v5, -0x1

    if-eq v4, v5, :cond_60

    new-instance v5, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v6

    if-nez v6, :cond_57

    return-object v0

    :cond_57
    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5f

    return-object v2

    :cond_5f
    return-object v0

    :cond_60
    return-object v2

    :cond_61
    :goto_61
    return-object v2
.end method

.method public getUNvalueForASKS()Ljava/lang/String;
    .registers 4

    const-string v0, "Only the system can claim getUNvalueForASKS"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    const-string v0, "0x1"

    const-string/jumbo v2, "ro.boot.em.status"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "ro.serialno"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    return-object v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IASKSManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_15

    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_15

    const-string v1, "ASKSManager"

    const-string v2, "ASKS Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    throw v0
.end method

.method public postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const-string v0, "Only the system can claim postASKSsetup"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne p3, v3, :cond_15

    move v3, v4

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move v2, v3

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_209

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRufsContainer()Lcom/android/server/asks/RUFSContainer;

    move-result-object v3

    if-eqz v3, :cond_e4

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRufsContainer()Lcom/android/server/asks/RUFSContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getHasRUFSToken()Z

    move-result v5

    if-eqz v5, :cond_e4

    new-instance v5, Lcom/android/server/asks/RuleUpdateForSecurity;

    invoke-direct {v5, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    const-string/jumbo v6, "security.ASKS.rufs_enable"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v4, :cond_dd

    const-string v6, "AASA_ASKSManager_RUFS"

    const-string v7, "TRY........."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "security.ASKS.policy_version"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e4

    const-string v6, "AASA_ASKSManager_RUFS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getPolicyPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, p2}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v4, :cond_e4

    const-string v4, "AASA_ASKSManager_RUFS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy update from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "security.ASKS.policy_version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string/jumbo v4, "security.ASKS.policy_version"

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a6
    const-string/jumbo v4, "ro.product.model"

    const-string/jumbo v6, "null"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "RUFS_UPDATE"

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_bb} :catch_bc

    goto :goto_bd

    :catch_bc
    move-exception v4

    :goto_bd
    const-string v4, "AASA_ASKSManager_RUFS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy update to   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "security.ASKS.policy_version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_e4

    :cond_dd
    const-string v4, "AASA_ASKSManager_RUFS"

    const-string v6, "RUFS is disabled"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v3

    if-eqz v3, :cond_eb

    const/4 v1, 0x1

    :cond_eb
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f0

    if-eqz v2, :cond_1f0

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1a5

    if-eqz v4, :cond_17a

    const-string v7, "Policy"

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_152

    const-string v7, "AASA"

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_152

    :try_start_122
    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v7, v8, :cond_14f

    const-string v7, "AASA_ASKSManager_RESTRICTED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update restricted rule(AASA) for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_14e
    .catch Ljava/lang/NumberFormatException; {:try_start_122 .. :try_end_14e} :catch_150

    const/4 v1, 0x1

    :cond_14f
    :goto_14f
    goto :goto_1ab

    :catch_150
    move-exception v7

    goto :goto_14f

    :cond_152
    const-string v7, "AASA_ASKSManager_RESTRICTED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update restricted rule("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    const/4 v1, 0x1

    goto :goto_1ab

    :cond_17a
    const-string v7, "Policy"

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1ab

    const-string v7, "AASA_ASKSManager_RESTRICTED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remove restricted rule for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    const/4 v1, 0x1

    goto :goto_1ab

    :cond_1a5
    if-eqz v4, :cond_1ab

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    const/4 v1, 0x1

    :cond_1ab
    :goto_1ab
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v7

    if-eqz v7, :cond_1e5

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    if-eqz v6, :cond_1dc

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v7

    :try_start_1bf
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt v8, v9, :cond_1d9

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    :try_end_1d8
    .catch Ljava/lang/NumberFormatException; {:try_start_1bf .. :try_end_1d8} :catch_1da

    const/4 v1, 0x1

    :cond_1d9
    goto :goto_1db

    :catch_1da
    move-exception v8

    :goto_1db
    goto :goto_1ef

    :cond_1dc
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    const/4 v1, 0x1

    goto :goto_1ef

    :cond_1e5
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v7

    if-eqz v7, :cond_1ef

    invoke-virtual {v3, v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    const/4 v1, 0x1

    :cond_1ef
    :goto_1ef
    goto :goto_209

    :cond_1f0
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget()Z

    move-result v3

    if-eqz v3, :cond_209

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_209

    if-eqz v2, :cond_209

    new-instance v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v3, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_209
    :goto_209
    invoke-direct {p0, v0, p1}, Lcom/android/server/asks/ASKSManagerService;->closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V

    if-eqz v1, :cond_214

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    invoke-direct {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    :cond_214
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    return-void
.end method

.method public systemReady()V
    .registers 4

    const-string v0, "Only the system can claim the system is ready"

    invoke-direct {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "security_policy_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const-string/jumbo v1, "security.ASKS.rufs_enable"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/util/List;Z)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Landroid/content/pm/Signature;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    const-string v0, "Only the system can claim verifyASKStokenForPackage"

    invoke-direct {v9, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const/4 v12, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-boolean v0, v9, Lcom/android/server/asks/ASKSManagerService;->isFirstBoot:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/server/asks/ASKSManagerService;->isFirstBoot:Z

    iget-object v0, v9, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/server/asks/ASKSManagerService;->readyForBooting(Landroid/content/Context;)V

    :cond_1a
    const/4 v0, 0x0

    const/16 v3, 0x13

    invoke-direct {v9, v3, v10, v0}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v13, -0x1

    if-eq v0, v13, :cond_35

    move-object/from16 v14, p2

    :try_start_26
    invoke-direct {v9, v14}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2c

    move-object v2, v0

    goto :goto_2d

    :catch_2c
    move-exception v0

    :goto_2d
    invoke-direct {v9, v3, v10, v2}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v13, :cond_37

    const/4 v0, -0x7

    return v0

    :cond_35
    move-object/from16 v14, p2

    :cond_37
    move-object v0, v2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/asks/ASKSManagerService;->openSession(Ljava/lang/String;)Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    move-result-object v15

    if-eqz v0, :cond_41

    invoke-virtual {v15, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V

    :cond_41
    invoke-virtual {v15, v11}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setSignature([Landroid/content/pm/Signature;)V

    invoke-direct {v9, v10, v11}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v8

    const/4 v7, 0x1

    if-eq v8, v13, :cond_60

    invoke-virtual {v15, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setASKSTarget(Z)V

    move-object v1, v9

    move-object v2, v15

    move-object v3, v10

    move-object v4, v14

    move/from16 v5, p3

    move-object/from16 v6, p5

    move v7, v8

    move/from16 v16, v8

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/asks/ASKSManagerService;->parsePackageForASKS(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)I

    move-result v12

    goto :goto_62

    :cond_60
    move/from16 v16, v8

    :goto_62
    if-eq v12, v13, :cond_68

    const/4 v7, 0x1

    if-ne v12, v7, :cond_7a

    goto :goto_69

    :cond_68
    const/4 v7, 0x1

    :goto_69
    move-object v1, v9

    move-object v2, v15

    move-object v3, v10

    move-object v4, v14

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/asks/ASKSManagerService;->parsePackageForAASA(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {v15, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setASKSTarget(Z)V

    :cond_7a
    return v12
.end method
