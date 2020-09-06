.class public Lcom/android/server/pm/XmlMoreAtomicFile;
.super Lcom/android/server/pm/MoreAtomicFile;
.source "XmlMoreAtomicFile.java"


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/MoreAtomicFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/MoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/MoreAtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/MoreAtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method protected isDamaged(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xe

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3c

    const/4 v0, 0x1

    const-string v2, "MoreAtomicFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is too small, rename it to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".crt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_48
    .catchall {:try_start_a .. :try_end_3c} :catchall_46

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_45

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    :cond_45
    :goto_45
    goto :goto_7e

    :catchall_46
    move-exception v2

    goto :goto_71

    :catch_48
    move-exception v2

    const/4 v0, 0x1

    :try_start_4a
    const-string v3, "MoreAtomicFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " during check if it is damaged, rename it to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".crt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_46

    if-eqz v1, :cond_45

    :try_start_6d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_40

    goto :goto_45

    :goto_71
    nop

    if-eqz v1, :cond_7d

    :try_start_74
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7d

    :catch_78
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_7d
    :goto_7d
    throw v2

    :cond_7e
    :goto_7e
    return v0
.end method
