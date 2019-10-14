.class public Lcom/samsung/android/knox/seams/SEAMSPolicy;
.super Ljava/lang/Object;
.source "SEAMSPolicy.java"


# static fields
.field public static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final CLIPBOARD_DISABLE_BIDIRECTIONAL:I = 0x1

.field public static final CLIPBOARD_ENABLE_BIDIRECTIONAL:I = 0x0

.field public static final DEBUG:Z

.field public static final ERROR_ALREADY_CONTAINER_APP:I = -0x9

.field public static final ERROR_CERTS_NOT_MATCHED:I = -0xd

.field public static final ERROR_CONTAINER_COUNTS_OVERFLOW:I = -0x7

.field public static final ERROR_CONTAINER_ID_MISMATCH:I = -0xc

.field public static final ERROR_CONTAINER_NOT_EMPTY:I = -0xb

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_NO_CERTS:I = -0xe

.field public static final FALSE:I = 0x0

.field public static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GET_SERVICE_ERROR:I = -0xa

.field public static final IRM_PLATFORM_APPTYPE:I = 0x7

.field public static final IRM_UNTRUST_APPTYPE:I = 0x8

.field public static final NOT_INSTALLED:I = -0x4

.field public static final POLICY_FAILED:I = -0x1

.field public static final POLICY_OK:I = 0x0

.field public static final POLICY_REFUSED:I = -0x2

.field public static final RUNNING:I = -0x8

.field public static final SET_DEFAULT_MASK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SEAMS"

.field public static final TRUE:I = 0x1

.field private static mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .registers 4

    new-instance v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_1f

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    :cond_1f
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    if-nez v1, :cond_12

    new-instance v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/seams/SEAMSPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    :cond_12
    sget-object v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMS:Lcom/samsung/android/knox/seams/SEAMSPolicy;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private declared-synchronized getService()Lcom/samsung/android/knox/seams/ISEAMS;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    if-nez v0, :cond_11

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;
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
.method public activateDomain()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public activateDomain(Z)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.addAppToContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to add app to container"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to change the app domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public createSEContainer()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.createSEContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0}, Lcom/samsung/android/knox/seams/ISEAMS;->createSEContainer()I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to create SEContainer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public forceAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "SEAMS"

    const-string v1, "Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v0, p1, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    const-string v0, "SEAMS"

    const-string v1, "Process ID rejected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_1e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAMSLog()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getAMSLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get AMS Log"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAMSLogLevel()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getAMSLogLevel"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get AMS Log Level"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getAMSMode()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getAMSMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get AMS Mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getAVCLog()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getAVCLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get AVC Log"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivationStatus()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getDataType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getDataType"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_25

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/seams/ISEAMS;->getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get Datatype"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getDataType"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get Datatype"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getDomain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_26

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/seams/ISEAMS;->getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get Domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomain(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getDomain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get Domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getPackageNamesfromSEContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get package names from SEcontainer ID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEAMSLog()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSEAMSLog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get SEAMS Log"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerClipboardMode(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSEContainerClipboardMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEContainerClipboardMode(I)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "getSEContainerClipboardMode failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method public getSEContainerIDs()[I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSEContainerIDs"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEContainerIDs()[I

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get SEContainer IDs"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSEContainerIDFromPackageName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to get SE Container ID from Package Name"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSELinuxMode()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSELinuxMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to getSELinuxMode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public getSepolicyVersion()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSepolicyVersion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to getSepolicyVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSignatureFromCertificate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSignatureFromCertificate([B)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "getSignatureFromCertificate Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSignatureFromMac"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "getSignatureFromMac Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.getSignatureFromPackage"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "getSignatureFromPackage Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasKnoxContainers()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0}, Lcom/samsung/android/knox/seams/ISEAMS;->hasKnoxContainers()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "hasKnoxContainers Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public hasSEContainers()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0}, Lcom/samsung/android/knox/seams/ISEAMS;->hasSEContainers()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "hasSEContainers Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to check the authenticity of the caller"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string v0, "SEAMS"

    const-string v1, "SystemService null. Returning GET_SERVICE_ERROR."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    return v0
.end method

.method public isSEAndroidLogDumpStateInclude()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.isSEAndroidLogDumpStateInclude"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to execute isSEAndroidLogDumpStateInclude"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public isSEPolicyAutoUpdateEnabled()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.loadContainerSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->loadContainerSetting(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to save container setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.relabelAppDir"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to Relabel Data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public relabelData()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.relabelData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->relabelData(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to Relabel Data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.removeAppFromContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1d

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2, v1, v1}, Lcom/samsung/android/knox/seams/ISEAMS;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    const-string v2, "SEAMS"

    const-string v3, "Failed to remove app from container"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.removeAppFromContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/seams/ISEAMS;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to remove app from container"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public removeSEContainer(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.removeSEContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->removeSEContainer(I)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to remove SE container"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public setAMSLogLevel(I)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.setAMSLogLevel"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "SEAMS"

    const-string v2, "Failed to set AMS Log Level"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public setSEAndroidLogDumpStateInclude(Z)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.setSEAndroidLogDumpStateInclude"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    iget-object v1, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "SEAMS"

    const-string/jumbo v2, "setSEAndroidLogDumpStateInclude Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method public setSEContainerClipboardMode(II)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "SEAMSPolicy.setSEContainerClipboardMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getService()Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->mSEAMService:Lcom/samsung/android/knox/seams/ISEAMS;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/seams/ISEAMS;->setSEContainerClipboardMode(II)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    const-string v1, "SEAMS"

    const-string/jumbo v2, "setSEContainerClipboardMode failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, -0x1

    return v0
.end method
