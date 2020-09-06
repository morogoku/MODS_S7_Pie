.class public Lcom/samsung/android/knox/accounts/EmailAccountPolicy;
.super Ljava/lang/Object;
.source "EmailAccountPolicy.java"


# static fields
.field public static final ACCOUNT_TYPE_IMAP:Ljava/lang/String; = "imap"

.field public static final ACCOUNT_TYPE_POP3:Ljava/lang/String; = "pop3"

.field public static final ACTION_EMAIL_ACCOUNT_ADD_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

.field public static final ACTION_EMAIL_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

.field public static final EXTRA_INCOMING_PROTOCOL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

.field public static final EXTRA_INCOMING_SERVER_ADDRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "EmailAccountPolicy"

    sput-object v0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    if-nez v0, :cond_10

    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    return-object v0
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/accounts/EmailAccount;)J
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.addNewAccount(EmailAccount)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public deleteAccount(J)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.deleteAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountDetails(J)Lcom/samsung/android/knox/accounts/Account;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getAccountDetails"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getAccountId"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAllEmailAccounts()[Lcom/samsung/android/knox/accounts/Account;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getAllEmailAccounts"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityInComingServerPassword(J)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getSecurityInComingServerPassword"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityOutGoingServerPassword(J)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getSecurityOutGoingServerPassword"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public removePendingAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.removePendingAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.sendAccountsChangedBroadcast"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setAccountName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setAlwaysVibrateOnEmailNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setAsDefaultAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingProtocol"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerAcceptAllCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setInComingServerPort(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerPort"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setInComingServerSSL(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerSSL"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerAcceptAllCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOutGoingServerPort(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerPort"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerSSL"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setSecurityInComingServerPassword(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSecurityInComingServerPassword()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setAccountCertificatePassword "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setSecurityOutGoingServerPassword(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSecurityOutGoingServerPassword()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setSecurityOutGoingServerPassword "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSenderName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSignature"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
