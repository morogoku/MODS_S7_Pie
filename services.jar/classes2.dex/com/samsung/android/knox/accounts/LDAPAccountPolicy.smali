.class public Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"


# static fields
.field public static final ACTION_CREATE_LDAPACCOUNT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

.field public static final ACTION_LDAP_CREATE_ACCT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

.field public static final ACTION_LDAP_CREATE_ACCT_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

.field public static final ERROR_LDAP_ALREADY_EXISTS:I = -0x1

.field public static final ERROR_LDAP_CONNECTION:I = -0x7

.field public static final ERROR_LDAP_DOES_NOT_EXIST:I = -0x2

.field public static final ERROR_LDAP_INVALID_CREDENTIALS:I = -0x3

.field public static final ERROR_LDAP_NONE:I = 0x0

.field public static final ERROR_LDAP_SERVER_BUSY:I = -0x4

.field public static final ERROR_LDAP_SERVER_DOWN:I = -0x5

.field public static final ERROR_LDAP_TIMEOUT:I = -0x6

.field public static final ERROR_LDAP_UNKNOWN:I = -0x8

.field public static final EXTRA_LDAP_ACCT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

.field public static final EXTRA_LDAP_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_RESULT"

.field public static final EXTRA_LDAP_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "LDAPAccountPolicy"

    sput-object v0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    if-nez v0, :cond_10

    const-string v0, "ldap_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    return-object v0
.end method


# virtual methods
.method public createLDAPAccount(Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.createLDAPAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_16

    return-void

    :cond_15
    goto :goto_1e

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void
.end method

.method public deleteLDAPAccount(J)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.deleteLDAPAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getAllLDAPAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.getAllLDAPAccounts"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return-object v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLDAPAccount(J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LDAPAccountPolicy.getLDAPAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->lService:Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return-object v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to LDAP Settings service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method
