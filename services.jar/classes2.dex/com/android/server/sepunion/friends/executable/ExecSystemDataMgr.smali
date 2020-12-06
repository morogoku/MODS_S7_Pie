.class public Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;
.super Ljava/lang/Object;
.source "ExecSystemDataMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ExecSystemDataMgr"


# instance fields
.field private final mContext:Landroid/content/Context;


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

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static changeFilePermission(Ljava/io/File;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "setReadable() failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_15
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "ExecSystemDataMgr"

    const-string/jumbo v3, "setWritable() failed"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_25
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v2, "setExecutable() failed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_35} :catch_36

    :cond_35
    goto :goto_5a

    :catch_36
    move-exception v0

    const-string v2, "ExecSystemDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to change a permission of file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_5a
    return-void
.end method

.method private copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ExecSystemDataMgr"

    const-string v3, "copyPackageAssetsToSysDir"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-nez v2, :cond_11

    return v4

    :cond_11
    const-string/jumbo v0, "paramStr0"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "paramList0"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e9

    if-eqz v5, :cond_e9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_e9

    :cond_2f
    iget-object v0, v1, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_41

    const-string v0, "ExecSystemDataMgr"

    const-string v7, "getPackageManager() failed"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_41
    const/16 v0, 0x80

    :try_start_43
    invoke-virtual {v6, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v7, v0

    if-nez v7, :cond_54

    const-string v0, "ExecSystemDataMgr"

    const-string v8, "getApplicationInfo() failed"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_54
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v8, v0

    if-nez v8, :cond_69

    const-string v0, "ExecSystemDataMgr"

    const-string v9, "getResourcesForApplication() failed"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_69
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object v9, v0

    if-nez v9, :cond_7a

    const-string v0, "ExecSystemDataMgr"

    const-string v10, "getAssets() failed"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v0, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4

    :cond_7a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v13, v12, v4

    aget-object v11, v12, v11

    const-string v14, "ExecSystemDataMgr"

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v14, v10, v15}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_a0} :catch_e3

    :try_start_a0
    invoke-direct {v1, v14, v11}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->createFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v16
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a4} :catch_d8
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_d4

    if-nez v16, :cond_c5

    :try_start_a6
    const-string v15, "ExecSystemDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Failed to create "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_c1} :catch_d8
    .catchall {:try_start_a6 .. :try_end_c1} :catchall_c2

    goto :goto_c7

    :catchall_c2
    move-exception v0

    const/4 v15, 0x0

    goto :goto_dc

    :cond_c5
    move-object/from16 v17, v0

    :goto_c7
    if-eqz v14, :cond_cd

    const/4 v1, 0x0

    :try_start_ca
    invoke-static {v1, v14}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_e3

    :cond_cd
    nop

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    const/4 v4, 0x0

    goto :goto_7e

    :catchall_d4
    move-exception v0

    const/4 v1, 0x0

    move-object v15, v1

    goto :goto_dc

    :catch_d8
    move-exception v0

    move-object v15, v0

    :try_start_da
    throw v15
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v0

    :goto_dc
    if-eqz v14, :cond_e1

    :try_start_de
    invoke-static {v15, v14}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_e1
    throw v0
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_e2} :catch_e3

    :cond_e2
    return v11

    :catch_e3
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1

    :cond_e9
    :goto_e9
    move v1, v4

    const-string v0, "ExecSystemDataMgr"

    const-string v4, "arguments wrong!"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v1
.end method

