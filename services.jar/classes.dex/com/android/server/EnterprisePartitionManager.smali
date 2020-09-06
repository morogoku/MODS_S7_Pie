.class public Lcom/android/server/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EnterprisePartitionManager$EpmMigrationCmd;,
        Lcom/android/server/EnterprisePartitionManager$EpmResponseCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CopyFlagExitOneError:I = 0x8

.field public static final CopyFlagForce:I = 0x1

.field public static final CopyFlagRecursive:I = 0x2

.field public static final CopyFlagRemoveSource:I = 0x4

.field public static final CopyFlagRenameWithNumber:I = 0x20

.field private static final DLP_NOTIFY_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final ENODEV:I = 0x13

.field public static final ENOENT:I = 0x2

.field private static final EPM_SOCKET_NAME:Ljava/lang/String; = "epm"

.field private static final EPM_SUB_CMD_CALCULATE_PKG_DIR:Ljava/lang/String; = "calculate_pkg_dir"

.field private static final EPM_SUB_CMD_CLEAR_PKG_DATA_DIR:Ljava/lang/String; = "clear_pkg_data_dir"

.field private static final EPM_SUB_CMD_CREATE_CHAMBER:Ljava/lang/String; = "create_chamber"

.field private static final EPM_SUB_CMD_CREATE_ENC_DIR:Ljava/lang/String; = "create_enc_dir"

.field private static final EPM_SUB_CMD_REMOVE_CHAMBER:Ljava/lang/String; = "remove_chamber"

.field private static final EPM_SUB_CMD_REMOVE_ENC_DIR:Ljava/lang/String; = "remove_enc_dir"

.field static final EPM_TAG:Ljava/lang/String; = "EnterprisePartitionManager"

.field public static PARTITON_TYPE_INTERNAL_SDCARD:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_READ:I = 0x0

.field public static PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I = 0x0

.field public static PARTITON_TYPE_NON_KNOX:I = 0x0

.field public static PARTITON_TYPE_PRIVATE_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_DATA:I = 0x0

.field public static PARTITON_TYPE_SECURE_FS_SDCARD:I = 0x0

.field public static final PartitionInserted:I = 0x276

.field public static final PartitionRemoved:I = 0x277

.field public static final TYPE_KNOX_CONTAINER_CE:I = 0x1

.field public static final TYPE_KNOX_CONTAINER_CE_NO_REMOUNT:I = 0x4

.field public static final TYPE_KNOX_CONTAINER_DE:I = 0x3

.field public static final TYPE_SECURE_FILE_SYSTEM:I = 0x2

.field public static final UnsolicitedDlpEvents:I = 0x262

.field public static final UnsolicitedShowToast:I = 0x259

.field private static final isKnoxBuildEnabled:Z

.field private static mInstallLock:Ljava/lang/Object;

.field private static final mKnoxInfo:Landroid/os/Bundle;

.field private static final mKnoxVersion:Ljava/lang/String;

.field private static mPackageTasker:Lcom/android/server/pm/Installer;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/EnterprisePartitionManager;


# instance fields
.field private mReady:Z

