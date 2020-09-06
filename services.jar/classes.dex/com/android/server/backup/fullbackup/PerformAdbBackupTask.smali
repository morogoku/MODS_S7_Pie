.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field mCompress:Z

.field private final mCurrentOpToken:I

.field mCurrentPassword:Ljava/lang/String;

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mExtraFlag:I

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field mKeyValue:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrivilegeApp:Z

.field mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZII)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p14, :cond_3d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_46

    :cond_3d
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_46
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz v2, :cond_58

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_55

    goto :goto_58

    :cond_55
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    :goto_58
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_5a
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->isYuvaSupported()Z

    move-result v15

    if-eqz v15, :cond_81

    const-string v0, "BackupManagerService"

    const-string v1, "Backup Manager Yuva is Supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_81
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v2

    const-string v4, "PBKDF2WithHmacSHA1"

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    const/16 v6, 0x2710

    invoke-static {v4, v5, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    const/16 v5, 0x20

    new-array v5, v5, [B

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v3

    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v10, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v11, p2

    invoke-direct {v10, v11, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string v12, "AES-256"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, "AES/CBC/PKCS5Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    invoke-virtual {v13, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    const-string v15, "PBKDF2WithHmacSHA1"

    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    invoke-static {v15, v12, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    array-length v15, v9

    array-length v0, v14

    add-int/2addr v15, v0

    array-length v0, v6

    add-int/2addr v15, v0

    add-int/lit8 v15, v15, 0x3

    invoke-direct {v12, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v12

    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v15, v9

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v9}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v14

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v14}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v6

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    move-object/from16 v16, v0

    invoke-static {v15}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v10
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v2

    const/high16 v3, 0x8000000

    if-eqz v2, :cond_3f

    :try_start_20
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getEdmUserId()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v4, "Fail to obtain package\'s info for backup - mdm request"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    goto :goto_90

    :cond_3f
    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_66

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    const/16 v4, 0xa0

    if-gt v2, v4, :cond_66

    :try_start_4b
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_5c} :catch_5d

    goto :goto_65

    :catch_5d
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v4, "Fail to obtain package info for backup - Nowner request"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    goto :goto_90

    :cond_66
    :try_start_66
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_73} :catch_74

    goto :goto_90

    :catch_74
    move-exception v2

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    goto/16 :goto_4

    :cond_92
    return-void
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb backup cancel of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_23
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 39

    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    move-object v14, v0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v13, v0

    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerYuva;->sendStartBackupCallback(Ljava/lang/String;)V

    :cond_51
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_82

    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    :goto_63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_82

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-boolean v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-eq v4, v10, :cond_7a

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_7f

    :cond_7a
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_82
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v0, :cond_90

    nop

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v15, v13, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_90
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_99

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v15, v13, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0

    if-nez v0, :cond_127

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-eqz v0, :cond_b1

    iget v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_127

    :cond_b1
    invoke-virtual {v13}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v11}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_106

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_dc

    goto :goto_106

    :cond_dc
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is key-value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_126

    :cond_106
    :goto_106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not eligible for backup, removing."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_126
    :goto_126
    goto :goto_b9

    :cond_127
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v7, v0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_140
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_142} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_142} :catch_7a9
    .catchall {:try_start_140 .. :try_end_142} :catchall_795

    if-eqz v0, :cond_180

    :try_start_144
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_14a} :catch_170
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14a} :catch_160
    .catchall {:try_start_144 .. :try_end_14a} :catchall_14e

    if-lez v0, :cond_180

    move v0, v10

    goto :goto_181

    :catchall_14e
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_88b

    :catch_160
    move-exception v0

    :goto_161
    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_7b7

    :catch_170
    move-exception v0

    :goto_171
    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_81a

    :cond_180
    move v0, v1

    :goto_181
    move/from16 v16, v0

    :try_start_183
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_185} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_185} :catch_7a9
    .catchall {:try_start_183 .. :try_end_185} :catchall_795

    if-nez v0, :cond_20b

    :try_start_187
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_20b

    if-nez v16, :cond_20b

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0

    if-nez v0, :cond_20b

    const-string v0, "BackupManagerService"

    const-string v1, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1ae

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_1ae
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_1ae} :catch_170
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_1ae} :catch_160
    .catchall {:try_start_187 .. :try_end_1ae} :catchall_14e

    :cond_1ae
    if-eqz v2, :cond_1b9

    :try_start_1b0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1b9

    :catch_1b7
    move-exception v0

    goto :goto_1bf

    :cond_1b9
    :goto_1b9
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1be} :catch_1b7

    goto :goto_1da

    :goto_1bf
    nop

    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1da
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_1dd
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1e8
    .catchall {:try_start_1dd .. :try_end_1e8} :catchall_208

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1f4

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_1f4
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_208
    move-exception v0

    :try_start_209
    monitor-exit v1
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_208

    throw v0

    :cond_20b
    move-object v4, v7

    :try_start_20c
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0
    :try_end_212
    .catch Landroid/os/RemoteException; {:try_start_20c .. :try_end_212} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_212} :catch_7a9
    .catchall {:try_start_20c .. :try_end_212} :catchall_795

    if-nez v0, :cond_294

    :try_start_214
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-nez v0, :cond_294

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_294

    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_237

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_237
    .catch Landroid/os/RemoteException; {:try_start_214 .. :try_end_237} :catch_170
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_237} :catch_160
    .catchall {:try_start_214 .. :try_end_237} :catchall_14e

    :cond_237
    if-eqz v2, :cond_242

    :try_start_239
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_242

    :catch_240
    move-exception v0

    goto :goto_248

    :cond_242
    :goto_242
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_247
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_247} :catch_240

    goto :goto_263

    :goto_248
    nop

    const-string v1, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_263
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_266
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_271
    .catchall {:try_start_266 .. :try_end_271} :catchall_291

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_27d

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_27d
    invoke-virtual {v12}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_291
    move-exception v0

    :try_start_292
    monitor-exit v1
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_291

    throw v0

    :cond_294
    :try_start_294
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_2a7
    .catch Landroid/os/RemoteException; {:try_start_294 .. :try_end_2a7} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2a7} :catch_7a9
    .catchall {:try_start_294 .. :try_end_2a7} :catchall_795

    if-eqz v0, :cond_2ac

    :try_start_2a9
    const-string v0, "\n1\n"
    :try_end_2ab
    .catch Landroid/os/RemoteException; {:try_start_2a9 .. :try_end_2ab} :catch_170
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2ab} :catch_160
    .catchall {:try_start_2a9 .. :try_end_2ab} :catchall_14e

    goto :goto_2ae

    :cond_2ac
    :try_start_2ac
    const-string v0, "\n0\n"

    :goto_2ae
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b1
    .catch Landroid/os/RemoteException; {:try_start_2ac .. :try_end_2b1} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_2ac .. :try_end_2b1} :catch_7a9
    .catchall {:try_start_2ac .. :try_end_2b1} :catchall_795

    if-eqz v16, :cond_2db

    :try_start_2b3
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest()Z

    move-result v0

    if-nez v0, :cond_2db

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest()Z

    move-result v0

    if-nez v0, :cond_2db

    invoke-direct {v15, v6, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2c7} :catch_2c9
    .catch Landroid/os/RemoteException; {:try_start_2b3 .. :try_end_2c7} :catch_170
    .catchall {:try_start_2b3 .. :try_end_2c7} :catchall_14e

    move-object v4, v0

    goto :goto_2e1

    :catch_2c9
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_718

    :cond_2db
    :try_start_2db
    const-string/jumbo v0, "none\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-boolean v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2f0} :catch_708
    .catch Landroid/os/RemoteException; {:try_start_2db .. :try_end_2f0} :catch_80c
    .catchall {:try_start_2db .. :try_end_2f0} :catchall_795

    if-eqz v5, :cond_300

    :try_start_2f2
    new-instance v5, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, v5

    new-instance v5, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v5, v4, v1, v10}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_2ff} :catch_2c9
    .catch Landroid/os/RemoteException; {:try_start_2f2 .. :try_end_2ff} :catch_170
    .catchall {:try_start_2f2 .. :try_end_2ff} :catchall_14e

    move-object v4, v5

    :cond_300
    move-object/from16 v18, v4

    move-object/from16 v5, v18

    nop

    :try_start_305
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_307
    .catch Landroid/os/RemoteException; {:try_start_305 .. :try_end_307} :catch_6f7
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_307} :catch_6e6
    .catchall {:try_start_305 .. :try_end_307} :catchall_6d1

    if-eqz v0, :cond_34c

    :try_start_309
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"
    :try_end_311
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_309 .. :try_end_311} :catch_339
    .catch Landroid/os/RemoteException; {:try_start_309 .. :try_end_311} :catch_335
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_311} :catch_331
    .catchall {:try_start_309 .. :try_end_311} :catchall_31d

    const/4 v2, 0x0

    :try_start_312
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v3, v0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_312 .. :try_end_31a} :catch_31b
    .catch Landroid/os/RemoteException; {:try_start_312 .. :try_end_31a} :catch_335
    .catch Ljava/lang/Exception; {:try_start_312 .. :try_end_31a} :catch_331
    .catchall {:try_start_312 .. :try_end_31a} :catchall_31d

    goto :goto_34d

    :catch_31b
    move-exception v0

    goto :goto_33b

    :catchall_31d
    move-exception v0

    move-object v2, v0

    move-object/from16 v31, v3

    move-object v3, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_88d

    :catch_331
    move-exception v0

    move-object v2, v5

    goto/16 :goto_161

    :catch_335
    move-exception v0

    move-object v2, v5

    goto/16 :goto_171

    :catch_339
    move-exception v0

    const/4 v2, 0x0

    :goto_33b
    :try_start_33b
    const-string v1, "BackupManagerService"

    const-string v4, "Unable to find shared-storage backup handler"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v1, :cond_34d

    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_34b
    .catch Landroid/os/RemoteException; {:try_start_33b .. :try_end_34b} :catch_335
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_34b} :catch_331
    .catchall {:try_start_33b .. :try_end_34b} :catchall_31d

    goto :goto_34d

    :cond_34c
    const/4 v2, 0x0

    :cond_34d
    :goto_34d
    :try_start_34d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_351
    .catch Landroid/os/RemoteException; {:try_start_34d .. :try_end_351} :catch_6f7
    .catch Ljava/lang/Exception; {:try_start_34d .. :try_end_351} :catch_6e6
    .catchall {:try_start_34d .. :try_end_351} :catchall_6d1

    nop

    :goto_352
    move v4, v2

    if-ge v4, v0, :cond_5f0

    :try_start_355
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;
    :try_end_35b
    .catch Landroid/os/RemoteException; {:try_start_355 .. :try_end_35b} :catch_5df
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_35b} :catch_5ce
    .catchall {:try_start_355 .. :try_end_35b} :catchall_5b9

    move-object v3, v1

    :try_start_35c
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_363
    .catch Landroid/os/RemoteException; {:try_start_35c .. :try_end_363} :catch_5a7
    .catch Ljava/lang/Exception; {:try_start_35c .. :try_end_363} :catch_595
    .catchall {:try_start_35c .. :try_end_363} :catchall_57f

    :try_start_363
    const-string v10, "--- Performing full backup for package "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ---"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v17, v1

    new-instance v10, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v19, 0x0

    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_38b
    .catch Landroid/os/RemoteException; {:try_start_363 .. :try_end_38b} :catch_56e
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_38b} :catch_55d
    .catchall {:try_start_363 .. :try_end_38b} :catchall_549

    const-wide v20, 0x7fffffffffffffffL

    move-object/from16 v27, v8

    :try_start_392
    iget v8, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_394
    .catch Landroid/os/RemoteException; {:try_start_392 .. :try_end_394} :catch_534
    .catch Ljava/lang/Exception; {:try_start_392 .. :try_end_394} :catch_51f
    .catchall {:try_start_392 .. :try_end_394} :catchall_506

    const/16 v22, 0x0

    move-object/from16 v28, v11

    :try_start_398
    iget v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move/from16 v29, v11

    iget-boolean v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 v30, v11

    iget v11, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserId:I
    :try_end_3a2
    .catch Landroid/os/RemoteException; {:try_start_398 .. :try_end_3a2} :catch_4f1
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3a2} :catch_4dc
    .catchall {:try_start_398 .. :try_end_3a2} :catchall_4c3

    move/from16 v23, v1

    move-object v1, v10

    move-object/from16 v31, v3

    move-object v3, v5

    move/from16 v24, v4

    move-object/from16 v4, v19

    move-object/from16 v32, v5

    move-object/from16 v5, v31

    move-object/from16 v33, v6

    move/from16 v6, v23

    move-object/from16 v34, v7

    move-object v7, v15

    move/from16 v19, v8

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-wide/from16 v8, v20

    move-object/from16 v36, v10

    move/from16 v10, v19

    move/from16 v21, v11

    move-object/from16 v26, v28

    move/from16 v19, v29

    move/from16 v20, v30

    move/from16 v11, v22

    move-object/from16 v37, v12

    move/from16 v12, v19

    move-object/from16 v28, v13

    move/from16 v13, v20

    move-object/from16 v29, v14

    move/from16 v14, v21

    :try_start_3d9
    invoke-direct/range {v1 .. v14}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIIIZI)V

    move-object/from16 v1, v36

    iput-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;
    :try_end_3e0
    .catch Landroid/os/RemoteException; {:try_start_3d9 .. :try_end_3e0} :catch_4b6
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_3e0} :catch_4a9
    .catchall {:try_start_3d9 .. :try_end_3e0} :catchall_49b

    if-eqz v17, :cond_409

    :try_start_3e2
    const-string v1, "Shared storage"
    :try_end_3e4
    .catch Landroid/os/RemoteException; {:try_start_3e2 .. :try_end_3e4} :catch_3fe
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_3e4} :catch_3f3
    .catchall {:try_start_3e2 .. :try_end_3e4} :catchall_3e8

    move-object v2, v1

    move-object/from16 v1, v31

    goto :goto_40d

    :catchall_3e8
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v32

    move-object/from16 v1, v35

    move-object/from16 v5, v37

    const/4 v6, 0x1

    goto/16 :goto_88d

    :catch_3f3
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    move-object/from16 v1, v35

    move-object/from16 v5, v37

    goto/16 :goto_664

    :catch_3fe
    move-exception v0

    move-object/from16 v3, v31

    move-object/from16 v2, v32

    move-object/from16 v1, v35

    move-object/from16 v5, v37

    goto/16 :goto_668

    :cond_409
    move-object/from16 v1, v31

    :try_start_40b
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_40d
    invoke-virtual {v15, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    iput-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    iget-boolean v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_419
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_419} :catch_490
    .catch Ljava/lang/Exception; {:try_start_40b .. :try_end_419} :catch_485
    .catchall {:try_start_40b .. :try_end_419} :catchall_477

    if-eqz v2, :cond_45c

    if-nez v17, :cond_45c

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    :try_start_421
    invoke-virtual {v5, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_460

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_430

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    :cond_430
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure writing OBB stack for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_447
    .catch Landroid/os/RemoteException; {:try_start_421 .. :try_end_447} :catch_456
    .catch Ljava/lang/Exception; {:try_start_421 .. :try_end_447} :catch_450
    .catchall {:try_start_421 .. :try_end_447} :catchall_447

    :catchall_447
    move-exception v0

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_88c

    :catch_450
    move-exception v0

    move-object v3, v1

    move-object/from16 v1, v35

    goto/16 :goto_664

    :catch_456
    move-exception v0

    move-object v3, v1

    move-object/from16 v1, v35

    goto/16 :goto_668

    :cond_45c
    move-object/from16 v2, v32

    move-object/from16 v5, v37

    :cond_460
    add-int/lit8 v3, v24, 0x1

    move-object v12, v5

    move-object/from16 v11, v26

    move-object/from16 v9, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    const/4 v10, 0x1

    move-object v5, v2

    move v2, v3

    move-object v3, v1

    goto/16 :goto_352

    :catchall_477
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_88d

    :catch_485
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_7b7

    :catch_490
    move-exception v0

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_81a

    :catchall_49b
    move-exception v0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_88d

    :catch_4a9
    move-exception v0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_7b7

    :catch_4b6
    move-exception v0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v5, v37

    move-object v3, v1

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_81a

    :catchall_4c3
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v5, v12

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_88d

    :catch_4dc
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v5, v12

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_7b7

    :catch_4f1
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v5, v12

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_81a

    :catchall_506
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-object/from16 v31, v1

    move-object v3, v2

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object v2, v0

    goto/16 :goto_88d

    :catch_51f
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_7b7

    :catch_534
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v35, v27

    move-object/from16 v27, v9

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_81a

    :catchall_549
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v1

    move-object v3, v2

    move-object v1, v8

    const/4 v6, 0x1

    goto :goto_592

    :catch_55d
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    const/4 v6, 0x1

    goto :goto_5a5

    :catch_56e
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    const/4 v6, 0x1

    goto :goto_5b7

    :catchall_57f
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v1

    move-object v3, v2

    move-object v1, v8

    move v6, v10

    :goto_592
    move-object v2, v0

    goto/16 :goto_88d

    :catch_595
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    :goto_5a5
    goto/16 :goto_7b7

    :catch_5a7
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    :goto_5b7
    goto/16 :goto_81a

    :catchall_5b9
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v3

    move-object v1, v8

    move v6, v10

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_88d

    :catch_5ce
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    goto/16 :goto_7b7

    :catch_5df
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object v1, v8

    move v6, v10

    goto/16 :goto_81a

    :cond_5f0
    move-object v2, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object/from16 v27, v9

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :try_start_600
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_602
    .catch Landroid/os/RemoteException; {:try_start_600 .. :try_end_602} :catch_6cb
    .catch Ljava/lang/Exception; {:try_start_600 .. :try_end_602} :catch_6c5
    .catchall {:try_start_600 .. :try_end_602} :catchall_6bb

    if-eqz v1, :cond_66b

    move-object/from16 v1, v35

    :try_start_606
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_60a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--- Performing key-value backup for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v8, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v24

    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v25

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    invoke-direct/range {v19 .. v25}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_65c
    .catch Landroid/os/RemoteException; {:try_start_606 .. :try_end_65c} :catch_667
    .catch Ljava/lang/Exception; {:try_start_606 .. :try_end_65c} :catch_663
    .catchall {:try_start_606 .. :try_end_65c} :catchall_65d

    goto :goto_60a

    :catchall_65d
    move-exception v0

    move-object/from16 v31, v3

    const/4 v6, 0x1

    goto/16 :goto_88b

    :catch_663
    move-exception v0

    :goto_664
    const/4 v6, 0x1

    goto/16 :goto_7b7

    :catch_667
    move-exception v0

    :goto_668
    const/4 v6, 0x1

    goto/16 :goto_81a

    :cond_66b
    move-object/from16 v1, v35

    :cond_66d
    :try_start_66d
    invoke-direct {v15, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_670
    .catch Landroid/os/RemoteException; {:try_start_66d .. :try_end_670} :catch_667
    .catch Ljava/lang/Exception; {:try_start_66d .. :try_end_670} :catch_663
    .catchall {:try_start_66d .. :try_end_670} :catchall_6b7

    if-eqz v2, :cond_67b

    :try_start_672
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_67b

    :catch_679
    move-exception v0

    goto :goto_681

    :cond_67b
    :goto_67b
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_680
    .catch Ljava/io/IOException; {:try_start_672 .. :try_end_680} :catch_679

    goto :goto_69c

    :goto_681
    nop

    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69c
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_69f
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_6ab
    .catchall {:try_start_69f .. :try_end_6ab} :catchall_6b4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_870

    goto/16 :goto_86b

    :catchall_6b4
    move-exception v0

    :try_start_6b5
    monitor-exit v4
    :try_end_6b6
    .catchall {:try_start_6b5 .. :try_end_6b6} :catchall_6b4

    throw v0

    :catchall_6b7
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_889

    :catchall_6bb
    move-exception v0

    move-object/from16 v1, v35

    const/4 v6, 0x1

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_88d

    :catch_6c5
    move-exception v0

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_7b7

    :catch_6cb
    move-exception v0

    move-object/from16 v1, v35

    const/4 v6, 0x1

    goto/16 :goto_81a

    :catchall_6d1
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_88d

    :catch_6e6
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_7b7

    :catch_6f7
    move-exception v0

    move-object v2, v5

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_81a

    :catch_708
    move-exception v0

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_718
    move-object v7, v0

    :try_start_719
    const-string v0, "BackupManagerService"

    const-string v8, "Unable to emit archive header"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_72e

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_72e
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->setEdmBackupFail(Z)V
    :try_end_733
    .catch Landroid/os/RemoteException; {:try_start_719 .. :try_end_733} :catch_792
    .catch Ljava/lang/Exception; {:try_start_719 .. :try_end_733} :catch_790
    .catchall {:try_start_719 .. :try_end_733} :catchall_888

    if-eqz v2, :cond_73e

    :try_start_735
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_73e

    :catch_73c
    move-exception v0

    goto :goto_744

    :cond_73e
    :goto_73e
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_743
    .catch Ljava/io/IOException; {:try_start_735 .. :try_end_743} :catch_73c

    goto :goto_75f

    :goto_744
    nop

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IO error closing adb backup file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75f
    iget-object v8, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v8

    :try_start_762
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_76d
    .catchall {:try_start_762 .. :try_end_76d} :catchall_78d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_779

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_779
    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v6, "Full backup pass complete."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_78d
    move-exception v0

    :try_start_78e
    monitor-exit v8
    :try_end_78f
    .catchall {:try_start_78e .. :try_end_78f} :catchall_78d

    throw v0

    :catch_790
    move-exception v0

    goto :goto_7b7

    :catch_792
    move-exception v0

    goto/16 :goto_81a

    :catchall_795
    move-exception v0

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_88d

    :catch_7a9
    move-exception v0

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_7b7
    :try_start_7b7
    const-string v4, "BackupManagerService"

    const-string v7, "Internal exception during full backup"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_7c7

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_7c7
    .catchall {:try_start_7b7 .. :try_end_7c7} :catchall_888

    :cond_7c7
    if-eqz v2, :cond_7d2

    :try_start_7c9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_7d2

    :catch_7d0
    move-exception v0

    goto :goto_7d8

    :cond_7d2
    :goto_7d2
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7d7
    .catch Ljava/io/IOException; {:try_start_7c9 .. :try_end_7d7} :catch_7d0

    goto :goto_7f3

    :goto_7d8
    nop

    const-string v4, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f3
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_7f6
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_801
    .catchall {:try_start_7f6 .. :try_end_801} :catchall_809

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_870

    goto :goto_86b

    :catchall_809
    move-exception v0

    :try_start_80a
    monitor-exit v4
    :try_end_80b
    .catchall {:try_start_80a .. :try_end_80b} :catchall_809

    throw v0

    :catch_80c
    move-exception v0

    move-object/from16 v34, v7

    move-object v1, v8

    move-object/from16 v27, v9

    move v6, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    :goto_81a
    :try_start_81a
    const-string v4, "BackupManagerService"

    const-string v7, "App died during full backup"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v4, :cond_82a

    sget-object v4, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerYuva;->setMemorySaverBackupFail()V
    :try_end_82a
    .catchall {:try_start_81a .. :try_end_82a} :catchall_888

    :cond_82a
    if-eqz v2, :cond_835

    :try_start_82c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_835

    :catch_833
    move-exception v0

    goto :goto_83b

    :cond_835
    :goto_835
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_83a
    .catch Ljava/io/IOException; {:try_start_82c .. :try_end_83a} :catch_833

    goto :goto_856

    :goto_83b
    nop

    const-string v4, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_856
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_859
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_864
    .catchall {:try_start_859 .. :try_end_864} :catchall_885

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_870

    :goto_86b
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_870
    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_885
    move-exception v0

    :try_start_886
    monitor-exit v4
    :try_end_887
    .catchall {:try_start_886 .. :try_end_887} :catchall_885

    throw v0

    :catchall_888
    move-exception v0

    :goto_889
    move-object/from16 v31, v3

    :goto_88b
    move-object v3, v2

    :goto_88c
    move-object v2, v0

    :goto_88d
    if-eqz v3, :cond_898

    :try_start_88f
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_898

    :catch_896
    move-exception v0

    goto :goto_89e

    :cond_898
    :goto_898
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_89d
    .catch Ljava/io/IOException; {:try_start_88f .. :try_end_89d} :catch_896

    goto :goto_8b9

    :goto_89e
    nop

    const-string v4, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO error closing adb backup file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b9
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_8bc
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_8c7
    .catchall {:try_start_8bc .. :try_end_8c7} :catchall_8e7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_8d3

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_8d3
    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    :catchall_8e7
    move-exception v0

    :try_start_8e8
    monitor-exit v4
    :try_end_8e9
    .catchall {:try_start_8e8 .. :try_end_8e9} :catchall_8e7

    throw v0
.end method
