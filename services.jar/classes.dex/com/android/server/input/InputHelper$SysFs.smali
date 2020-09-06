.class Lcom/android/server/input/InputHelper$SysFs;
.super Ljava/lang/Object;
.source "InputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SysFs"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method check(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_12

    move-object v0, v2

    nop

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    return v1

    :catch_12
    move-exception v2

    return v1

    :catch_14
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method read(Ljava/lang/String;Z)I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_12} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_17
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    move-object v0, v3

    goto :goto_7b

    :catchall_14
    move-exception v1

    goto/16 :goto_c5

    :catch_17
    move-exception v1

    goto/16 :goto_b3

    :catch_1a
    move-exception v3

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_17
    .catchall {:try_start_1b .. :try_end_1e} :catchall_14

    if-eqz p2, :cond_a4

    :try_start_20
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_50

    sget-object v5, Lcom/android/server/input/InputHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create new file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_41} :catch_76
    .catchall {:try_start_20 .. :try_end_41} :catchall_14

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_49

    const/4 v0, 0x0

    goto :goto_4e

    :catch_49
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    :cond_4e
    :goto_4e
    nop

    :goto_4f
    return v1

    :cond_50
    :try_start_50
    sget-object v5, Lcom/android/server/input/InputHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file already exists:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_67} :catch_76
    .catchall {:try_start_50 .. :try_end_67} :catchall_14

    nop

    if-eqz v0, :cond_74

    :try_start_6a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6f

    const/4 v0, 0x0

    goto :goto_74

    :catch_6f
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    :cond_74
    :goto_74
    nop

    :goto_75
    return v1

    :catch_76
    move-exception v4

    :try_start_77
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_17
    .catchall {:try_start_77 .. :try_end_7a} :catchall_14

    nop

    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_83} :catch_8b
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_83} :catch_17
    .catchall {:try_start_7b .. :try_end_83} :catchall_14

    move v2, v3

    nop

    if-eqz v0, :cond_c3

    :try_start_87
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_be

    goto :goto_bc

    :catch_8b
    move-exception v3

    :try_start_8c
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_94} :catch_17
    .catchall {:try_start_8c .. :try_end_94} :catchall_14

    const/4 v0, 0x0

    :cond_95
    nop

    if-eqz v0, :cond_a2

    :try_start_98
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9d

    const/4 v0, 0x0

    goto :goto_a2

    :catch_9d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    :cond_a2
    :goto_a2
    nop

    :goto_a3
    return v1

    :cond_a4
    nop

    if-eqz v0, :cond_b1

    :try_start_a7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ac

    const/4 v0, 0x0

    goto :goto_b1

    :catch_ac
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    :cond_b1
    :goto_b1
    nop

    :goto_b2
    return v1

    :goto_b3
    nop

    :try_start_b4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_14

    if-eqz v0, :cond_c3

    :try_start_b9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_be

    :goto_bc
    const/4 v0, 0x0

    goto :goto_c3

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :cond_c3
    :goto_c3
    nop

    :goto_c4
    return v2

    :goto_c5
    nop

    if-eqz v0, :cond_d2

    :try_start_c8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cd

    const/4 v0, 0x0

    goto :goto_d2

    :catch_cd
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_d2
    :goto_d2
    throw v1
.end method

.method write(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1f

    move-object v0, v2

    nop

    :try_start_e
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v1, 0x1

    return v1

    :catch_1f
    move-exception v2

    goto :goto_26

    :catch_21
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_25} :catch_1f

    return v1

    :goto_26
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    return v1
.end method

.method write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1b

    move-object v0, v2

    nop

    :try_start_e
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v1, 0x1

    return v1

    :catch_1b
    move-exception v2

    goto :goto_22

    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_1b

    return v1

    :goto_22
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return v1
.end method