.field private mSessionIdDstPath:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x65

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_PRIVATE_DATA:I

    const/16 v0, 0x66

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD:I

    const/16 v0, 0x67

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_NON_KNOX:I

    const/16 v0, 0x68

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    const/16 v0, 0x69

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    const/16 v0, 0x6a

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_DEFAULT:I

    const/16 v0, 0x6b

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_READ:I

    const/16 v0, 0x6c

    sput v0, Lcom/android/server/EnterprisePartitionManager;->PARTITON_TYPE_INTERNAL_SDCARD_WRITE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_37

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v0

    :goto_38
    sput-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    if-eqz v1, :cond_53

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    const-string/jumbo v1, "v00"

    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mKnoxVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    sput-boolean v1, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/EnterprisePartitionManager;->mReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    goto :goto_1c

    :cond_17
    const-string v0, "Knox is not supported on this device.."

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->logD(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private addToAuditLog(IIIILjava/lang/String;)V
    .registers 6

    return-void
.end method

.method private command(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method private createConnector()V
    .registers 1

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;
    .registers 2

    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/EnterprisePartitionManager;

    invoke-direct {v0}, Lcom/android/server/EnterprisePartitionManager;-><init>()V

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    :cond_d
    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sInstance:Lcom/android/server/EnterprisePartitionManager;

    return-object v0
.end method

.method public static isEPMSupported()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    return v0
.end method

.method private isFailed(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private isOnGoing(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private isSuccess(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private rescanSdcard(Landroid/content/Context;Ljava/io/File;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_9

    sput-object p0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    sput-object p1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    goto :goto_c

    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    :goto_c
    return-void
.end method


# virtual methods
.method public calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelCopyChunks(J)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_35

    :cond_19
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/pm/Installer;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_2d} :catch_30
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2e

    :cond_2d
    goto :goto_31

    :catchall_2e
    move-exception v2

    goto :goto_33

    :catch_30
    move-exception v2

    :goto_31
    :try_start_31
    monitor-exit v1

    return-void

    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    throw v2

    :cond_35
    :goto_35
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .registers 8

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_7

    const/16 v0, -0x13

    return v0

    :cond_7
    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->changeKnoxFilePermission(Ljava/lang/String;III)I

    move-result v2
    :try_end_11
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b .. :try_end_11} :catch_15
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    move v0, v2

    goto :goto_17

    :catchall_13
    move-exception v2

    goto :goto_19

    :catch_15
    move-exception v2

    const/4 v0, -0x1

    :goto_17
    :try_start_17
    monitor-exit v1

    return v0

    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    throw v2
.end method

.method public changePrivateModePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x1

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 16

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/16 v1, -0x13

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, -0x1

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x2

    if-eqz v8, :cond_52

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_52

    :cond_16
    invoke-static {p3, p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_51

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_51

    :cond_23
    if-lez p2, :cond_2c

    invoke-virtual {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    :cond_2c
    if-lez p4, :cond_35

    invoke-virtual {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_35

    return v1

    :cond_35
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_38
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v3, v8

    move v4, p2

    move-object v5, v9

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v2
    :try_end_43
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_38 .. :try_end_43} :catch_4b
    .catchall {:try_start_38 .. :try_end_43} :catchall_49

    if-eqz v2, :cond_47

    const/4 v0, 0x0

    goto :goto_48

    :cond_47
    const/4 v0, -0x1

    :goto_48
    goto :goto_4d

    :catchall_49
    move-exception v2

    goto :goto_4f

    :catch_4b
    move-exception v2

    const/4 v0, -0x1

    :goto_4d
    :try_start_4d
    monitor-exit v1

    return v0

    :goto_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_49

    throw v2

    :cond_51
    :goto_51
    return v2

    :cond_52
    :goto_52
    return v2
.end method

.method public copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I
    .registers 32

    move-object/from16 v1, p0

    move/from16 v14, p2

    move/from16 v15, p4

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/16 v2, -0x13

    if-nez v0, :cond_d

    return v2

    :cond_d
    const/16 v16, -0x1

    const/16 v0, 0x20

    invoke-static/range {p1 .. p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, -0x2

    if-eqz v12, :cond_b4

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v19, v12

    goto/16 :goto_b6

    :cond_22
    invoke-static/range {p3 .. p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_af

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    goto/16 :goto_b3

    :cond_34
    if-lez v14, :cond_3d

    invoke-virtual {v1, v14}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v3

    if-nez v3, :cond_3d

    return v2

    :cond_3d
    if-lez v15, :cond_46

    invoke-virtual {v1, v15}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v3

    if-nez v3, :cond_46

    return v2

    :cond_46
    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    if-eqz p10, :cond_5f

    or-int/lit8 v0, v0, 0x4

    :cond_5f
    move/from16 v17, v0

    sget-object v18, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v18

    :try_start_64
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;
    :try_end_66
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_64 .. :try_end_66} :catch_a3
    .catchall {:try_start_64 .. :try_end_66} :catchall_9d

    move/from16 v10, p7

    int-to-long v8, v10

    move-object v3, v12

    move v4, v14

    move-object v5, v13

    move v6, v15

    move/from16 v7, v17

    move-wide/from16 v19, v8

    move-wide/from16 v8, p5

    move-wide/from16 v10, v19

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-wide/from16 v12, p8

    :try_start_7b
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/Installer;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_85

    const/4 v2, 0x0

    :goto_84
    goto :goto_95

    :cond_85
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_94

    iget-object v2, v1, Lcom/android/server/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_7b .. :try_end_92} :catch_9b
    .catchall {:try_start_7b .. :try_end_92} :catchall_99

    const/4 v2, 0x0

    goto :goto_84

    :cond_94
    move v2, v0

    :goto_95
    nop

    move/from16 v16, v2

    goto :goto_ab

    :catchall_99
    move-exception v0

    goto :goto_ad

    :catch_9b
    move-exception v0

    goto :goto_a8

    :catchall_9d
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    goto :goto_ad

    :catch_a3
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    :goto_a8
    const/4 v0, -0x1

    move/from16 v16, v0

    :goto_ab
    :try_start_ab
    monitor-exit v18

    return v16

    :goto_ad
    monitor-exit v18
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_99

    throw v0

    :cond_af
    move-object/from16 v19, v12

    move-object/from16 v20, v13

    :goto_b3
    return v3

    :cond_b4
    move-object/from16 v19, v12

    :goto_b6
    return v3
.end method

.method public createChamber(II)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public createEncPkgDir(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public createPartition(II)Z
    .registers 5

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->createPartitionCmd(II)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    return v1

    :cond_7
    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_13
    const-string v2, "EnterprisePartitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path translation failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    :cond_2b
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2e
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/Installer;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v3
    :try_end_34
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2e .. :try_end_34} :catch_38
    .catchall {:try_start_2e .. :try_end_34} :catchall_36

    move v0, v3

    goto :goto_3a

    :catchall_36
    move-exception v3

    goto :goto_3c

    :catch_38
    move-exception v3

    const/4 v0, 0x0

    :goto_3a
    :try_start_3a
    monitor-exit v2

    return v0

    :goto_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_36

    throw v3
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 16

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v3, :cond_63

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_63

    :cond_17
    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1b
    sget-object v5, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v5

    move-object v3, v5

    const/4 v5, 0x0

    aget-wide v5, v3, v5
    :try_end_25
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1b .. :try_end_25} :catch_29
    .catchall {:try_start_1b .. :try_end_25} :catchall_27

    long-to-int v1, v5

    goto :goto_2b

    :catchall_27
    move-exception v5

    goto :goto_61

    :catch_29
    move-exception v5

    const/4 v1, -0x1

    :goto_2b
    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_27

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_48

    if-nez v1, :cond_48

    const/4 v9, 0x1

    aget-wide v4, v3, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    const/4 v9, 0x2

    aget-wide v6, v3, v9

    const/4 v9, 0x3

    aget-wide v9, v3, v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_48

    const/4 v8, 0x1

    :cond_48
    const-string/jumbo v9, "result"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "last_modified_date"

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v9, "file_size"

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v9, "is_dir"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :goto_61
    :try_start_61
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_27

    throw v5

    :cond_63
    :goto_63
    const/4 v1, -0x2

    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return-object v2

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_36

    :cond_1d
    sget-object v6, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_20
    sget-object v7, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v7, v5, v3, v4, v1}, Lcom/android/server/pm/Installer;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v7
    :try_end_26
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_20 .. :try_end_26} :catch_2a
    .catchall {:try_start_20 .. :try_end_26} :catchall_28

    move v0, v7

    goto :goto_2c

    :catchall_28
    move-exception v2

    goto :goto_34

    :catch_2a
    move-exception v7

    const/4 v0, 0x0

    :goto_2c
    :try_start_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    if-eqz v0, :cond_33

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    nop

    :cond_33
    return-object v2

    :goto_34
    :try_start_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_28

    throw v2

    :cond_36
    :goto_36
    return-object v2
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_13
    const-string v3, "EnterprisePartitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path translation failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    :cond_2b
    sget-object v3, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2e
    sget-object v4, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/Installer;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v4

    aget-wide v5, v4, v2
    :try_end_36
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2e .. :try_end_36} :catch_42
    .catchall {:try_start_2e .. :try_end_36} :catchall_40

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3e

    const/4 v2, 0x1

    nop

    :cond_3e
    move v0, v2

    goto :goto_44

    :catchall_40
    move-exception v2

    goto :goto_46

    :catch_42
    move-exception v2

    const/4 v0, 0x0

    :goto_44
    :try_start_44
    monitor-exit v3

    return v0

    :goto_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_40

    throw v2
.end method

.method public isMounted(I)Z
    .registers 4

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->isMountedCmd(I)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public migrateSdpDb(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x1

    return v0
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .registers 7

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManager;->mountCmd(ILjava/lang/String;ZI)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public mountPersonalPage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public mountPrivateMode(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;I)I
    .registers 11

    const/16 v5, 0x24

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public move(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 16

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/16 v1, -0x13

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, -0x1

    or-int/lit8 p5, p5, 0x4

    invoke-static {p1, p2}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x2

    if-eqz v8, :cond_54

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_54

    :cond_18
    invoke-static {p3, p4}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_53

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_53

    :cond_25
    if-lez p2, :cond_2e

    invoke-virtual {p0, p2}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    :cond_2e
    if-lez p4, :cond_37

    invoke-virtual {p0, p4}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    :cond_37
    sget-object v1, Lcom/android/server/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    sget-object v2, Lcom/android/server/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    move-object v3, v8

    move v4, p2

    move-object v5, v9

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v2
    :try_end_45
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3a .. :try_end_45} :catch_4d
    .catchall {:try_start_3a .. :try_end_45} :catchall_4b

    if-eqz v2, :cond_49

    const/4 v0, 0x0

    goto :goto_4a

    :cond_49
    const/4 v0, -0x1

    :goto_4a
    goto :goto_4f

    :catchall_4b
    move-exception v2

    goto :goto_51

    :catch_4d
    move-exception v2

    const/4 v0, -0x1

    :goto_4f
    :try_start_4f
    monitor-exit v1

    return v0

    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4b

    throw v2

    :cond_53
    :goto_53
    return v2

    :cond_54
    :goto_54
    return v2
.end method

.method public removeChamber(II)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public removeEncPkgDir(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public removePartition(II)Z
    .registers 5

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->removePartitionCmd(II)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public varargs sendDLPCommand(II[Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public setDualDARPolicy(II)Z
    .registers 5

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->setDualDARPolicy(II)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setSdpPolicy(I)Z
    .registers 4

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->setSdpPolicy(I)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public syncFS(II)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public unmount(II)Z
    .registers 5

    sget-object v0, Lcom/android/server/EnterprisePartitionManager;->sContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/EnterprisePartitionManager;->storage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/storage/StorageManager;->unmountCmd(II)Z

    move-result v0

    return v0

    :cond_17
    const-string v0, "EnterprisePartitionManager"

    const-string v1, "StorageManager instance is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public unmountPersonalPage(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public unmountPrivateMode(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public verifyPassword(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
