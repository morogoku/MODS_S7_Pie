.class Lcom/android/server/SdpManagerService$FileUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileUtil"
.end annotation


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

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_3b

    const/4 v3, 0x0

    :try_start_8
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_34
    .catchall {:try_start_8 .. :try_end_d} :catchall_32

    nop

    const/16 v5, 0x400

    :try_start_10
    new-array v5, v5, [B

    :goto_12
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    if-lez v6, :cond_1d

    invoke-virtual {v4, v5, v0, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1c} :catch_28
    .catchall {:try_start_10 .. :try_end_1c} :catchall_25

    goto :goto_12

    :cond_1d
    const/4 v1, 0x1

    :try_start_1e
    invoke-static {v3, v4}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_34
    .catchall {:try_start_1e .. :try_end_21} :catchall_32

    :try_start_21
    invoke-static {v3, v2}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_3b

    goto :goto_3f

    :catchall_25
    move-exception v0

    move-object v5, v3

    goto :goto_2e

    :catch_28
    move-exception v0

    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v5

    move-object v8, v5

    move-object v5, v0

    move-object v0, v8

    :goto_2e
    :try_start_2e
    invoke-static {v5, v4}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_32} :catch_34
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    goto :goto_37

    :catch_34
    move-exception v0

    move-object v3, v0

    :try_start_36
    throw v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    :goto_37
    :try_start_37
    invoke-static {v3, v2}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    return v1
.end method

.method static exists(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static exists(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SdpManagerService$FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method static getEncUserDir(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "enc_user"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getUserSystemDir(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static read(Ljava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_38

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_37

    :cond_16
    move-object v2, v0

    :try_start_17
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_32

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v5, v4, [B

    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_2c
    .catchall {:try_start_1c .. :try_end_25} :catchall_2a

    move-object v2, v5

    :try_start_26
    invoke-static {v0, v3}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_32

    goto :goto_36

    :catchall_2a
    move-exception v4

    goto :goto_2e

    :catch_2c
    move-exception v0

    :try_start_2d
    throw v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    :goto_2e
    :try_start_2e
    invoke-static {v0, v3}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_36
    return-object v2

    :goto_37
    return-object v0

    :cond_38
    :goto_38
    return-object v0
.end method

.method static write(Ljava/lang/String;[B)Z
    .registers 7

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    if-nez p1, :cond_b

    goto :goto_2f

    :cond_b
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_11
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_2a

    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1d} :catch_24
    .catchall {:try_start_17 .. :try_end_1d} :catchall_22

    const/4 v0, 0x1

    :try_start_1e
    invoke-static {v3, v2}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_2a

    goto :goto_2e

    :catchall_22
    move-exception v4

    goto :goto_26

    :catch_24
    move-exception v3

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    :goto_26
    :try_start_26
    invoke-static {v3, v2}, Lcom/android/server/SdpManagerService$FileUtil;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method
