.class public Lcom/samsung/android/knox/ccm/SemClientCertificateManager;
.super Ljava/lang/Object;
.source "SemClientCertificateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemClientCertificateManager"


# instance fields
.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemClientCertificateManager"

    const-string v1, "CCMServiceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "knox_ccm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v1, :cond_21

    const-string v1, "SemClientCertificateManager"

    const-string v2, "failed to get CCM Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method


# virtual methods
.method public getDefaultCertificateAlias()Ljava/lang/String;
    .registers 6

    const-string v0, "SemClientCertificateManager"

    const-string v1, "getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string v0, "SemClientCertificateManager"

    const-string v2, "failed to get CCM Service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    const-string v2, "SemClientCertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_37
    move-exception v0

    const-string v2, "SemClientCertificateManager"

    const-string v3, "Failed at ClientCertificateManager API getDefaultCertificateAlias-Exception "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public setDefaultClientCertificateManagerProfile()Z
    .registers 6

    const-string v0, "SemClientCertificateManager"

    const-string/jumbo v1, "setDefaultClientCertificateManagerProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string v0, "SemClientCertificateManager"

    const-string v2, "failed to get CCM Service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/knox/ccm/SemClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setDefaultCCMProfile()Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_1c

    return v0

    :catch_1c
    move-exception v0

    const-string v2, "SemClientCertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_38
    move-exception v0

    const-string v2, "SemClientCertificateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
