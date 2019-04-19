.class public Lcom/android/server/power/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method private static On()V
    .registers 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method static synthetic access$4100()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->On()V

    return-void
.end method

.method private static fileWriteInt(I)V
    .registers 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/led/led_pattern"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_51

    :cond_e
    const/4 v1, 0x0

    :try_start_f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_31
    .catchall {:try_start_f .. :try_end_20} :catchall_2f

    nop

    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2e

    :catch_25
    move-exception v2

    const-string v3, "ShutdownThread"

    const-string v4, "led file close error"

    invoke-static {v3, v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3f

    :cond_2e
    :goto_2e
    goto :goto_3f

    :catchall_2f
    move-exception v2

    goto :goto_40

    :catch_31
    move-exception v2

    :try_start_32
    const-string v3, "LED"

    const-string v4, "!@Exception has raised while file write"

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    if-eqz v1, :cond_2e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_25

    goto :goto_2e

    :goto_3f
    return-void

    :goto_40
    nop

    if-eqz v1, :cond_50

    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_50

    :catch_47
    move-exception v3

    const-string v4, "ShutdownThread"

    const-string v5, "led file close error"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    nop

    :cond_50
    :goto_50
    throw v2

    :goto_51
    const-string v1, "LED"

    const-string v2, "!@LED File is not exist"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
