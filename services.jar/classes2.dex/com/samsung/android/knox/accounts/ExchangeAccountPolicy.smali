.class public Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "ExchangeAccountPolicy.java"


# static fields
.field public static final ACTION_CBA_INSTALL_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS"

.field public static final ACTION_CBA_INSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

.field public static final ACTION_CREATE_EMAILACCOUNT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

.field public static final ACTION_DELETE_EMAILACCOUNT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

.field public static final ACTION_DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

.field public static final ACTION_EAS_INTENT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

.field public static final ACTION_EMAIL_ENABLE_MSG_COMPOSE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ENABLE_MSG_COMPOSE_INTERNAL"

.field public static final ACTION_EMAIL_INSTALL_CERT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

.field public static final ACTION_EMAIL_RENAME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_RENAME_CERTIFICATE_INTERNAL"

.field public static final ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

.field public static final ACTION_ENFORCE_SMIME_ALIAS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

.field public static final ACTION_ENFORCE_SMIME_ALIAS_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

.field public static final ACTION_EXCHANGE_ACCOUNT_ADD_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

.field public static final ACTION_EXCHANGE_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

.field public static final ACTION_FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

.field public static final ACTION_FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

.field public static final ACTION_FORCE_SMIME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

.field public static final ACTION_GET_EMAIL_DEVICEID_REQUEST_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

.field public static final ACTION_GET_EMAIL_DEVICEID_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

.field public static final ACTION_RELEASE_SMIME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

.field public static final ACTION_REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final ACTION_RESULT_EMAILACCOUNT_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final ACTION_SET_EMAILACCOUNT_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_EMAILACCOUNT_PASSWORD_INTERNAL"

.field public static final ENFORCE_SMIME_ALIAS_TYPE_ENCRYPT:I = 0x0

.field public static final ENFORCE_SMIME_ALIAS_TYPE_SIGN:I = 0x1

.field public static final ERROR_SET_SMIME_CERTIFICATE_FAIL_BIND_PASSWORD:I = 0x4

.field public static final ERROR_SET_SMIME_CERTIFICATE_NONE:I = -0x1

.field public static final ERROR_SET_SMIME_CERTIFICATE_NOT_FOUND:I = 0x1

.field public static final ERROR_SET_SMIME_CERTIFICATE_UNKNOWN:I = 0x0

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

.field public static final EXTRA_CERT_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

.field public static final EXTRA_CERT_PASSWORD_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PASSWORD_INTERNAL"

.field public static final EXTRA_CERT_PATH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

.field public static final EXTRA_CERT_RESULT_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

.field public static final EXTRA_ENFORCE_SMIME_ALIAS_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

.field public static final EXTRA_ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

.field public static final EXTRA_ENFORCE_SMIME_ALIAS_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"

.field public static final EXTRA_SERVER_ADDRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

.field public static final EXTRA_SMIME_INSTALL_TYPE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

.field public static final EXTRA_SMIME_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SMIME_RESULT"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATUS"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccId:J

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ExchangeAccountPolicy"

    sput-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    if-nez v0, :cond_10

    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    return-object v0
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/accounts/ExchangeAccount;)J
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.addNewAccount(ExchangeAccount)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v1, -0x1

    const/16 v3, 0x11

    if-ge v0, v3, :cond_26

    if-eqz p1, :cond_26

    iget-object v3, p1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_25
    return-wide v1

    :cond_26
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v3

    if-eqz v3, :cond_3d

    :try_start_2c
    iget-object v3, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v4, p1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J

    move-result-wide v3
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_34} :catch_35

    return-wide v3

    :catch_35
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with exchange account policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    return-wide v1
.end method

.method public allowInComingAttachments(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.allowInComingAttachments"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccount(J)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.deleteAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountCertificatePassword(J)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.getAccountCertificatePassword()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getAccountCertificatePassword()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountDetails(J)Lcom/samsung/android/knox/accounts/Account;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.getAccountDetails"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountEmailPassword(J)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.getAccountEmailPassword()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getAccountEmailPassword()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.getAccountId"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAllEASAccounts()[Lcom/samsung/android/knox/accounts/Account;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.getAllEASAccounts"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.getDeviceId"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIncomingAttachmentsSize(J)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCalendarAgeFilter(J)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEmailAgeFilter(J)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(J)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(J)I
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(J)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(J)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public getSMIMECertificateAlias(JI)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getSMIMECertificateAlias() "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIncomingAttachmentsAllowed(J)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public removePendingAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.removePendingAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.sendAccountsChangedBroadcast"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_bb

    :try_start_d
    iget-wide v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mAccId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountBaseParameters : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountBaseParameters : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountBaseParameters : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountBaseParameters : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountBaseParameters : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mAccId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v9, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mAccId:J

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iput-wide v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mAccId:J

    :cond_ab
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_b2} :catch_b3

    goto :goto_bb

    :catch_b3
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_bb
    :goto_bb
    return-void
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAcceptAllCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 16

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAccountBaseParameters"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_1b

    return-wide v0

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountCertificatePassword(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAccountCertificatePassword()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setAccountCertificatePassword()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountEmailPassword(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAccountEmailPassword()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setAccountEmailPassword()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAccountName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAlwaysVibrateOnEmailNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setAsDefaultAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setClientAuthCert"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public setDataSyncs(ZZZZJ)Z
    .registers 16

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setDataSyncs"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_23

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public setForceSMIMECertificateAlias(JLjava/lang/String;I)Z
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setForceSMIMECertificateAlias"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1b

    return v0

    :cond_1a
    goto :goto_23

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setForceSMIMECertificateAlias() "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public setForceSMIMECertificateAlias(JLjava/lang/String;Ljava/lang/String;I)Z
    .registers 15

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setForceSMIMECertificateAlias"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2d

    :try_start_11
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_25

    return v1

    :cond_24
    goto :goto_2d

    :catch_25
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed setForceSMIMECertificateAlias() "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    return v1
.end method

.method public setIncomingAttachmentsSize(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setIncomingAttachmentsSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxCalendarAgeFilter(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setMaxCalendarAgeFilter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxEmailAgeFilter(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setMaxEmailAgeFilter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxEmailBodyTruncationSize(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setMaxEmailBodyTruncationSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxEmailHTMLBodyTruncationSize(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setMaxEmailHTMLBodyTruncationSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setPastDaysToSync(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setPastDaysToSync"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setRequireEncryptedSMIMEMessages(JZ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setRequireEncryptedSMIMEMessages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setRequireSignedSMIMEMessages(JZ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setRequireSignedSMIMEMessages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setSSL(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setSSL"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setSignature"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncPeakTimings(IIIJ)Z
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setSyncPeakTimings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncSchedules(IIIJ)Z
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ExchangeAccountPolicy.setSyncSchedules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    const/4 v0, 0x0

    return v0
.end method
