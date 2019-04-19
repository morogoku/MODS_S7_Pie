.class public Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
.super Ljava/lang/Object;
.source "FullBackupObbConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field volatile mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    nop

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-void
.end method

.method private waitForConnection()V
    .registers 2

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    :try_start_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 14

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_7
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v1, v4

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aget-object v9, v1, v3

    iget-object v10, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v10

    invoke-interface {v5, v6, v9, v4, v10}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    aget-object v5, v1, v2

    invoke-static {v5, p2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v5
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_5e
    .catchall {:try_start_7 .. :try_end_3a} :catchall_5c

    move v0, v5

    :try_start_3b
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_52

    aget-object v4, v1, v2

    if-eqz v4, :cond_49

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_49
    aget-object v2, v1, v3

    if-eqz v2, :cond_52

    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    goto :goto_8d

    :catch_53
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v4, "I/O error closing down OBB backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    :catchall_5c
    move-exception v4

    goto :goto_8e

    :catch_5e
    move-exception v4

    :try_start_5f
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to back up OBBs for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_5c

    :try_start_75
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_52

    aget-object v4, v1, v2

    if-eqz v4, :cond_83

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_83
    aget-object v2, v1, v3

    if-eqz v2, :cond_52

    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8c} :catch_53

    goto :goto_52

    :goto_8d
    return v0

    :goto_8e
    nop

    :try_start_8f
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v1, :cond_a6

    aget-object v5, v1, v2

    if-eqz v5, :cond_9d

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_9d
    aget-object v2, v1, v3

    if-eqz v2, :cond_a6

    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a6} :catch_a7

    :cond_a6
    goto :goto_af

    :catch_a7
    move-exception v2

    const-string v3, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_af
    throw v4
.end method

.method public establish()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.sharedstoragebackup"

    const-string v3, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 28

    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    move-object v1, p0

    :try_start_4
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1f

    nop

    move-object/from16 v4, p1

    goto :goto_38

    :catch_1f
    move-exception v0

    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore OBBs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void
.end method

.method public tearDown()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
