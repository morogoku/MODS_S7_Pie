.class public Lcom/android/server/enterprise/dlp/DLPProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "DLPProcessObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLP_DLPProcessObserver"

.field private static _instance:Lcom/android/server/enterprise/dlp/DLPProcessObserver;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->_instance:Lcom/android/server/enterprise/dlp/DLPProcessObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dlp/DLPProcessObserver;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->_instance:Lcom/android/server/enterprise/dlp/DLPProcessObserver;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/dlp/DLPProcessObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dlp/DLPProcessObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->_instance:Lcom/android/server/enterprise/dlp/DLPProcessObserver;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->_instance:Lcom/android/server/enterprise/dlp/DLPProcessObserver;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onProcessDied(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    const-string v1, "DLP_DLPProcessObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnProcessDied uid : pkgList is null for Uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v1

    if-nez v1, :cond_37

    const-string v1, "DLP_DLPProcessObserver"

    const-string v2, "In onProcessDied: dlpHelper is not initialized"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_37
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3a
    if-ge v3, v1, :cond_64

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getAppType(ILjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_61

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v6, v6, v3}, Lcom/android/server/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z

    goto :goto_64

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_64
    :goto_64
    return-void
.end method

.method public registerObserver()V
    .registers 8

    const-string v0, "DLP_DLPProcessObserver"

    const-string/jumbo v1, "registerObserver called "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v1, "DLP_DLPProcessObserver"

    const-string v2, "ActivityManagerNative.getDefault() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1a
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_23
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_21
    move-exception v3

    goto :goto_40

    :catch_23
    move-exception v3

    :try_start_24
    const-string v4, "DLP_DLPProcessObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured in registerObserver() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_21

    goto :goto_1d

    :goto_3f
    return-void

    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregister()V
    .registers 8

    const-string v0, "DLP_DLPProcessObserver"

    const-string/jumbo v1, "unregister observer called "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v1, "DLP_DLPProcessObserver"

    const-string v2, "ActivityManagerNative.getDefault() is null"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1a
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_23
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_21
    move-exception v3

    goto :goto_40

    :catch_23
    move-exception v3

    :try_start_24
    const-string v4, "DLP_DLPProcessObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in unregister() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_21

    goto :goto_1d

    :goto_3f
    return-void

    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
