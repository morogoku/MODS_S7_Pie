.class public Lcom/android/server/enterprise/dlp/DLPCacheHelper;
.super Ljava/lang/Object;
.source "DLPCacheHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLP_DLPCacheHelper"

.field private static mUserCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/dlp/DLPCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-void
.end method

.method public static declared-synchronized clearCacheForUser(I)Z
    .registers 5

    const-class v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    monitor-enter v0

    :try_start_3
    const-string v1, "DLP_DLPCacheHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCacheForUser called for userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "DLP_DLPCacheHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache for userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "found removing ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4d

    :cond_4a
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_4d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDLPCache(I)Lcom/android/server/enterprise/dlp/DLPCache;
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dlp/DLPCache;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 15

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_16

    const-string v3, "DLP_DLPCacheHelper"

    const-string v4, "config is null"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_105

    const/4 v3, 0x0

    monitor-exit p0

    return v3

    :cond_16
    const/4 v3, 0x0

    :try_start_17
    const-string v4, "Activate"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "Activate"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    :cond_26
    const/4 v4, 0x1

    if-nez v3, :cond_4f

    const-string v5, "DLP_DLPCacheHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DLP is not activated for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", removing cache!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_105

    monitor-exit p0

    return v4

    :cond_4f
    :try_start_4f
    new-instance v5, Lcom/android/server/enterprise/dlp/DLPCache;

    invoke-direct {v5}, Lcom/android/server/enterprise/dlp/DLPCache;-><init>()V

    move-object v0, v5

    iput-boolean v3, v0, Lcom/android/server/enterprise/dlp/DLPCache;->isActivated:Z

    const-string v5, "CREATE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    const-string v5, "CREATE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/enterprise/dlp/DLPCache;->auditCreate:Z

    :cond_67
    const-string v5, "OPEN"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string v5, "OPEN"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/enterprise/dlp/DLPCache;->auditOpen:Z

    :cond_77
    const-string v5, "RENAME"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    const-string v5, "RENAME"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/enterprise/dlp/DLPCache;->auditRename:Z

    :cond_87
    const-string v5, "EXPIRED"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    const-string v5, "EXPIRED"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/enterprise/dlp/DLPCache;->auditExpired:Z

    :cond_97
    const-string v5, "UNAUTHORIZED"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    const-string v5, "UNAUTHORIZED"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/enterprise/dlp/DLPCache;->auditUnauthorized:Z

    :cond_a7
    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mDlpStorageHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_e4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    if-nez v7, :cond_c2

    goto :goto_b3

    :cond_c2
    iget-object v8, v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    if-eqz v8, :cond_e3

    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_da

    iget-object v11, v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string v12, "Type"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v4, :cond_da

    const/4 v10, 0x1

    :cond_da
    iget-object v11, v0, Lcom/android/server/enterprise/dlp/DLPCache;->mWhitelistedPkgs:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    goto :goto_b3

    :cond_e4
    const-string v6, "DLP_DLPCacheHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating DLP cache for userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->mUserCacheMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_103
    .catchall {:try_start_4f .. :try_end_103} :catchall_105

    monitor-exit p0

    return v4

    :catchall_105
    move-exception p1

    monitor-exit p0

    throw p1
.end method
