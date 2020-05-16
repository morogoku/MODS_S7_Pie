.class public Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;
.super Ljava/lang/Object;
.source "ContainerRestrictionPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ContainerRestrictionPolicy"

    sput-object v0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method static declared-synchronized getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v1, :cond_14

    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_14
    sget-object v1, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->gRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public allowShareList(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.allowShareList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowShareList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with restriction policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public isCameraEnabled(Z)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with device info policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public isShareListAllowed()Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    move v0, v2

    goto :goto_20

    :catch_18
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with restriction policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return v0
.end method

.method public isUseSecureKeypadEnabled()Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_f

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_17

    move v0, v2

    goto :goto_1f

    :catch_17
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public setCameraState(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.setCameraState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setCamera(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public setScreenCapture(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.setScreenCapture"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setScreenCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method

.method public setUseSecureKeypad(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerRestrictionPolicy.setUseSecureKeypad"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v2, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerRestriction PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setUseSecureKeypad(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v0, v2

    goto :goto_26

    :catch_1e
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v0
.end method
