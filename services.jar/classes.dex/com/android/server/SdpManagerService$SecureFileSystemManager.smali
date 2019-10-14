.class Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
    }
.end annotation


# static fields
.field private static final FS_TYPE:I = 0x2

.field private static final SECURE_FS_CURRENT_VERSION:I = 0x1

.field private static final SECURE_FS_VERSION_1:I = 0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureFileSystem"


# instance fields
.field defaultApps:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

.field private mEPM:Lcom/android/server/EnterprisePartitionManager;

.field private mKeyProtector:Lcom/android/server/KeyProtector;

.field private mStatus:I

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/android/server/KeyProtector;Lcom/android/server/EnterprisePartitionManager;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    new-instance v0, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    const-string p1, "com.android.bluetooth"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object p4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    iput-object p5, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/android/server/KeyProtector;Lcom/android/server/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/android/server/KeyProtector;Lcom/android/server/EnterprisePartitionManager;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->prepare(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z

    move-result v0

    return v0
.end method

.method private createPartition()Z
    .registers 6

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v4}, Lcom/android/server/pm/TimaHelper;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->updateSecureFsXml(ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->access$4300(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I

    goto :goto_27

    :cond_20
    const-string v2, "SecureFileSystem"

    const-string v3, "Failed to save mount key for SDP user0 partition."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    const-string v2, "SecureFileSystem"

    const-string v3, "createPartition"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private createPkgDir(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    if-eqz v3, :cond_14

    invoke-virtual {v3, p2, p1}, Lcom/android/server/pm/PackageManagerService;->createEncAppData(Ljava/lang/String;I)Z

    move-result v0

    :cond_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private getKeyAlias()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "eCryptfsKeySecFS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private isActivated()Z
    .registers 3

    iget v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isCreated()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KeyProtector;->exists(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$prepare$0(ILcom/android/server/pm/PackageManagerService;)Ljava/lang/Boolean;
    .registers 3

    nop

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->removeEncUserDir(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private mount()Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KeyProtector;->releaseMinor(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_34

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPartition()Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to create partition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    return v2

    :cond_1e
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    if-nez v0, :cond_34

    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to get eCryptfsKey"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    return v2

    :cond_34
    nop

    invoke-static {v0, v2}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecureFileSystem"

    const-string/jumbo v5, "mount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v3, v6, v5}, Lcom/android/server/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_4e

    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    goto :goto_50

    :cond_4e
    iput v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    :goto_50
    return v2
.end method

.method private prepare(I)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "Prepare - The object not initialized normally"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->isFileBasedEncryption()Z
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$4400(Lcom/android/server/SdpManagerService;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->isLegacyEncryptionUser(I)Z
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->access$4500(Lcom/android/server/SdpManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_9b

    :cond_20
    invoke-static {p1}, Lcom/android/server/SdpManagerService$FileUtil;->getEncUserDir(I)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x2

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    :try_start_28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_55

    const-string v6, "Enc user directory already exists"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getPackageManagerService()Ljava/util/Optional;
    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$4600(Lcom/android/server/SdpManagerService;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$$Lambda$SdpManagerService$SecureFileSystemManager$8DaWW5quQXUgqMf6jJxGhRKCshk;

    invoke-direct {v7, p1}, Lcom/android/server/-$$Lambda$SdpManagerService$SecureFileSystemManager$8DaWW5quQXUgqMf6jJxGhRKCshk;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/SdpManagerService$SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string v6, "Failed to clean enc user directory"

    invoke-static {v6}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_55
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6
    :try_end_59
    .catchall {:try_start_28 .. :try_end_59} :catchall_7a

    nop

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    const-string v5, "Prepare - Result of setting permission to %s [ rc : %d ]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v6

    :catchall_7a
    move-exception v6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Prepare - Result of setting permission to %s [ rc : %d ]"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    throw v6

    :cond_9b
    :goto_9b
    const-string v0, "Prepare - The user doesn\'t require enc directory"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    return v2
.end method

.method private removePartition()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyProtector:Lcom/android/server/KeyProtector;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getKeyAlias()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "removePartition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removePkgDir(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    if-eqz v3, :cond_14

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/PackageManagerService;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    :cond_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private setBaseDataUserDir(I)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "SecureFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBaseDataUserDir :: Error - SecureFileSysstem not activated... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1f
    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/enc_user"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_50

    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: Error - user dir creation failed... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_5b

    :cond_50
    nop

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_5b
    :goto_5b
    const-string v2, "SecureFileSystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBaseDataUserDir :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private systemReady()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    goto :goto_e

    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method private systemReady(I)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string v0, "SecureFileSystem"

    const-string/jumbo v2, "systemReady error :: SdpFileSystem not activated "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "SecureFileSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemReady :: Error - Failed to set up base directory for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    array-length v2, v0

    :goto_30
    if-ge v1, v2, :cond_a2

    aget-object v3, v0, v1

    invoke-static {p1, v3}, Lcom/samsung/android/knox/sdp/SdpFileSystem;->getUserDataDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_43

    const-string v5, "SecureFileSystem"

    const-string/jumbo v6, "systemReady : userDataDir is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_43
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_83

    const-string v5, "SecureFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " creating"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9f

    const-string v5, "SecureFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to create "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_83
    const-string v5, "SecureFileSystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "systemReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_a2
    const/4 v0, 0x1

    return v0
.end method

.method private unmount()V
    .registers 4

    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/android/server/EnterprisePartitionManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/EnterprisePartitionManager;->unmount(II)Z

    return-void
.end method
