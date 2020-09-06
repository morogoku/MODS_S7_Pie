.class public Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
.super Ljava/lang/Object;
.source "EdmDLPStorageHelper.java"


# static fields
.field private static final MAX_LOG_NUM:I = 0x33

.field private static final TAG:Ljava/lang/String; = "DLP_EdmDLPStorageHelper"

.field private static final TYPE_CONFIG:I = 0x2

.field private static final TYPE_CONFIG_LOG:I = 0x5

.field private static mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBooleanAuditValues(I)[Z
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Z

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    :cond_b
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_11

    aput-boolean v2, v0, v2

    :cond_11
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    :cond_18
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    :cond_1f
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_26

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    :cond_26
    return-object v0
.end method

.method private getBooleanValues(I)[Z
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Z

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    :cond_b
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_11

    aput-boolean v2, v0, v2

    :cond_11
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIntValue(ZZ)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    if-eqz p2, :cond_9

    or-int/lit8 v0, v0, 0x2

    :cond_9
    return v0
.end method

.method private getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v4, "IRMServiceInformationTable"

    invoke-virtual {v3, v4, p2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v1}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_38} :catch_42
    .catchall {:try_start_3 .. :try_end_38} :catchall_40

    goto :goto_1a

    :cond_39
    if-eqz v0, :cond_60

    :goto_3b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_60

    :catchall_40
    move-exception v1

    goto :goto_61

    :catch_42
    move-exception v1

    :try_start_43
    const-string v3, "DLP_EdmDLPStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred accessing Enterprise db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_40

    if-eqz v0, :cond_60

    goto :goto_3b

    :cond_60
    :goto_60
    return-object v2

    :goto_61
    if-eqz v0, :cond_67

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_67
    throw v1
.end method

.method private isConfigEnabled([Ljava/lang/String;I)I
    .registers 10

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :try_start_1d
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMServiceInformationTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_38

    :cond_29
    :goto_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_33
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_33} :catch_41
    .catchall {:try_start_1d .. :try_end_33} :catchall_3f

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    const/4 v3, 0x1

    goto :goto_29

    :cond_38
    if-eqz v1, :cond_5f

    :goto_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_5f

    :catchall_3f
    move-exception v2

    goto :goto_60

    :catch_41
    move-exception v2

    :try_start_42
    const-string v4, "DLP_EdmDLPStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_3f

    if-eqz v1, :cond_5f

    goto :goto_3a

    :cond_5f
    :goto_5f
    return v3

    :goto_60
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_66
    throw v2
.end method


# virtual methods
.method public addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "userid"

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "fileUri"

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "irmProvider"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rights"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v2, "IRMDocumentRightsTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeDumpLog()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_5f

    :catch_48
    move-exception v0

    const-string v1, "DLP_EdmDLPStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDumpLog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5f
    return-void
.end method

.method public addWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_105

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_105

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    if-nez v5, :cond_1a

    goto :goto_b

    :cond_1a
    iget-object v6, v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->appIdentity:Lcom/samsung/android/knox/AppIdentity;

    if-eqz v6, :cond_ff

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const/4 v11, 0x1

    if-eqz v10, :cond_37

    iget-object v10, v5, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->extras:Landroid/os/Bundle;

    const-string v12, "Type"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v11, :cond_37

    const/4 v9, 0x1

    :cond_37
    if-eqz v7, :cond_ff

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_ff

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addWhitelistApps => "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", isConsumer: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_ad

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "adminUid"

    iget v15, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move-object/from16 v16, v4

    invoke-static {v15, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "userid"

    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "data_text1"

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "data_text2"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v11, "IRMServiceInformationTable"

    invoke-virtual {v4, v11, v3, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_ab

    const/4 v13, 0x1

    nop

    :cond_ab
    or-int/2addr v2, v13

    goto :goto_101

    :cond_ad
    move-object/from16 v16, v4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v12, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "userid"

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_ed

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ed

    const-string v4, "data_text2"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ed
    iget-object v4, v0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v11, "IRMServiceInformationTable"

    invoke-virtual {v4, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    const-wide/16 v14, 0x0

    cmp-long v4, v11, v14

    if-lez v4, :cond_fd

    const/4 v13, 0x1

    nop

    :cond_fd
    or-int/2addr v2, v13

    goto :goto_101

    :cond_ff
    move-object/from16 v16, v4

    :goto_101
    move-object/from16 v4, v16

    goto/16 :goto_b

    :cond_105
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "DUMP OF DLP Information :"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move v7, v0

    :try_start_14
    new-instance v8, Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_16} :catch_26e
    .catchall {:try_start_14 .. :try_end_16} :catchall_266

    move-object/from16 v9, p0

    :try_start_18
    iget-object v10, v9, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string v10, "data_int1"

    const-string v11, "data_int2"

    const-string v12, "data_int3"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "type"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "IRMServiceInformationTable"

    const/4 v14, 0x0

    invoke-virtual {v8, v12, v10, v11, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v2, v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v12, " isActivated  isLocked  expiry_after"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_47} :catch_264
    .catchall {:try_start_18 .. :try_end_47} :catchall_262

    const/4 v12, 0x1

    if-eqz v2, :cond_8b

    :try_start_4a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_8b

    :goto_50
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_90

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "            "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "         "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_86
    .catch Landroid/database/SQLException; {:try_start_4a .. :try_end_86} :catch_88
    .catchall {:try_start_4a .. :try_end_86} :catchall_2b5

    const/4 v14, 0x0

    goto :goto_50

    :catch_88
    move-exception v0

    goto/16 :goto_275

    :cond_8b
    :try_start_8b
    const-string v14, "  Cursor is null"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_90
    const-string/jumbo v14, "userid"

    const-string/jumbo v15, "type"

    const-string v13, "data_text1"

    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "IRMServiceInformationTable"

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v3, v12

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "type"
    :try_end_bb
    .catch Landroid/database/SQLException; {:try_start_8b .. :try_end_bb} :catch_264
    .catchall {:try_start_8b .. :try_end_bb} :catchall_262

    move-object/from16 v16, v4

    const/4 v0, 0x1

    :try_start_be
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "IRMServiceInformationTable"

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v13, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_cc
    .catch Landroid/database/SQLException; {:try_start_be .. :try_end_cc} :catch_25c
    .catchall {:try_start_be .. :try_end_cc} :catchall_256

    move-object v4, v0

    if-eqz v3, :cond_d6

    :try_start_cf
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_d6

    const/4 v6, 0x1

    :cond_d6
    if-eqz v4, :cond_df

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_dc
    .catch Landroid/database/SQLException; {:try_start_cf .. :try_end_dc} :catch_88
    .catchall {:try_start_cf .. :try_end_dc} :catchall_2b5

    if-eqz v0, :cond_df

    const/4 v7, 0x1

    :cond_df
    :try_start_df
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, " userID isConsumer  packageName"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e7
    .catch Landroid/database/SQLException; {:try_start_df .. :try_end_e7} :catch_250
    .catchall {:try_start_df .. :try_end_e7} :catchall_249

    if-nez v6, :cond_f4

    if-nez v7, :cond_f4

    :try_start_eb
    const-string v0, "  Cursor is null"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f0
    .catch Landroid/database/SQLException; {:try_start_eb .. :try_end_f0} :catch_88
    .catchall {:try_start_eb .. :try_end_f0} :catchall_2b5

    move-object/from16 v17, v5

    goto/16 :goto_186

    :cond_f4
    if-eqz v6, :cond_13e

    :goto_f6
    :try_start_f6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_106
    .catch Landroid/database/SQLException; {:try_start_f6 .. :try_end_106} :catch_139
    .catchall {:try_start_f6 .. :try_end_106} :catchall_134

    move-object/from16 v17, v5

    const/4 v15, 0x0

    :try_start_109
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "           "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v5, v17

    goto :goto_f6

    :catchall_134
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_25b

    :catch_139
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_261

    :cond_13e
    move-object/from16 v17, v5

    if-eqz v7, :cond_186

    :goto_142
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_186

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "           "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17b
    .catch Landroid/database/SQLException; {:try_start_109 .. :try_end_17b} :catch_181
    .catchall {:try_start_109 .. :try_end_17b} :catchall_17c

    goto :goto_142

    :catchall_17c
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_2b6

    :catch_181
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_275

    :cond_186
    :goto_186
    :try_start_186
    const-string/jumbo v0, "userid"

    const-string/jumbo v5, "fileUri"

    const-string/jumbo v15, "irmProvider"

    filled-new-array {v0, v5, v15}, [Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "rights"
    :try_end_19b
    .catch Landroid/database/SQLException; {:try_start_186 .. :try_end_19b} :catch_243
    .catchall {:try_start_186 .. :try_end_19b} :catchall_23c

    move/from16 v18, v6

    const/4 v6, 0x5

    :try_start_19e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "IRMDocumentRightsTable"

    const/4 v15, 0x0

    invoke-virtual {v8, v6, v0, v5, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1ac
    .catch Landroid/database/SQLException; {:try_start_19e .. :try_end_1ac} :catch_236
    .catchall {:try_start_19e .. :try_end_1ac} :catchall_22f

    :try_start_1ac
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v15, " userID time                    log"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v6, :cond_206

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_206

    :goto_1bc
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1fe

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v5, v20

    goto :goto_1bc

    :cond_1fe
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_20f

    :cond_206
    move-object/from16 v19, v0

    move-object/from16 v20, v5

    const-string v0, "  Cursor is null"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20f
    .catch Landroid/database/SQLException; {:try_start_1ac .. :try_end_20f} :catch_22c
    .catchall {:try_start_1ac .. :try_end_20f} :catchall_229

    :goto_20f
    if-eqz v2, :cond_215

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_215
    if-eqz v3, :cond_21b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_21b
    if-eqz v4, :cond_221

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_221
    if-eqz v6, :cond_2b1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto/16 :goto_2b1

    :catchall_229
    move-exception v0

    move-object v5, v6

    goto :goto_232

    :catch_22c
    move-exception v0

    move-object v5, v6

    goto :goto_239

    :catchall_22f
    move-exception v0

    move-object/from16 v5, v17

    :goto_232
    move/from16 v6, v18

    goto/16 :goto_2b6

    :catch_236
    move-exception v0

    move-object/from16 v5, v17

    :goto_239
    move/from16 v6, v18

    goto :goto_275

    :catchall_23c
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v5, v17

    goto/16 :goto_2b6

    :catch_243
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v5, v17

    goto :goto_275

    :catchall_249
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_2b6

    :catch_250
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto :goto_275

    :catchall_256
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v4, v16

    :goto_25b
    goto :goto_2b6

    :catch_25c
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v4, v16

    :goto_261
    goto :goto_275

    :catchall_262
    move-exception v0

    goto :goto_269

    :catch_264
    move-exception v0

    goto :goto_271

    :catchall_266
    move-exception v0

    move-object/from16 v9, p0

    :goto_269
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_2b6

    :catch_26e
    move-exception v0

    move-object/from16 v9, p0

    :goto_271
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_275
    :try_start_275
    const-string v8, "DLP_EdmDLPStorageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurred accessing Enterprise db "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28f
    .catchall {:try_start_275 .. :try_end_28f} :catchall_2b5

    if-eqz v2, :cond_296

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v2, v0

    :cond_296
    if-eqz v3, :cond_29d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_29d
    if-eqz v4, :cond_2a4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move-object v4, v0

    :cond_2a4
    if-eqz v5, :cond_2ae

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    move/from16 v18, v6

    move-object v6, v0

    goto :goto_2b1

    :cond_2ae
    move/from16 v18, v6

    move-object v6, v5

    :cond_2b1
    :goto_2b1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b5
    move-exception v0

    :goto_2b6
    if-eqz v2, :cond_2bc

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_2bc
    if-eqz v3, :cond_2c2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_2c2
    if-eqz v4, :cond_2c8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_2c8
    if-eqz v5, :cond_2ce

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_2ce
    throw v0
.end method

.method public getAppType(ILjava/lang/String;)I
    .registers 12

    const-string/jumbo v0, "type"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_21
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v7, "IRMServiceInformationTable"

    invoke-virtual {v6, v7, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v5, v4

    if-eqz v5, :cond_73

    :goto_2c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_73

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v1, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_42
    .catch Landroid/database/SQLException; {:try_start_21 .. :try_end_42} :catch_7c
    .catchall {:try_start_21 .. :try_end_42} :catchall_7a

    if-eqz v6, :cond_4c

    nop

    if-eqz v5, :cond_4b

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_4b
    return v1

    :cond_4c
    :try_start_4c
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mContext:Landroid/content/Context;

    const-string v7, "android"

    invoke-static {v6, v7, v4, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_58
    .catch Landroid/database/SQLException; {:try_start_4c .. :try_end_58} :catch_7c
    .catchall {:try_start_4c .. :try_end_58} :catchall_7a

    :try_start_58
    invoke-static {v4, p2, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_6e

    if-eqz v8, :cond_69

    nop

    :try_start_5f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_62
    .catch Landroid/database/SQLException; {:try_start_5f .. :try_end_62} :catch_7c
    .catchall {:try_start_5f .. :try_end_62} :catchall_7a

    if-eqz v5, :cond_68

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_68
    return v1

    :cond_69
    :try_start_69
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_2c

    :catchall_6e
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_73
    .catch Landroid/database/SQLException; {:try_start_69 .. :try_end_73} :catch_7c
    .catchall {:try_start_69 .. :try_end_73} :catchall_7a

    :cond_73
    if-eqz v5, :cond_9a

    :goto_75
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    goto :goto_9a

    :catchall_7a
    move-exception v4

    goto :goto_9c

    :catch_7c
    move-exception v4

    :try_start_7d
    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occurred accessing Enterprise db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_7a

    if-eqz v5, :cond_9a

    goto :goto_75

    :cond_9a
    :goto_9a
    const/4 v4, -0x1

    return v4

    :goto_9c
    if-eqz v5, :cond_a2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    :cond_a2
    throw v4
.end method

.method public getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v0, "DLP_EdmDLPStorageHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getDefaultPolicy() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "data_int1"

    const-string v14, "data_int2"

    const-string v15, "data_int3"

    const-string v16, "data_int4"

    const-string/jumbo v17, "option1"

    const-string v18, "data_text1"

    const-string v19, "data_text2"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v0

    const-string/jumbo v0, "type"

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "userid"

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    move-object v15, v0

    :try_start_59
    iget-object v14, v1, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v0, "IRMServiceInformationTable"

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v12, v13, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v15, v0

    if-eqz v15, :cond_9f

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_75

    move v0, v2

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    move v4, v0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_7f

    const/4 v0, 0x1

    goto :goto_80

    :cond_7f
    const/4 v0, 0x0

    :goto_80
    move v5, v0

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v9, v0

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v3, v0

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v10, v0

    const/4 v0, 0x5

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const/4 v0, 0x6

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9e
    .catch Landroid/database/SQLException; {:try_start_59 .. :try_end_9e} :catch_a9
    .catchall {:try_start_59 .. :try_end_9e} :catchall_a6

    move-object v7, v0

    :cond_9f
    if-eqz v15, :cond_ce

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    goto :goto_ce

    :catchall_a6
    move-exception v0

    goto/16 :goto_13b

    :catch_a9
    move-exception v0

    :try_start_aa
    const-string v2, "DLP_EdmDLPStorageHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_138

    move/from16 v20, v3

    :try_start_b3
    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_b3 .. :try_end_c6} :catchall_134

    if-eqz v15, :cond_cc

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_cc
    move/from16 v3, v20

    :cond_ce
    :goto_ce
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanAuditValues(I)[Z

    move-result-object v2

    invoke-direct {v1, v10}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getBooleanValues(I)[Z

    move-result-object v8

    const-string v11, "CREATE"

    const/4 v14, 0x0

    aget-boolean v1, v2, v14

    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "OPEN"

    const/4 v11, 0x1

    aget-boolean v14, v2, v11

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "RENAME"

    const/4 v11, 0x2

    aget-boolean v11, v2, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "EXPIRED"

    const/4 v11, 0x3

    aget-boolean v11, v2, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "UNAUTHORIZED"

    const/4 v11, 0x4

    aget-boolean v11, v2, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "AUDIT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Activate"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "Lock"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "Extensions"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Domains"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NETWORK"

    const/4 v11, 0x0

    aget-boolean v11, v8, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CLIPBOARD"

    const/4 v11, 0x1

    aget-boolean v11, v8, v11

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lez v9, :cond_133

    const-string v1, "ExpiryAfter"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_133
    return-object v0

    :catchall_134
    move-exception v0

    move/from16 v3, v20

    goto :goto_13b

    :catchall_138
    move-exception v0

    move/from16 v20, v3

    :goto_13b
    if-eqz v15, :cond_141

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_141
    throw v0
.end method

.method public getPolicyConfigOwners()Landroid/util/SparseLongArray;
    .registers 9

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    const-string/jumbo v1, "userid"

    const-string v2, "adminUid"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_20
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v6, "IRMServiceInformationTable"

    invoke-virtual {v5, v6, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v4, v3

    :goto_29
    if-eqz v4, :cond_3f

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_3e
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_3e} :catch_48
    .catchall {:try_start_20 .. :try_end_3e} :catchall_46

    goto :goto_29

    :cond_3f
    if-eqz v4, :cond_66

    :goto_41
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    goto :goto_66

    :catchall_46
    move-exception v3

    goto :goto_67

    :catch_48
    move-exception v3

    :try_start_49
    const-string v5, "DLP_EdmDLPStorageHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred accessing Enterprisde db "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_46

    if-eqz v4, :cond_66

    goto :goto_41

    :cond_66
    :goto_66
    return-object v0

    :goto_67
    if-eqz v4, :cond_6d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    :cond_6d
    throw v3
.end method

.method public getTime()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_13
    if-eqz v3, :cond_6b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6b

    :cond_1b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    if-eqz v1, :cond_46

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "Type"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    new-instance v7, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    invoke-direct {v7, v6, v5}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_46
    if-eqz v3, :cond_6b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "Type"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/AppIdentity;

    new-instance v6, Lcom/samsung/android/knox/dlp/DLPPackageInfo;

    invoke-direct {v6, v5, v0}, Lcom/samsung/android/knox/dlp/DLPPackageInfo;-><init>(Lcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_6b
    return-object v4
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "data_text1"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;IJ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "IJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "data_text1"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getList(Landroid/content/ContentValues;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isActivated(I)I
    .registers 4

    const-string v0, "data_int1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isConfigEnabled([Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isListAppsContainsDLPPackageInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "data_text1"

    const-string v1, "data_text2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "userid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data_text1"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_20
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMServiceInformationTable"

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    if-eqz v3, :cond_39

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_2f
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_2f} :catch_42
    .catchall {:try_start_20 .. :try_end_2f} :catchall_40

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    if-eqz v3, :cond_38

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_38
    return v2

    :cond_39
    if-eqz v3, :cond_60

    :goto_3b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    goto :goto_60

    :catchall_40
    move-exception v2

    goto :goto_62

    :catch_42
    move-exception v2

    :try_start_43
    const-string v4, "DLP_EdmDLPStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred accessing Enterprise db "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_40

    if-eqz v3, :cond_60

    goto :goto_3b

    :cond_60
    :goto_60
    const/4 v2, 0x0

    return v2

    :goto_62
    if-eqz v3, :cond_68

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_68
    throw v2
.end method

.method public isLocked(I)I
    .registers 4

    const-string v0, "data_int2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->isConfigEnabled([Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public removeDBEntries(J)I
    .registers 6

    const-string v0, "DLP_EdmDLPStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveDBEntries called for adminUID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v2, "IRMServiceInformationTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public removeDumpLog()V
    .registers 9

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    const-string/jumbo v2, "userid"

    const-string/jumbo v3, "fileUri"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "rights"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMDocumentRightsTable"

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v4, 0x33

    if-lt v0, v4, :cond_5c

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "userid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "fileUri"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v7, "IRMDocumentRightsTable"

    invoke-virtual {v6, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_5b} :catch_61
    .catchall {:try_start_2 .. :try_end_5b} :catchall_5f

    nop

    :cond_5c
    if-eqz v1, :cond_82

    goto :goto_7e

    :catchall_5f
    move-exception v0

    goto :goto_83

    :catch_61
    move-exception v0

    :try_start_62
    const-string v2, "DLP_EdmDLPStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred accessing Enterprise db "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_5f

    if-eqz v1, :cond_82

    :goto_7e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_82
    return-void

    :goto_83
    if-eqz v1, :cond_89

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_89
    throw v0
.end method

.method public removeWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_5b

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeWhitelistApps => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "userid"

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "data_text1"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v5, "IRMServiceInformationTable"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5a
    goto :goto_7

    :cond_5b
    if-lez v0, :cond_5f

    const/4 v1, 0x1

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :goto_60
    return v1
.end method

.method public setDLPConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "userid"

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_3e

    const-string v5, "DLP_EdmDLPStorageHelper"

    const-string/jumbo v6, "setDefaultPolicy() defaultPolicy is null"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_231

    :cond_3e
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "Activate"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    const-string v6, "Activate"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "data_int1"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:isActivated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const-string v6, "Lock"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    const-string v6, "Lock"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "data_int2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:isLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    const-string v6, "ExpiryAfter"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cd

    const-string v6, "ExpiryAfter"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "data_int3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDLPConfig:expiry_after: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    const/16 v6, 0x10e

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_100

    const-string v6, "Extensions"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_107

    const-string v6, "Extensions"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "data_text1"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDLPConfig:extensions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    :cond_100
    const-string v6, "DLP_EdmDLPStorageHelper"

    const-string v7, "Knox version not supported for extension"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_107
    :goto_107
    const/16 v6, 0x118

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result v7

    if-eqz v7, :cond_13a

    const-string v7, "Domains"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_141

    const-string v7, "Domains"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "data_text2"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:domains: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_141

    :cond_13a
    const-string v7, "DLP_EdmDLPStorageHelper"

    const-string v8, "Knox version not supported for domains list"

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_141
    :goto_141
    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_176

    const-string v6, "AUDIT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17d

    const-string v6, "AUDIT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "data_int4"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "DLP_EdmDLPStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDLPConfig:Audit Integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17d

    :cond_176
    const-string v6, "DLP_EdmDLPStorageHelper"

    const-string v7, "Knox version not supported for DLP Audit events."

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17d
    :goto_17d
    const-string v6, "NETWORK"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18d

    const-string v6, "CLIPBOARD"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f5

    :cond_18d
    const/4 v6, 0x0

    const-string v7, "NETWORK"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19d

    const-string v7, "NETWORK"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_1a7

    :cond_19d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "NETWORK"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_1a7
    const-string v8, "CLIPBOARD"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b6

    const-string v8, "CLIPBOARD"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_1c0

    :cond_1b6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "CLIPBOARD"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    :goto_1c0
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getIntValue(ZZ)I

    move-result v9

    const-string/jumbo v10, "option1"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "DLP_EdmDLPStorageHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDLPConfig:NetworkAccess: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " ClipboardAccess: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " setDLPConfig:Policy Integer: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f5
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_204

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v7, "IRMServiceInformationTable"

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_205

    :cond_204
    const/4 v0, 0x0

    :goto_205
    const-string v6, "DLP_EdmDLPStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDLPConfig() set : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDLPConfig => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :goto_231
    return v0
.end method

.method public updateAdminUid(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "userid"

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "adminUid"

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->mEdmStorageProviderBase:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "IRMServiceInformationTable"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v2

    return v2
.end method
