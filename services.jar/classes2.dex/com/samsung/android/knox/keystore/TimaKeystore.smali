.class public Lcom/samsung/android/knox/keystore/TimaKeystore;
.super Ljava/lang/Object;
.source "TimaKeystore.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mKeystoreService:Lcom/samsung/android/knox/keystore/ITimaKeystore;

.field private static final mSync:Ljava/lang/Object;

.field private static mTimaKeystore:Lcom/samsung/android/knox/keystore/TimaKeystore;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TimaKeystore"

    sput-object v0, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    :goto_14
    return-void
.end method

.method public static createInstance()Lcom/samsung/android/knox/keystore/TimaKeystore;
    .registers 2

    new-instance v0, Lcom/samsung/android/knox/keystore/TimaKeystore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/keystore/TimaKeystore;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/knox/keystore/TimaKeystore;
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->mTimaKeystore:Lcom/samsung/android/knox/keystore/TimaKeystore;

    if-nez v1, :cond_f

    new-instance v1, Lcom/samsung/android/knox/keystore/TimaKeystore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/keystore/TimaKeystore;-><init>(Lcom/samsung/android/knox/ContextInfo;)V

    sput-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->mTimaKeystore:Lcom/samsung/android/knox/keystore/TimaKeystore;

    :cond_f
    sget-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->mTimaKeystore:Lcom/samsung/android/knox/keystore/TimaKeystore;

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method static declared-synchronized getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/keystore/TimaKeystore;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->mKeystoreService:Lcom/samsung/android/knox/keystore/ITimaKeystore;

    if-nez v1, :cond_13

    const-string v1, "knox_timakeystore_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/ITimaKeystore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->mKeystoreService:Lcom/samsung/android/knox/keystore/ITimaKeystore;

    :cond_13
    sget-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->mKeystoreService:Lcom/samsung/android/knox/keystore/ITimaKeystore;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public enableTimaKeystore(Z)Z
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "TimaKeystore.enableTimaKeystore"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->enableTimaKeystore(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    :catch_14
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "Failed at TimaKeystore API enableTimaKeystore-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public enableTimaKeystorePerApp(Z)Z
    .registers 8

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_7:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_19

    sget-object v1, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "enableTimaKeystorePerApp : support above KNOX_ENTERPRISE_SDK_VERSION_2_7"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v3, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v4, "TimaKeystore.enableTimaKeystorePerApp"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_26
    iget-object v3, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->enableTimaKeystorePerApp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_2d

    return v3

    :catch_2d
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v5, "Failed at TimaKeystore API enableTimaKeystorePerApp-Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    return v2
.end method

.method public encryptPassword(Ljava/lang/String;)[C
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "TimaKeystore.encryptPassword"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_d
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->encryptPassword(Ljava/lang/String;)[C

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "Failed at TimaKeystore API encryptPassword-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public isTimaKeyStoreDefaultForContainer()Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "TimaKeystore.isTimaKeyStoreDefaultForContainer"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->isTimaKeyStoreDefaultForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "Failed at TimaKeystore API isTimaKeyStoreDefaultForContainer-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public isTimaKeystoreEnabled()Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "TimaKeystore.isTimKeystoreEnabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->isTimaKeystoreEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "Failed at TimaKeystore API isTimKeystoreEnabled-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public isTimaKeystoreEnabledInDB()Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "TimaKeystore.isTimaKeystoreEnabledInDB"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->isTimaKeystoreEnabledInDB(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return v1

    :catch_15
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "Failed at TimaKeystore API isTimaKeystoreEnabledInDB-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method public isTimaKeystoreEnabledInternal()Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/keystore/TimaKeystore;->getKeystoreService()Lcom/samsung/android/knox/keystore/ITimaKeystore;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "TimaKeystore.isTimaKeystoreEnabledInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/TimaKeystore;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/keystore/ITimaKeystore;->isTimaKeystoreEnabledInternal(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v1

    :catch_14
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/keystore/TimaKeystore;->TAG:Ljava/lang/String;

    const-string v3, "Failed at TimaKeystore API isTimaKeystoreEnabledInternal-Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method
