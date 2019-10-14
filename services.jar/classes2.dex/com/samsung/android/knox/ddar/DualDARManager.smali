.class public Lcom/samsung/android/knox/ddar/DualDARManager;
.super Ljava/lang/Object;
.source "DualDARManager.java"


# static fields
.field private static final DEBUG:Z

.field public static final DUALDAR_AGENT:Ljava/lang/String; = "KNOXCORE_PROXY_AGENT"

.field public static final DUALDAR_MGR_SERVICE:Ljava/lang/String; = "DUALDAR_MGR_SERVICE"

.field public static final GET_CLIENT_VERSION_REQUEST:Ljava/lang/String; = "GET_CLIENT_VERSION_REQUEST"

.field public static final GET_DUALDAR_USERS_REQUEST:Ljava/lang/String; = "GET_DUALDAR_USERS_REQUEST"

.field public static final INSTALL_CLIENT_LIBRARY_REQUEST:Ljava/lang/String; = "INSTALL_CLIENT_LIBRARY_REQUEST"

.field private static final LOAD_RETRY_COUNT:I = 0x5

.field public static final PUSH_SECRET_REQUEST:Ljava/lang/String; = "PUSH_SECRET_REQUEST"

.field private static final TAG:Ljava/lang/String; = "DualDarManager"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    sget-boolean v2, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "DualDarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v3, :cond_42

    const-string v3, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found FSRelay file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    if-nez v2, :cond_45

    return-object v1

    :cond_45
    new-instance v10, Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    move-object v3, v10

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_58} :catch_65
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_58} :catch_59

    return-object v10

    :catch_59
    move-exception v2

    const-string v3, "DualDarManager"

    const-string v4, "general exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :catch_65
    move-exception v2

    const-string v3, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FSRelay file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    :try_start_11
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_15} :catch_35
    .catchall {:try_start_11 .. :try_end_15} :catchall_32

    const/16 v1, 0x2f

    :try_start_17
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/samsung/android/knox/ddar/FileInfo;

    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/knox/ddar/FileInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_2d} :catch_30
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2e

    return-object v1

    :catchall_2e
    move-exception v0

    goto :goto_3c

    :catch_30
    move-exception v1

    goto :goto_38

    :catchall_32
    move-exception v0

    move-object v6, v1

    goto :goto_3c

    :catch_35
    move-exception v3

    move-object v6, v1

    move-object v1, v3

    :goto_38
    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_2e

    return-object v0

    :goto_3c
    throw v0

    :cond_3d
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;
    .registers 3

    const-class v0, Lcom/samsung/android/knox/ddar/DualDARManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/ddar/DualDARManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ddar/DualDARManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_271

    const/4 v2, 0x0

    if-eqz p3, :cond_16

    :try_start_a
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3

    move-object v0, v3

    goto :goto_1b

    :catchall_10
    move-exception v2

    goto/16 :goto_23f

    :catch_13
    move-exception v3

    goto/16 :goto_1ee

    :cond_16
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_13
    .catchall {:try_start_a .. :try_end_1a} :catchall_10

    move-object v0, v3

    :goto_1b
    if-nez v0, :cond_51

    nop

    if-eqz v0, :cond_2e

    :try_start_20
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_271

    if-eqz v3, :cond_2e

    :try_start_24
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_2a
    .catchall {:try_start_24 .. :try_end_29} :catchall_271

    goto :goto_2e

    :catch_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_271

    if-nez v3, :cond_4f

    :try_start_34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_49} :catch_4b
    .catchall {:try_start_34 .. :try_end_49} :catchall_271

    goto :goto_38

    :cond_4a
    goto :goto_4f

    :catch_4b
    move-exception v3

    :try_start_4c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_271

    :cond_4f
    :goto_4f
    monitor-exit p0

    return v2

    :cond_51
    :try_start_51
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_1b2

    iget-wide v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1b2

    iget-wide v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_65

    goto/16 :goto_1b2

    :cond_65
    sget-boolean v3, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v3, :cond_99

    const-string v3, "DualDarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FSRelay fd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/knox/ddar/FileInfo;->offset:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/samsung/android/knox/ddar/FileInfo;->len:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    if-eqz p2, :cond_c3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p3, :cond_bb

    invoke-direct {p0, v4}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromAsset(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    :cond_bb
    invoke-direct {p0, v4}, Lcom/samsung/android/knox/ddar/DualDARManager;->getFdFromPath(Ljava/lang/String;)Lcom/samsung/android/knox/ddar/FileInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c2
    goto :goto_a5

    :cond_c3
    const/4 v3, 0x0

    sget-boolean v4, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v4, :cond_e3

    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load FSRelay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e3
    move v4, v3

    move v3, v2

    :goto_e5
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_136

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "RELAY_FILE_INFO"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_106

    const-string v7, "CRYPTO_FILE_INFO"

    new-array v8, v2, [Lcom/samsung/android/knox/ddar/FileInfo;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_106
    const-string v7, "INSTALL_CLIENT_LIBRARY_REQUEST"

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_118

    const-string v8, "dual_dar_response"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_118

    move v8, v6

    goto :goto_119

    :cond_118
    move v8, v2

    :goto_119
    move v4, v8

    if-eqz v4, :cond_11d

    goto :goto_136

    :cond_11d
    const-string v6, "DualDarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FSRelay loading failure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    :cond_136
    :goto_136
    if-nez v4, :cond_173

    const-string v3, "DualDarManager"

    const-string v5, "FSRelay Load failed !!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_13f} :catch_13
    .catchall {:try_start_51 .. :try_end_13f} :catchall_10

    nop

    if-eqz v0, :cond_150

    :try_start_142
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_144
    .catchall {:try_start_142 .. :try_end_144} :catchall_271

    if-eqz v3, :cond_150

    :try_start_146
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14b} :catch_14c
    .catchall {:try_start_146 .. :try_end_14b} :catchall_271

    goto :goto_150

    :catch_14c
    move-exception v3

    :try_start_14d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_150
    :goto_150
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_154
    .catchall {:try_start_14d .. :try_end_154} :catchall_271

    if-nez v3, :cond_171

    :try_start_156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v6, v5, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_16b} :catch_16d
    .catchall {:try_start_156 .. :try_end_16b} :catchall_271

    goto :goto_15a

    :cond_16c
    goto :goto_171

    :catch_16d
    move-exception v3

    :try_start_16e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_271

    :cond_171
    :goto_171
    monitor-exit p0

    return v2

    :cond_173
    :try_start_173
    sget-boolean v3, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    if-eqz v3, :cond_17e

    const-string v3, "DualDarManager"

    const-string v5, "FSRelay Loaded Successfully"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_17e} :catch_13
    .catchall {:try_start_173 .. :try_end_17e} :catchall_10

    :cond_17e
    nop

    if-eqz v0, :cond_18f

    :try_start_181
    iget-object v2, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_183
    .catchall {:try_start_181 .. :try_end_183} :catchall_271

    if-eqz v2, :cond_18f

    :try_start_185
    iget-object v2, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_18a} :catch_18b
    .catchall {:try_start_185 .. :try_end_18a} :catchall_271

    goto :goto_18f

    :catch_18b
    move-exception v2

    :try_start_18c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_18f
    :goto_18f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_193
    .catchall {:try_start_18c .. :try_end_193} :catchall_271

    if-nez v2, :cond_1b0

    :try_start_195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_199
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v3, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1aa} :catch_1ac
    .catchall {:try_start_195 .. :try_end_1aa} :catchall_271

    goto :goto_199

    :cond_1ab
    goto :goto_1b0

    :catch_1ac
    move-exception v2

    :try_start_1ad
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_271

    :cond_1b0
    :goto_1b0
    monitor-exit p0

    return v6

    :cond_1b2
    :goto_1b2
    :try_start_1b2
    const-string v3, "DualDarManager"

    const-string/jumbo v4, "pfd is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1ba} :catch_13
    .catchall {:try_start_1b2 .. :try_end_1ba} :catchall_10

    nop

    if-eqz v0, :cond_1cb

    :try_start_1bd
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_1bf
    .catchall {:try_start_1bd .. :try_end_1bf} :catchall_271

    if-eqz v3, :cond_1cb

    :try_start_1c1
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c6} :catch_1c7
    .catchall {:try_start_1c1 .. :try_end_1c6} :catchall_271

    goto :goto_1cb

    :catch_1c7
    move-exception v3

    :try_start_1c8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1cb
    :goto_1cb
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_1cf
    .catchall {:try_start_1c8 .. :try_end_1cf} :catchall_271

    if-nez v3, :cond_1ec

    :try_start_1d1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1e6} :catch_1e8
    .catchall {:try_start_1d1 .. :try_end_1e6} :catchall_271

    goto :goto_1d5

    :cond_1e7
    goto :goto_1ec

    :catch_1e8
    move-exception v3

    :try_start_1e9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_271

    :cond_1ec
    :goto_1ec
    monitor-exit p0

    return v2

    :goto_1ee
    nop

    :try_start_1ef
    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at installLibrary - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20c
    .catchall {:try_start_1ef .. :try_end_20c} :catchall_10

    if-eqz v0, :cond_21c

    :try_start_20e
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_210
    .catchall {:try_start_20e .. :try_end_210} :catchall_271

    if-eqz v3, :cond_21c

    :try_start_212
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_217} :catch_218
    .catchall {:try_start_212 .. :try_end_217} :catchall_271

    goto :goto_21c

    :catch_218
    move-exception v3

    :try_start_219
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_21c
    :goto_21c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_220
    .catchall {:try_start_219 .. :try_end_220} :catchall_271

    if-nez v3, :cond_23d

    :try_start_222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_226
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_237} :catch_238
    .catchall {:try_start_222 .. :try_end_237} :catchall_271

    goto :goto_226

    :catch_238
    move-exception v3

    :try_start_239
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_271

    :cond_23c
    nop

    :cond_23d
    monitor-exit p0

    return v2

    :goto_23f
    if-eqz v0, :cond_24f

    :try_start_241
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_243
    .catchall {:try_start_241 .. :try_end_243} :catchall_271

    if-eqz v3, :cond_24f

    :try_start_245
    iget-object v3, v0, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24a
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_24a} :catch_24b
    .catchall {:try_start_245 .. :try_end_24a} :catchall_271

    goto :goto_24f

    :catch_24b
    move-exception v3

    :try_start_24c
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_24f
    :goto_24f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_253
    .catchall {:try_start_24c .. :try_end_253} :catchall_271

    if-nez v3, :cond_270

    :try_start_255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_259
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/ddar/FileInfo;

    iget-object v5, v4, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_26a} :catch_26c
    .catchall {:try_start_255 .. :try_end_26a} :catchall_271

    goto :goto_259

    :cond_26b
    goto :goto_270

    :catch_26c
    move-exception v3

    :try_start_26d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_270
    :goto_270
    throw v2
    :try_end_271
    .catchall {:try_start_26d .. :try_end_271} :catchall_271

    :catchall_271
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "KNOXCORE_PROXY_AGENT"

    const-string v2, "DUALDAR_MGR_SERVICE"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDualDARUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "GET_DUALDAR_USERS_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v2, "DualDarManager"

    const-string v3, "Failed to get service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    monitor-exit p0

    return-object v1

    :cond_13
    :try_start_13
    const-string v1, "USERS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstalledClientLibraryVersion()Ljava/lang/String;
    .registers 5

    const-string v0, "GET_CLIENT_VERSION_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v2, "DualDarManager"

    const-string v3, "Failed to get service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_11
    const-string v1, "CLIENT_VERSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized installLibrary(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/DualDARManager;->installLibraryInternal(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecret(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "DualDarManager"

    const-string/jumbo v1, "setSecret() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_4c

    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "INNER_LAYER_SECRET"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "PUSH_SECRET_REQUEST"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dual_dar_response"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "DualDarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PUSH_SECRET_REQUEST response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_41} :catch_44
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_48

    :catchall_42
    move-exception v0

    goto :goto_4b

    :catch_44
    move-exception v0

    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_42

    :goto_48
    nop

    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
