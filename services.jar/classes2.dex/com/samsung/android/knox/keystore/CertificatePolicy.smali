.class public Lcom/samsung/android/knox/keystore/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final ACTION_CERTIFICATE_FAILURE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CERTIFICATE_FAILURE"

.field public static final ACTION_CERTIFICATE_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CERTIFICATE_REMOVED"

.field public static final ACTION_REFRESH_CREDENTIALS_UI_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REFRESH_CREDENTIALS_UI_INTERNAL"

.field public static final APP_INFO_PKGNAME:Ljava/lang/String; = "appInfoPkgName"

.field public static final BROWSER_MODULE:Ljava/lang/String; = "browser_module"

.field public static final CERTIFICATE_FAIL_ALG_NON_FIPS_APPROVED:I = 0x9

.field public static final CERTIFICATE_FAIL_ALTSUBJECT_MISMATCH:I = 0x6

.field public static final CERTIFICATE_FAIL_BAD_CERTIFICATE:I = 0x7

.field public static final CERTIFICATE_FAIL_EXPIRED:I = 0x4

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_CERTIFICATE_ENCODING:I = 0xb

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_INCONSISTENT_CERTIFICATES:I = 0xc

.field public static final CERTIFICATE_FAIL_INSTALL_PARSE_NO_CERTIFICATES:I = 0xa

.field public static final CERTIFICATE_FAIL_NOT_YET_VALID:I = 0x3

.field public static final CERTIFICATE_FAIL_REVOKED:I = 0x2

.field public static final CERTIFICATE_FAIL_SERVER_CHAIN_PROBE:I = 0x8

.field public static final CERTIFICATE_FAIL_SUBJECT_MISMATCH:I = 0x5

.field public static final CERTIFICATE_FAIL_UNABLE_TO_CHECK_REVOCATION_STATUS:I = 0xd

.field public static final CERTIFICATE_FAIL_UNSPECIFIED:I = 0x0

.field public static final CERTIFICATE_FAIL_UNTRUSTED:I = 0x1

.field public static final CERTIFICATE_VALIDATED_SUCCESSFULLY:I = -0x1

.field public static final EXTRA_CERTIFICATE_FAILURE_MESSAGE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MESSAGE"

.field public static final EXTRA_CERTIFICATE_FAILURE_MODULE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MODULE"

.field public static final EXTRA_CERTIFICATE_REMOVED_SUBJECT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID"

.field public static final INSTALLER_MODULE:Ljava/lang/String; = "installer_module"

.field public static final IS_MARKET_INSTALLATION:Ljava/lang/String; = "isMarketInstallation"

.field public static final PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_MODULE:Ljava/lang/String; = "wifi_module"


# instance fields
.field private mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field private mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CertificatePolicy"

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_10

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    if-nez v0, :cond_10

    const-string v0, "certificate_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    return-object v0
.end method


# virtual methods
.method public addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.addPermissionApplicationPrivateKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v2

    if-eqz v2, :cond_36

    :try_start_25
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2d} :catch_2e

    return v2

    :catch_2e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    return v1
.end method

.method public addTrustedCaCertificateList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.addTrustedCaCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_43

    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_28

    return v1

    :cond_28
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->addTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_39} :catch_3a

    return v2

    :catch_3a
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :cond_43
    nop

    :cond_44
    :goto_44
    return v1
.end method

.method public addUntrustedCertificateList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.addUntrustedCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_43

    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_28

    return v1

    :cond_28
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->addUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_39} :catch_3a

    return v2

    :catch_3a
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :cond_43
    nop

    :cond_44
    :goto_44
    return v1
.end method

.method public allowUserRemoveCertificates(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.allowUserRemoveCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->allowUserRemoveCertificates(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearPermissionApplicationPrivateKey()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.clearPermissionApplicationPrivateKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->clearPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearTrustedCaCertificateList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.clearTrustedCaCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->clearTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearUntrustedCertificateList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.clearUntrustedCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->clearUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableCertificateFailureNotification(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableCertificateFailureNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->enableCertificateFailureNotification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableCertificateValidationAtInstall(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableCertificateValidationAtInstall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->enableCertificateValidationAtInstall(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableOcspCheck(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableOcspCheck"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableOcspCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public enableRevocationCheck(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.enableRevocationCheck"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->enableRevocationCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPermissionApplicationPrivateKey()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.getListPermissionApplicationPrivateKey"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getListPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getTrustedCaCertificateList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.getTrustedCaCertificateList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUntrustedCertificateList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.getUntrustedCertificateList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->getUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Certificate policy API isCaCertificateDisabledAsUser "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public isCaCertificateTrustedAsUser([BZI)Z
    .registers 9

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p3}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_53

    if-nez v0, :cond_10

    return v1

    :cond_10
    nop

    const/4 v0, 0x0

    :try_start_12
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_3a

    move-object v0, v4

    nop

    :try_start_25
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v3, v2, p2, p3}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_31

    return v3

    :catch_31
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    :catch_3a
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem converting certificate! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catch_53
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy to check if isTrustedUntrustedEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_5c
    :goto_5c
    return v1
.end method

.method public isCertificateFailureNotificationEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.isCertificateFailureNotificationEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateFailureNotificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isCertificateValidationAtInstallEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isCertificateValidationAtInstallEnabledAsUser(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isNonTrustedAppInstallBlocked()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isNonTrustedAppInstallBlocked(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isOcspCheckEnabled(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateKeyApplicationPermitted(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.isPrivateKeyApplicationPermitted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isPrivateKeyApplicationPermitted(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.isPrivateKeyApplicationPermittedAsUser"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isUserRemoveCertificatesAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.removePermissionApplicationPrivateKey"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v2

    if-eqz v2, :cond_36

    :try_start_25
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2d} :catch_2e

    return v2

    :catch_2e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    return v1
.end method

.method public removeTrustedCaCertificateList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.removeTrustedCaCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_43

    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_28

    return v1

    :cond_28
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->removeTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_39} :catch_3a

    return v2

    :catch_3a
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :cond_43
    nop

    :cond_44
    :goto_44
    return v1
.end method

.method public removeUntrustedCertificateList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.removeUntrustedCertificateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_43

    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_28

    return v1

    :cond_28
    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v4, v3}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->removeUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_39} :catch_3a

    return v2

    :catch_3a
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :cond_43
    nop

    :cond_44
    :goto_44
    return v1
.end method

.method public setNonTrustedAppInstallBlock(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.setNonTrustedAppInstallBlock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setNonTrustedAppInstallBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with restriction policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public validateCertificateAtInstall([B)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.validateCertificateAtInstall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4f

    const/4 v0, 0x0

    :try_start_f
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_37

    move-object v0, v4

    nop

    :try_start_22
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v3, v2}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v3
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_2e

    return v3

    :catch_2e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with certificate policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :catch_37
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem converting certificate! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4f
    :goto_4f
    return v1
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "CertificatePolicy.validateChainAtInstall"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->getService()Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    move-result-object v0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_43

    :try_start_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    new-instance v3, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_33
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CertificatePolicy;->mService:Lcom/samsung/android/knox/keystore/ICertificatePolicy;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3a

    return v1

    :catch_3a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with certificate policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :cond_43
    nop

    :cond_44
    :goto_44
    const/4 v0, -0x1

    return v0
.end method