.method private createFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .registers 12

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "createFile"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_10
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_41
    .catchall {:try_start_10 .. :try_end_15} :catchall_3f

    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_18
    new-array v5, v5, [B

    :goto_1a
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_26

    invoke-virtual {v3, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_25} :catch_38
    .catchall {:try_start_18 .. :try_end_25} :catchall_36

    goto :goto_1a

    :cond_26
    const/4 v0, 0x1

    :try_start_27
    invoke-static {v4, v3}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_41
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3f

    if-eqz v0, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    :goto_32
    invoke-static {v1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_4e

    :catchall_36
    move-exception v2

    goto :goto_3b

    :catch_38
    move-exception v2

    move-object v4, v2

    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_36

    :goto_3b
    :try_start_3b
    invoke-static {v4, v3}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_41
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v2

    goto :goto_4f

    :catch_41
    move-exception v2

    :try_start_42
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    if-eqz v0, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_32

    :cond_4e
    :goto_4e
    return v0

    :goto_4f
    if-eqz v0, :cond_5a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {v1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_5a
    throw v2
.end method

.method private deleteFiles(Landroid/os/Bundle;)Z
    .registers 14

    const-string/jumbo v0, "paramStrA0"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    array-length v2, v0

    goto :goto_d

    :cond_c
    const/4 v2, -0x1

    :goto_d
    const-string v3, "ExecSystemDataMgr"

    const-string v4, "deleteFiles %d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v4, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-lez v2, :cond_b4

    array-length v3, v0

    move v4, v1

    move v1, v8

    :goto_23
    if-ge v1, v3, :cond_b3

    aget-object v6, v0, v1

    if-eqz v6, :cond_af

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_af

    const-string v7, "/data/system/friends"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    goto/16 :goto_af

    :cond_39
    :try_start_39
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "ExecSystemDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wrong filePath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_af

    :cond_62
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_85

    const-string v9, "ExecSystemDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is a directory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_af

    :cond_85
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_a8

    const-string v9, "ExecSystemDataMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed to delete: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_a7} :catch_ab

    goto :goto_aa

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    :goto_aa
    goto :goto_af

    :catch_ab
    move-exception v7

    invoke-static {v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_af
    :goto_af
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_23

    :cond_b3
    move v1, v4

    :cond_b4
    if-eqz v1, :cond_b9

    if-ne v1, v2, :cond_b9

    goto :goto_ba

    :cond_b9
    move v5, v8

    :goto_ba
    return v5
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f

    array-length v2, v0

    if-lez v2, :cond_1f

    array-length v2, v0

    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    if-nez v4, :cond_19

    goto :goto_1c

    :cond_19
    invoke-direct {p0, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "ExecSystemDataMgr"

    const-string v2, "failed to delete a file or a directory!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :cond_2e
    goto :goto_33

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method

.method private deleteSubDirs(Landroid/os/Bundle;)Z
    .registers 11

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "deleteSubDirs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "paramStr1"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "ExecSystemDataMgr"

    const-string v4, "data is wrong!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_29
    move v3, v2

    :try_start_2a
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_40

    const-string v5, "ExecSystemDataMgr"

    const-string/jumbo v6, "target is not a directory!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_40
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_64

    array-length v6, v5

    if-lez v6, :cond_64

    array-length v6, v5

    :goto_4a
    if-ge v2, v6, :cond_64

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_61

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_61

    invoke-direct {p0, v7}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteRecursive(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_61} :catch_66

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_64
    const/4 v3, 0x1

    goto :goto_6a

    :catch_66
    move-exception v2

    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_6a
    return v3
.end method

.method private makeDir(Landroid/os/Bundle;)Z
    .registers 9

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "makeDir"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "ExecSystemDataMgr"

    const-string v3, "data is wrong!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2

    :cond_23
    const/4 v1, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_29
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_5e

    const-string v4, "ExecSystemDataMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to create a path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_51} :catch_6d
    .catchall {:try_start_29 .. :try_end_51} :catchall_6b

    nop

    if-eqz v1, :cond_5d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_5d
    return v2

    :cond_5e
    const/4 v1, 0x1

    if-eqz v1, :cond_7a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7a

    :goto_67
    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_7a

    :catchall_6b
    move-exception v2

    goto :goto_7b

    :catch_6d
    move-exception v2

    :try_start_6e
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6b

    if-eqz v1, :cond_7a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_67

    :cond_7a
    :goto_7a
    return v1

    :goto_7b
    if-eqz v1, :cond_86

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_86
    throw v2
.end method

.method private readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "readStringFromFile"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "paramStr0"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "ExecSystemDataMgr"

    const-string v5, "data is wrong!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v3

    :cond_24
    :try_start_24
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2e} :catch_64

    const/16 v5, 0x400

    :try_start_30
    new-array v5, v5, [C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_37
    invoke-virtual {v4, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_43

    invoke-virtual {v6, v5, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_43
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    const-string/jumbo v7, "paramStr0"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v2
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_56} :catch_5d
    .catchall {:try_start_30 .. :try_end_56} :catchall_5b

    move-object v0, v2

    :try_start_57
    invoke-static {v3, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_64

    goto :goto_68

    :catchall_5b
    move-exception v2

    goto :goto_60

    :catch_5d
    move-exception v2

    move-object v3, v2

    :try_start_5f
    throw v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5b

    :goto_60
    :try_start_60
    invoke-static {v3, v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_64} :catch_64

    :catch_64
    move-exception v2

    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :goto_68
    return-object v0
.end method

.method private writeStringToFile(Landroid/os/Bundle;)Z
    .registers 9

    const-string v0, "ExecSystemDataMgr"

    const-string/jumbo v1, "writeStringToFile"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "paramStr1"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_71

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_71

    :cond_27
    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2d
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_37} :catch_57
    .catchall {:try_start_2d .. :try_end_37} :catchall_55

    :try_start_37
    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3d} :catch_4f
    .catchall {:try_start_37 .. :try_end_3d} :catchall_4d

    const/4 v2, 0x1

    :try_start_3e
    invoke-static {v1, v5}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_57
    .catchall {:try_start_3e .. :try_end_41} :catchall_55

    if-eqz v2, :cond_64

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    :goto_49
    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    goto :goto_64

    :catchall_4d
    move-exception v6

    goto :goto_51

    :catch_4f
    move-exception v1

    :try_start_50
    throw v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4d

    :goto_51
    :try_start_51
    invoke-static {v1, v5}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_55} :catch_57
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v1

    goto :goto_65

    :catch_57
    move-exception v1

    :try_start_58
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    if-eqz v2, :cond_64

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_49

    :cond_64
    :goto_64
    return v2

    :goto_65
    if-eqz v2, :cond_70

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static {v4}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->changeFilePermission(Ljava/io/File;)V

    :cond_70
    throw v1

    :cond_71
    :goto_71
    const-string v1, "ExecSystemDataMgr"

    const-string/jumbo v4, "wrong param %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v1, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 7

    const-string v0, "ExecSystemDataMgr"

    const-string v1, "ActionSystemDataMgr"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_47

    const v0, 0x120013

    if-eq p3, v0, :cond_3e

    packed-switch p3, :pswitch_data_4a

    goto :goto_47

    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->readStringFromFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->writeStringToFile(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_23
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteSubDirs(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->copyPackageAssetsToSysDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_35
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->makeDir(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecSystemDataMgr;->deleteFiles(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x12000b
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method
