.class public Lcom/samsung/android/knox/container/ContainerApplicationPolicy;
.super Ljava/lang/Object;
.source "ContainerApplicationPolicy.java"


# static fields
.field public static final INSTALL_ONLY:I = 0x1f7

.field private static TAG:Ljava/lang/String;

.field private static gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;


# instance fields
.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ContainerApplicationPolicy"

    sput-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private declared-synchronized getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_11

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_11
    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->gAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addHomeShortcut(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addHomeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_1a

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_23

    move v0, v3

    goto :goto_2b

    :catch_23
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at Application PolicyService API addHomeShortcut "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return v0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackageToInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_29

    if-nez v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    move v0, v4

    goto :goto_31

    :catch_29
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API addPackageToInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return v0
.end method

.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public addPackagesToClearCacheWhiteList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public addPackagesToClearDataBlackList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public addPackagesToClearDataWhiteList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.addPackagesToClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v1, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v1
.end method

.method public deleteHomeShortcut(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.deleteHomeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_1a

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_23

    move v0, v3

    goto :goto_2b

    :catch_23
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at Application PolicyService API deleteHomeShortcut "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return v0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API setEnableApplication "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public getPackages()[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_13

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1b

    move-object v0, v3

    goto :goto_23

    :catch_1b
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API getPackages "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move-object v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move-object v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-object v0
.end method

.method public getPackagesFromClearDataBlackList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move-object v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.getPackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move-object v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-object v0
.end method

.method public getPackagesFromInstallWhiteList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    move-object v0, v2

    goto :goto_20

    :catch_18
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API getPackagesFromInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-object v0
.end method

.method public installPackage(Ljava/lang/String;ILcom/samsung/android/knox/EnterpriseContainerCallback;)Z
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.installPackage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v8

    if-nez v8, :cond_1a

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v4, p1

    move-object v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installAppWithCallback(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLcom/samsung/android/knox/IEnterpriseContainerCallback;Landroid/os/ParcelFileDescriptor;)Z

    move-result v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_27

    move v0, v2

    goto :goto_2f

    :catch_27
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API getPackages "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return v0
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move v0, v2

    goto :goto_1d

    :catch_15
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return v0
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_15

    move v0, v2

    goto :goto_1d

    :catch_15
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return v0
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API isPackageInInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackageFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_23

    if-nez v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    move v0, v3

    goto :goto_2b

    :catch_23
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API removePackageFromInstallWhiteList "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return v0
.end method

.method public removePackagesFromClearCacheBlackList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public removePackagesFromClearDataBlackList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public removePackagesFromClearDataWhiteList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.removePackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.setDisableApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1f

    move v0, v2

    goto :goto_27

    :catch_1f
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API setDisableApplication "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return v0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.setEnableApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1f

    move v0, v2

    goto :goto_27

    :catch_1f
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerApplicationPolicy API setEnableApplication "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    return v0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.startApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_1a

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_22

    move v0, v3

    goto :goto_2a

    :catch_22
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API startApp "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return v0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.stopApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_1a

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_20} :catch_22

    move v0, v3

    goto :goto_2a

    :catch_22
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API stopApp "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;Lcom/samsung/android/knox/EnterpriseContainerCallback;)Z
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerApplicationPolicy.uninstallPackage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-nez v2, :cond_1a

    sget-object v3, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    if-eqz p2, :cond_44

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_38

    const/16 v4, 0x3f0

    invoke-virtual {p2, v4, v3}, Lcom/samsung/android/knox/EnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    goto :goto_44

    :cond_38
    const-string/jumbo v4, "pmerrorcode"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x3f1

    invoke-virtual {p2, v4, v3}, Lcom/samsung/android/knox/EnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    goto :goto_4d

    :catch_45
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at ContainerApplicationPolicy API getPackages "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    return v0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    iget-object v0, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v3, "ContainerApplicationPolicy.writeData"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/high16 v3, 0x40000

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v12

    if-nez v12, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerApplication PolicyService is not yet ready!!!"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1c
    const/4 v5, 0x0

    const/4 v0, 0x0

    move v6, v0

    :try_start_1f
    iget-object v7, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_21} :catch_e7
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_21} :catch_d9

    move-object/from16 v13, p1

    :try_start_23
    invoke-interface {v12, v7, v13}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_32

    sget-object v0, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "package is not in container!!!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_32
    const/4 v7, 0x0

    const/high16 v14, 0x40000

    if-eqz v2, :cond_46

    array-length v8, v2

    move v6, v8

    array-length v8, v2

    div-int/2addr v8, v14

    move v7, v8

    if-lez v7, :cond_43

    invoke-static {v2, v0, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_42} :catch_d7
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_42} :catch_d5

    goto :goto_44

    :cond_43
    move-object v0, v2

    :goto_44
    move-object v15, v0

    goto :goto_47

    :cond_46
    move-object v15, v5

    :goto_47
    move v11, v6

    move v10, v7

    :try_start_49
    monitor-enter p0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4a} :catch_d0
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4a} :catch_cb

    :try_start_4a
    iget-object v6, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_b8

    const/4 v0, 0x0

    move-object v5, v12

    move-object v7, v13

    move-object/from16 v8, p2

    move-object v9, v15

    move v14, v10

    move v10, v0

    move/from16 v17, v11

    :try_start_56
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/knox/application/IApplicationPolicy;->writeData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z

    move-result v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_b5

    const/4 v4, 0x1

    move v5, v0

    :goto_5c
    move v0, v4

    if-gt v0, v14, :cond_ad

    if-eqz v5, :cond_ad

    const-wide/16 v6, 0x64

    :try_start_63
    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_b2

    if-ne v0, v14, :cond_79

    const/high16 v4, 0x40000

    mul-int v6, v0, v4

    move/from16 v11, v17

    :try_start_6e
    invoke-static {v2, v6, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_74

    :goto_72
    move-object v15, v6

    goto :goto_87

    :catchall_74
    move-exception v0

    move v4, v5

    move/from16 v17, v11

    goto :goto_b6

    :cond_79
    move/from16 v11, v17

    const/high16 v4, 0x40000

    mul-int v6, v0, v4

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v7, v4

    :try_start_82
    invoke-static {v2, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_a7

    goto :goto_72

    :goto_87
    const/16 v16, 0x0

    :try_start_89
    iget-object v6, v1, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_a0

    const/4 v10, 0x1

    move-object v5, v12

    move-object v7, v13

    move-object/from16 v8, p2

    move-object v9, v15

    move/from16 v17, v11

    :try_start_93
    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/knox/application/IApplicationPolicy;->writeData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z

    move-result v5
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_9b

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    goto :goto_5c

    :catchall_9b
    move-exception v0

    move-object v5, v15

    move/from16 v4, v16

    goto :goto_bd

    :catchall_a0
    move-exception v0

    move/from16 v17, v11

    move-object v5, v15

    move/from16 v4, v16

    goto :goto_ac

    :catchall_a7
    move-exception v0

    move/from16 v17, v11

    move v4, v5

    move-object v5, v15

    :goto_ac
    goto :goto_bd

    :cond_ad
    :try_start_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_b2

    nop

    move/from16 v11, v17

    goto :goto_f5

    :catchall_b2
    move-exception v0

    move v4, v5

    goto :goto_b6

    :catchall_b5
    move-exception v0

    :goto_b6
    move-object v5, v15

    goto :goto_bd

    :catchall_b8
    move-exception v0

    move v14, v10

    move/from16 v17, v11

    move-object v5, v15

    :goto_bd
    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_c9

    :try_start_be
    throw v0
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_bf} :catch_c4
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_bf} :catch_bf

    :catch_bf
    move-exception v0

    move-object v15, v5

    move/from16 v11, v17

    goto :goto_de

    :catch_c4
    move-exception v0

    move-object v15, v5

    move/from16 v11, v17

    goto :goto_ec

    :catchall_c9
    move-exception v0

    goto :goto_bd

    :catch_cb
    move-exception v0

    move/from16 v17, v11

    move v5, v4

    goto :goto_df

    :catch_d0
    move-exception v0

    move/from16 v17, v11

    move v5, v4

    goto :goto_ed

    :catch_d5
    move-exception v0

    goto :goto_dc

    :catch_d7
    move-exception v0

    goto :goto_ea

    :catch_d9
    move-exception v0

    move-object/from16 v13, p1

    :goto_dc
    move-object v15, v5

    move v11, v6

    :goto_de
    move v5, v4

    :goto_df
    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "InterruptedException at ContainerApplicationPolicy API writeData "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f5

    :catch_e7
    move-exception v0

    move-object/from16 v13, p1

    :goto_ea
    move-object v15, v5

    move v11, v6

    :goto_ec
    move v5, v4

    :goto_ed
    sget-object v4, Lcom/samsung/android/knox/container/ContainerApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at ContainerApplicationPolicy API writeData "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_f5
    return v5
.end method
