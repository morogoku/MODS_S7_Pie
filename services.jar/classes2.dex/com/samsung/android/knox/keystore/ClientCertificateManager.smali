.class public Lcom/samsung/android/knox/keystore/ClientCertificateManager;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# static fields
.field public static final CCM_CERTIFICATE:I = 0x1

.field public static final CCM_FAILURE:I = -0x1

.field public static final CCM_PRIVATE_KEY:I = 0x3

.field public static final CCM_SUCCESS:I

.field private static TAG:Ljava/lang/String;

.field private static mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ClientCertificateManager"

    sput-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientCertificateManager API ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static declared-synchronized getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;

    monitor-enter v0

    :try_start_3
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addPackageToExemptList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.addPackageToExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API addPackageToExemptList-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public deleteCCMProfile()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.deleteCCMProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed in deleteCCMProfile - Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public deleteCSRProfile(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.deleteCSRProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API deleteCSRProfile-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public deleteCertificate(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.deleteCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed in deleteCertificate - Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public generateCSR(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 14

    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.generateCSR"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_22

    return-object v0

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API ccmGenerateCSR-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateCSRUsingByteArray(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.generateCSRUsingByteArray"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1b

    return-object v0

    :cond_1a
    goto :goto_23

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API generateCSRUsingByteArray-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateCSRUsingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.generateCSRUsingString"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_19} :catch_1b

    return-object v0

    :cond_1a
    goto :goto_23

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API generateCSRUsingString-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateCSRUsingTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.generateCSRUsingTemplate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return-object v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API generateCSRUsingTemplate-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCCMProfile()Lcom/samsung/android/knox/keystore/CCMProfile;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.getCCMProfile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    return-object v0

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API getCCMProfile-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCCMProfile(Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getCCMVersion()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.getCCMVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_15

    return-object v0

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API getCCMVersion-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateAliases()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.getCertificateAliases"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return-object v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API getCertificateAliases-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.getDefaultCertificateAlias"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_15

    return-object v0

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API getDefaultCertificateAlias-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlotIdForCaller(Ljava/lang/String;)J
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "getSlotIdForCaller"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return-wide v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "getSlotIdForCaller failed - Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p2, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-wide v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "getSlotIdForPackage failed - Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public installCertificate(Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.installCertificate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API installCertificate-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public installObject(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .registers 22

    move-object v1, p0

    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v3, "ClientCertificateManager.installObject"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_f
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    sget-object v3, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v4, v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-interface/range {v3 .. v12}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2b} :catch_2d

    return v0

    :cond_2c
    goto :goto_35

    :catch_2d
    move-exception v0

    sget-object v3, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ClientCertificateManager API ccmInstallObject-Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    :goto_35
    const/4 v0, -0x1

    return v0
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "isCCMPolicyEnabledForCaller"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API isCCMPolicyEnabledForCaller-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.isCCMPolicyEnabledForPackage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_12

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12
    :try_start_12
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_20} :catch_22

    return v1

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed at ClientCertificateManager API isCCMPolicyEnabledForPackage-Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return v0
.end method

.method public registerForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ClientCertificateManager.registerForDefaultCertificate"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_e
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    if-eqz v1, :cond_21

    sget-object v2, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_20} :catch_22

    return v1

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed at ClientCertificateManager API ccmRegisterForDefaultCertificate-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    const/4 v0, -0x1

    return v0
.end method

.method public removePackageFromExemptList(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.removePackageFromExemptList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API removePackageFromExemptList-Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setCCMProfile(Lcom/samsung/android/knox/keystore/CCMProfile;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.setCCMProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API setCCMProfile-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setCSRProfile(Lcom/samsung/android/knox/keystore/CSRProfile;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ClientCertificateManager.setCSRProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-static {}, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/keystore/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at ClientCertificateManager API setCSRProfile-Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method
