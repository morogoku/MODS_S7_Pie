.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# static fields
.field static mPrivilegeApp:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3

    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p5

    const/4 v2, 0x1

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing from backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v6, v0

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_3eb

    move-object v8, v0

    move-object/from16 v9, p6

    :try_start_35
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_3e5

    move v10, v0

    :try_start_3d
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_3cf
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_3e5

    move-object v15, v0

    :try_start_42
    iget-object v12, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_44} :catch_3b1
    .catchall {:try_start_42 .. :try_end_44} :catchall_39e

    const-wide/16 v13, 0x0

    move-object/from16 v17, v8

    :try_start_48
    iget-wide v7, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4a} :catch_38d
    .catchall {:try_start_48 .. :try_end_4a} :catchall_37c

    move-object v11, v15

    move-object/from16 v18, v15

    move-wide v15, v7

    :try_start_4e
    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_52} :catch_369
    .catchall {:try_start_4e .. :try_end_52} :catchall_356

    move-object v7, v0

    const v0, 0x8000

    :try_start_56
    new-array v8, v0, [B

    iget-wide v11, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5a} :catch_334
    .catchall {:try_start_56 .. :try_end_5a} :catchall_321

    :goto_5a
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    const/4 v14, 0x0

    if-lez v13, :cond_126

    :try_start_61
    array-length v13, v8
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_62} :catch_112
    .catchall {:try_start_61 .. :try_end_62} :catchall_fe

    int-to-long v0, v13

    cmp-long v0, v0, v11

    if-gez v0, :cond_94

    :try_start_67
    array-length v0, v8
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_68} :catch_7f
    .catchall {:try_start_67 .. :try_end_68} :catchall_6a

    int-to-long v0, v0

    goto :goto_95

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move/from16 v21, v2

    move-object v2, v3

    move-object/from16 v20, v4

    move-object/from16 v8, p5

    move-object v4, v2

    move-object/from16 v3, v18

    goto/16 :goto_348

    :catch_7f
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v8, p5

    move-object v2, v0

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_346

    :cond_94
    move-wide v0, v11

    :goto_95
    long-to-int v13, v0

    move-object/from16 v15, p0

    :try_start_98
    invoke-virtual {v15, v8, v14, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9c} :catch_f0
    .catchall {:try_start_98 .. :try_end_9c} :catchall_de

    if-ltz v13, :cond_c9

    move-object/from16 v19, v4

    int-to-long v3, v13

    move-object/from16 v14, p7

    :try_start_a3
    invoke-interface {v14, v3, v4}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_cd

    :catchall_a7
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v3, v18

    move-object/from16 v20, v19

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v8, p5

    goto/16 :goto_348

    :catch_b8
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v3, v18

    move-object/from16 v20, v19

    const/4 v4, 0x0

    move-object/from16 v8, p5

    move-object v2, v0

    goto/16 :goto_346

    :cond_c9
    move-object/from16 v14, p7

    move-object/from16 v19, v4

    :goto_cd
    const/4 v3, 0x0

    invoke-virtual {v7, v8, v3, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_d1} :catch_b8
    .catchall {:try_start_a3 .. :try_end_d1} :catchall_a7

    int-to-long v3, v13

    sub-long/2addr v11, v3

    nop

    move-object/from16 v4, v19

    const v0, 0x8000

    move-object/from16 v1, p5

    const/4 v3, 0x0

    goto/16 :goto_5a

    :catchall_de
    move-exception v0

    move-object/from16 v14, p7

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v3, v18

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v8, p5

    goto :goto_110

    :catch_f0
    move-exception v0

    move-object/from16 v14, p7

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v8, p5

    goto :goto_120

    :catchall_fe
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move-object/from16 v11, p4

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v3, v18

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p2

    :goto_110
    goto/16 :goto_348

    :catch_112
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move-object/from16 v11, p4

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v1, p2

    :goto_120
    move-object v2, v0

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_346

    :cond_126
    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move-object/from16 v19, v4

    if-eqz v7, :cond_152

    const/4 v1, 0x0

    :try_start_12f
    invoke-static {v1, v7}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_132} :catch_143
    .catchall {:try_start_12f .. :try_end_132} :catchall_133

    goto :goto_152

    :catchall_133
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v3, v18

    move-object/from16 v20, v19

    const/4 v4, 0x0

    move-object/from16 v8, p5

    goto/16 :goto_3c6

    :catch_143
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v3, v18

    move-object/from16 v20, v19

    move-object/from16 v8, p5

    goto/16 :goto_352

    :cond_152
    :goto_152
    move-object/from16 v1, v19

    :try_start_154
    invoke-virtual {v1}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_154 .. :try_end_158} :catch_311
    .catchall {:try_start_154 .. :try_end_158} :catchall_301

    move-object/from16 v3, v18

    :try_start_15a
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_15a .. :try_end_15d} :catch_2f3
    .catchall {:try_start_15a .. :try_end_15d} :catchall_2e5

    if-eqz v3, :cond_17c

    const/4 v4, 0x0

    :try_start_160
    invoke-static {v4, v3}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_16f
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_17c

    :catch_164
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v8, p5

    goto/16 :goto_3f9

    :catch_16f
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v8, p5

    move-object/from16 v1, p2

    goto/16 :goto_3df

    :cond_17c
    :goto_17c
    nop

    :try_start_17d
    invoke-virtual {v1}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_189} :catch_2da

    move v4, v0

    if-eqz v4, :cond_1aa

    move-object/from16 v8, p5

    :try_start_18e
    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_190} :catch_1a1

    move-object/from16 v11, p4

    :try_start_192
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_198} :catch_19f

    if-eq v0, v7, :cond_19b

    const/4 v2, 0x0

    :cond_19b
    move-object/from16 v1, p2

    goto/16 :goto_2cc

    :catch_19f
    move-exception v0

    goto :goto_1a4

    :catch_1a1
    move-exception v0

    move-object/from16 v11, p4

    :goto_1a4
    move-object/from16 v1, p2

    :goto_1a6
    move/from16 v21, v2

    goto/16 :goto_3f9

    :cond_1aa
    move-object/from16 v11, p4

    move-object/from16 v8, p5

    const/4 v7, 0x0

    :try_start_1af
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1bc} :catch_2d3

    if-nez v0, :cond_1e5

    :try_start_1be
    const-string v0, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string v1, "Restore stream claimed to include apk for "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but apk was really "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1e0} :catch_19f

    const/4 v0, 0x0

    const/4 v7, 0x1

    :goto_1e2
    move v2, v0

    goto/16 :goto_2ba

    :cond_1e5
    move-object/from16 v20, v1

    :try_start_1e7
    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v1, 0x8000000

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v13, 0x8000

    and-int/2addr v1, v13

    if-nez v1, :cond_21f

    sget-boolean v1, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    if-nez v1, :cond_21f

    const-string v1, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_204
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e7 .. :try_end_204} :catch_297
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_204} :catch_294

    move/from16 v21, v2

    :try_start_206
    const-string v2, "Restore stream contains apk of package "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but it disallows backup/restore"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_21d
    goto/16 :goto_291

    :cond_21f
    move/from16 v21, v2

    iget-object v1, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    const-class v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1, v0, v13}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v16

    if-eqz v16, :cond_26d

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_26a

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v1, :cond_26a

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v0

    const-string v0, "Installed app "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has restricted uid and no agent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_21d

    :cond_26a
    move/from16 v2, v21

    goto :goto_291

    :cond_26d
    move-object/from16 v23, v0

    move-object/from16 v22, v1

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installed app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signatures do not match restore manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_206 .. :try_end_28e} :catch_292
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_28e} :catch_2ce

    const/4 v2, 0x0

    const/4 v0, 0x1

    move v7, v0

    :goto_291
    goto :goto_2ba

    :catch_292
    move-exception v0

    goto :goto_29a

    :catch_294
    move-exception v0

    goto/16 :goto_3f5

    :catch_297
    move-exception v0

    move/from16 v21, v2

    :goto_29a
    :try_start_29a
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install of package "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " succeeded but now not found"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b7
    .catch Ljava/io/IOException; {:try_start_29a .. :try_end_2b7} :catch_2ce

    const/4 v0, 0x0

    goto/16 :goto_1e2

    :goto_2ba
    if-eqz v7, :cond_19b

    :try_start_2bc
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_2bf
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2bf} :catch_19f

    move-object/from16 v1, p2

    const/4 v13, 0x0

    :try_start_2c2
    invoke-virtual {v5, v12, v1, v13}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_2c8
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2c8} :catch_2c9

    goto :goto_2cc

    :catch_2c9
    move-exception v0

    goto/16 :goto_1a6

    :goto_2cc
    goto/16 :goto_401

    :catch_2ce
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_3f9

    :catch_2d3
    move-exception v0

    move-object/from16 v1, p2

    move/from16 v21, v2

    goto/16 :goto_3f9

    :catch_2da
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    move/from16 v21, v2

    move-object/from16 v8, p5

    goto/16 :goto_3f9

    :catchall_2e5
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v20, v1

    move/from16 v21, v2

    const/4 v4, 0x0

    move-object/from16 v8, p5

    move-object/from16 v1, p2

    goto/16 :goto_3c6

    :catch_2f3
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v8, p5

    move-object/from16 v1, p2

    move-object v2, v0

    goto/16 :goto_3c3

    :catchall_301
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v3, v18

    const/4 v4, 0x0

    move-object/from16 v8, p5

    move-object/from16 v1, p2

    goto/16 :goto_3c6

    :catch_311
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v3, v18

    move-object/from16 v8, p5

    move-object/from16 v1, p2

    move-object v2, v0

    goto/16 :goto_3c3

    :catchall_321
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v1, p2

    move-object v4, v3

    move-object/from16 v3, v18

    move-object v2, v4

    goto :goto_348

    :catch_334
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v1, p2

    move-object v4, v3

    move-object/from16 v3, v18

    move-object v2, v0

    :goto_346
    :try_start_346
    throw v2
    :try_end_347
    .catchall {:try_start_346 .. :try_end_347} :catchall_347

    :catchall_347
    move-exception v0

    :goto_348
    if-eqz v7, :cond_355

    :try_start_34a
    invoke-static {v2, v7}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_355

    :catchall_34e
    move-exception v0

    goto/16 :goto_3c6

    :catch_351
    move-exception v0

    :goto_352
    move-object v2, v0

    goto/16 :goto_3c3

    :cond_355
    :goto_355
    throw v0
    :try_end_356
    .catch Ljava/lang/Throwable; {:try_start_34a .. :try_end_356} :catch_351
    .catchall {:try_start_34a .. :try_end_356} :catchall_34e

    :catchall_356
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v1, p2

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_3c6

    :catch_369
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v3, v18

    move-object/from16 v1, p2

    move-object v2, v0

    goto/16 :goto_3c3

    :catchall_37c
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v1, p2

    move-object v4, v3

    move-object v3, v15

    move-object/from16 v15, p0

    goto :goto_3c6

    :catch_38d
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move-object v8, v1

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object v3, v15

    move-object/from16 v15, p0

    move-object/from16 v1, p2

    move-object v2, v0

    goto :goto_3c3

    :catchall_39e
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v17, v8

    move-object v8, v1

    move-object v4, v3

    move-object v3, v15

    move-object/from16 v15, p0

    move-object/from16 v1, p2

    goto :goto_3c6

    :catch_3b1
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v17, v8

    move-object v3, v15

    move-object/from16 v15, p0

    move-object v8, v1

    move-object/from16 v1, p2

    move-object v2, v0

    :goto_3c3
    :try_start_3c3
    throw v2
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3c4

    :catchall_3c4
    move-exception v0

    move-object v4, v2

    :goto_3c6
    if-eqz v3, :cond_3ce

    :try_start_3c8
    invoke-static {v4, v3}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_3ce

    :catch_3cc
    move-exception v0

    goto :goto_3df

    :cond_3ce
    :goto_3ce
    throw v0
    :try_end_3cf
    .catch Ljava/lang/Exception; {:try_start_3c8 .. :try_end_3cf} :catch_3cc
    .catch Ljava/io/IOException; {:try_start_3c8 .. :try_end_3cf} :catch_3e3

    :catch_3cf
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    move-object/from16 v14, p7

    move/from16 v21, v2

    move-object/from16 v20, v4

    move-object/from16 v17, v8

    move-object v8, v1

    move-object/from16 v1, p2

    :goto_3df
    :try_start_3df
    invoke-virtual {v6, v10}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    throw v0
    :try_end_3e3
    .catch Ljava/io/IOException; {:try_start_3df .. :try_end_3e3} :catch_3e3

    :catch_3e3
    move-exception v0

    goto :goto_3f9

    :catch_3e5
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    goto :goto_3f2

    :catch_3eb
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, p4

    move-object/from16 v9, p6

    :goto_3f2
    move-object/from16 v14, p7

    move-object v8, v1

    :goto_3f5
    move/from16 v21, v2

    move-object/from16 v1, p2

    :goto_3f9
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to transcribe restored apk for install"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_401
    return v2
.end method

.method public static setPrivilegeApp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/backup/utils/RestoreUtils;->mPrivilegeApp:Z

    return-void
.end method
