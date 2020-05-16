.class public Lcom/samsung/android/knox/sso/config/GenericSSO;
.super Ljava/lang/Object;
.source "GenericSSO.java"


# static fields
.field private static final LOGO_SIZE_LIMIT:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "GenericSSO"

.field private static mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/config/GenericSSO;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/sso/config/GenericSSO;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/sso/config/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/config/GenericSSO;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-nez p0, :cond_a

    const/4 v1, 0x0

    :try_start_6
    monitor-exit v0

    return-object v1

    :catchall_8
    move-exception v1

    goto :goto_1e

    :cond_a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/sso/config/GenericSSO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/sso/config/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_8

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/config/GenericSSO;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_13

    if-nez p1, :cond_8

    goto :goto_13

    :cond_8
    :try_start_8
    new-instance v1, Lcom/samsung/android/knox/sso/config/GenericSSO;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/sso/config/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :cond_13
    :goto_13
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    if-nez v0, :cond_10

    const-string v0, "genericssoservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    :cond_10
    sget-object v0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    return-object v0
.end method


# virtual methods
.method public addWhiteListPackages(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/config/WhiteListPackage;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.addWhiteListPackages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-nez p1, :cond_b

    const/4 v0, -0x3

    return v0

    :cond_b
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_24

    :try_start_11
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->addWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1b} :catch_1c

    return v0

    :catch_1c
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in addWhiteListPackage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, -0x1

    return v0
.end method

.method public configureSSOByFile([B)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.configureSSOByFile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->configureSSOByFile(Lcom/samsung/android/knox/ContextInfo;[B)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in pushKnoxSSOConfigData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method public deleteWhiteListPackages(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.deleteWhiteListPackages"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->deleteWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in deleteWhiteListPackage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method public enrollSSOVendor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.enrollSSOVendor"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    if-eqz p3, :cond_36

    :try_start_10
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :catch_34
    move-exception v0

    goto :goto_41

    :cond_36
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->enrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_40} :catch_34

    return v1

    :goto_41
    nop

    const-string v1, "GenericSSO"

    const-string v2, "Exception in enRollSSOVendor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    const/4 v0, -0x1

    return v0
.end method

.method public forceAuthenticate()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.forceAuthenticate"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->forceAuthenticate(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in forceAuthenticate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method public getAuthenticationConfig()Lcom/samsung/android/knox/container/AuthenticationConfig;
    .registers 4

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called getAuthenticationConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/AuthenticationConfig;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getAuthenticationConfig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnrolledSSOVendor()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.getEnrolledSSOVendor"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getEnrolledSSOVendor(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getSSOIDs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWhiteListPackages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.getWhiteListPackages"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_e
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getWhiteListPackages(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getWhitelistedPackages"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNetworkAuthenticationEnforced()Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    if-eqz v1, :cond_22

    :try_start_7
    const-string v1, "GenericSSO"

    const-string v2, "Called isNetworkAuthenticationenforced"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->isNetworkAuthenticationEnforced(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1a

    move v0, v1

    goto :goto_22

    :catch_1a
    move-exception v1

    const-string v2, "GenericSSO"

    const-string v3, "Exception in isNetworkAuthenticationenforced"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return v0
.end method

.method public performUserAuthentication(Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called performUserAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->performUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in performUserAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)I
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called setEnterpriseIDAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setEnterpriseIDAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method public setAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called setEnterpriseIDAuthenticationConfigForUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setAuthenticationConfigForContainer(Lcom/samsung/android/knox/container/AuthenticationConfig;I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setEnterpriseIDAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public setCustomerBrandInfo(Ljava/util/Map;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.setCustomerBrandInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x0

    const/16 v1, -0xe

    if-eqz p1, :cond_4f

    :try_start_12
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_20

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_20

    :cond_35
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    const/high16 v5, 0x100000

    if-le v4, v5, :cond_41

    return v1

    :cond_41
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_20

    :catch_4b
    move-exception v0

    goto :goto_5a

    :catch_4d
    move-exception v0

    goto :goto_63

    :cond_4f
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setCustomerBrandInfo(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v2
    :try_end_59
    .catch Landroid/os/TransactionTooLargeException; {:try_start_12 .. :try_end_59} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_59} :catch_4b

    return v2

    :goto_5a
    nop

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setCustomerBrandInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :goto_63
    nop

    const-string v2, "GenericSSO"

    const-string v3, "TranscationTooLarge Exception in setCustomerBrandInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6c
    :goto_6c
    const/4 v0, -0x1

    return v0
.end method

.method public setGenericSSOConfig(IILcom/samsung/android/knox/sso/config/GenericSSOConfig;)V
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called setGenericSSOConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setGenericSSOConfig(IILcom/samsung/android/knox/sso/config/GenericSSOConfig;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in setGenericSSOConfig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/container/AuthenticationConfig;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    if-eqz v1, :cond_22

    :try_start_7
    const-string v1, "GenericSSO"

    const-string v2, "Called setUpdatedAuthenticationConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->setUpdatedAuthenticationConfig(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/container/AuthenticationConfig;)Z

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1a

    move v0, v1

    goto :goto_22

    :catch_1a
    move-exception v1

    const-string v2, "GenericSSO"

    const-string v3, "Exception in setUpdatedAuthenticationConfig"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return v0
.end method

.method public unenrollSSOVendor(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "GenericSSO.unenrollSSOVendor"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_d
    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->unenrollSSOVendor(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    return v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in unEnrollSSOVendor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    return v0
.end method

.method public validateUserAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called validateUserAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->validateUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in validateUserAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public verifyUserAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_20

    :try_start_6
    const-string v0, "GenericSSO"

    const-string v1, "Called verifyUserAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/sso/config/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/config/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->verifyUserAuthentication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in verifyUserAuthentication"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method
