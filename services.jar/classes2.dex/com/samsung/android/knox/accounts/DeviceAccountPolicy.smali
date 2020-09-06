.class public Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;
.super Ljava/lang/Object;
.source "DeviceAccountPolicy.java"


# static fields
.field private static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

.field private mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DeviceAccountPolicy"

    sput-object v0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    if-nez v0, :cond_10

    const-string v0, "device_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    return-object v0
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToAdditionBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToAdditionWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToAdditionWhiteList(String type, List<String> accounts, boolean defaultBlackList)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ".*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_22

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToAdditionBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_22

    sget-object v2, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToAdditionWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return v2
.end method

.method public addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToRemovalBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToRemovalWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->addAccountsToRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.addAccountsToRemovalWhiteList(String type, List<String> accounts, boolean defaultBlackList)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ".*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_22

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_22

    sget-object v2, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->addAccountsToRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    return v2
.end method

.method public clearAccountsFromAdditionBlackList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromAdditionBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccountsFromAdditionList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromAdditionList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromAdditionWhiteList(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromAdditionBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public clearAccountsFromAdditionWhiteList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromAdditionWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromRemovalBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccountsFromRemovalList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromRemovalList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->clearAccountsFromRemovalBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public clearAccountsFromRemovalWhiteList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.clearAccountsFromRemovalWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->clearAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountsFromAdditionBlackLists(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.getAccountsFromAdditionBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromAdditionBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccountsFromAdditionWhiteLists(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.getAccountsFromAdditionWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromAdditionWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccountsFromRemovalBlackLists(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.getAccountsFromRemovalBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromRemovalBlackLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccountsFromRemovalWhiteLists(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/AccountControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.getAccountsFromRemovalWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getAccountsFromRemovalWhiteLists(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedAccountTypes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->getSupportedAccountTypes()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsByType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Security policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeAccountsFromAdditionBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromAdditionBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromAdditionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeAccountsFromAdditionWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromAdditionWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromAdditionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeAccountsFromRemovalBlackList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromRemovalBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromRemovalBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeAccountsFromRemovalWhiteList(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceAccountPolicy.removeAccountsFromRemovalWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->removeAccountsFromRemovalWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Device Account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
