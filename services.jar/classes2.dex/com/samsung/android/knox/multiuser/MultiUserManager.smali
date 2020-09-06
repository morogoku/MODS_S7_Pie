.class public Lcom/samsung/android/knox/multiuser/MultiUserManager;
.super Ljava/lang/Object;
.source "MultiUserManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserManager"

.field private static gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

.field private static isMuSupportInfoReady:Z

.field private static isMuSupported:Z

.field private static mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iput-object p2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .registers 3

    new-instance v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method private enforceMultiUserSupport()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getMuSupportInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This device does not support multiple users"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_17

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    :cond_17
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->gMultiUserMgrInst:Lcom/samsung/android/knox/multiuser/MultiUserManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private declared-synchronized getMuSupportInfo()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z

    if-nez v0, :cond_34

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_38

    if-eqz v0, :cond_34

    :try_start_b
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupportInfoReady:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19
    .catchall {:try_start_b .. :try_end_18} :catchall_38

    goto :goto_34

    :catch_19
    move-exception v0

    :try_start_1a
    const-string v1, "MultiUserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed talking with multi user service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    sget-boolean v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isMuSupported:Z
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_38

    monitor-exit p0

    return v0

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    :cond_11
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowMultipleUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    :try_start_e
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowMultipleUsers(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    move v1, v2

    nop

    :cond_1e
    return v1

    :cond_1f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Not Supported in this device"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return v1
.end method

.method public allowUserCreation(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowUserCreation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_36

    :try_start_e
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserCreation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move v0, v1

    goto :goto_36

    :catch_1b
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return v0
.end method

.method public allowUserRemoval(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.allowUserRemoval"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_36

    :try_start_e
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->allowUserRemoval(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move v0, v1

    goto :goto_36

    :catch_1b
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return v0
.end method

.method public createUser(Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.createUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_36

    :try_start_e
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->createUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move v0, v1

    goto :goto_36

    :catch_1b
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return v0
.end method

.method public getUsers()[I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.getUsers"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_36

    :try_start_e
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->getUsers(Lcom/samsung/android/knox/ContextInfo;)[I

    move-result-object v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move-object v0, v1

    goto :goto_36

    :catch_1b
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-object v0
.end method

.method public isUserCreationAllowed()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserCreationAllowed(Z)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_2c

    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v1

    goto :goto_2c

    :catch_11
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return v0
.end method

.method public isUserRemovalAllowed()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isUserRemovalAllowed(Z)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_2c

    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    move v0, v1

    goto :goto_2c

    :catch_11
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return v0
.end method

.method public multipleUsersAllowed()Z
    .registers 3

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not Supported in this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public multipleUsersAllowed(Z)Z
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    :try_start_7
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_14

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1

    :catch_14
    move-exception v0

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return v1
.end method

.method public multipleUsersSupported()Z
    .registers 5

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_6
    sget-object v0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v1, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "MultiUserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed talking with multi user service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public removeUser(I)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "MultiUserManager.removeUser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getService()Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    move-result-object v1

    if-eqz v1, :cond_36

    :try_start_e
    invoke-direct {p0}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->enforceMultiUserSupport()V

    sget-object v1, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mService:Lcom/samsung/android/knox/multiuser/IMultiUserManager;

    iget-object v2, p0, Lcom/samsung/android/knox/multiuser/MultiUserManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/multiuser/IMultiUserManager;->removeUser(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1b

    move v0, v1

    goto :goto_36

    :catch_1b
    move-exception v1

    const-string v2, "MultiUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed talking with multi user service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return v0
.end method
