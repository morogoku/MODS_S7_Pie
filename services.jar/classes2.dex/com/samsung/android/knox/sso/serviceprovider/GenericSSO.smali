.class public Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;
.super Ljava/lang/Object;
.source "GenericSSO.java"


# static fields
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

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mSync:Ljava/lang/Object;

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

    new-instance v2, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_8

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_13

    if-nez p1, :cond_8

    goto :goto_13

    :cond_8
    :try_start_8
    new-instance v1, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

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

    sget-object v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    if-nez v0, :cond_10

    const-string v0, "genericssoservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/sso/common/IGenericSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    :cond_10
    sget-object v0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mGenericSSOService:Lcom/samsung/android/knox/sso/common/IGenericSSO;

    return-object v0
.end method


# virtual methods
.method public addAppTokenToGenericSSO(Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .registers 6

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->addAppTokenToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in addAppTokenToGenericSSO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public addUserAndDeviceCertToGenericSSO(Lcom/samsung/android/knox/sso/common/TokenInfo;)I
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->addUserAndDeviceCertToGenericSSO(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/sso/common/TokenInfo;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in addUserAndDeviceCertToGenericSSO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public getAppTokenFromGenericSSO(Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getAppTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getAppTokenFromGenericSSO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomerBrandInfo()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_3e

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getCustomerBrandInfo(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_34} :catch_36

    goto :goto_21

    :cond_35
    return-object v1

    :catch_36
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getCustomerBrandInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAndDeviceCertFromGenericSSO()Lcom/samsung/android/knox/sso/common/TokenInfo;
    .registers 4

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->getUserAndDeviceCertFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in getUserAndDeviceCertFromGenericSSO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAppTokenFromGenericSSO(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->removeAppTokenFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in removeAppTokenFromGenericSSO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public removeUserAndDeviceCertFromGenericSSO()I
    .registers 4

    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_6
    invoke-static {}, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->getService()Lcom/samsung/android/knox/sso/common/IGenericSSO;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/GenericSSO;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/sso/common/IGenericSSO;->removeUserAndDeviceCertFromGenericSSO(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    const-string v1, "GenericSSO"

    const-string v2, "Exception in removeUserAndDeviceCertFromGenericSSO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, -0x1

    return v0
.end method
