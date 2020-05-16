.class final Lcom/android/server/Watchdog$FileDescriptorWatcher;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDescriptorWatcher"
.end annotation


# static fields
.field static FD_RLIMIT:J = 0x0L

.field static final OUTPUT_FILENAME:Ljava/lang/String; = "/data/log/fd_list.txt"

.field static final PROC_FD:Ljava/lang/String; = "/proc/self/fd"

.field static final PROC_MAPS:Ljava/lang/String; = "/proc/self/maps"

.field static mDumped:Z

.field static mDumpedCount:J

.field static final mEmfileChecker:Z

.field static mThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v2, "0x4f4c"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0x4f4c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    sput-boolean v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mEmfileChecker:Z

    const-wide/16 v2, 0x1

    sput-wide v2, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    sput-boolean v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumped:Z

    sput v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    sget v0, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v0}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0

    iget-wide v1, v0, Landroid/system/StructRlimit;->rlim_cur:J

    sput-wide v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->FD_RLIMIT:J
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_1a

    :catch_e
    move-exception v0

    const-wide/16 v1, 0x400

    sput-wide v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->FD_RLIMIT:J

    const-string v1, "Watchdog"

    const-string v2, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method private getFdInfo(Ljava/lang/StringBuilder;[Ljava/io/File;)V
    .registers 9

    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_54

    aget-object v2, p2, v1

    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    goto :goto_51

    :catch_38
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> readlink error\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_54
    return-void
.end method

.method private getMapInfo(Ljava/lang/StringBuilder;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/self/maps"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n=====system_server MAPS info=====\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    if-eqz v1, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_31
    .catchall {:try_start_1 .. :try_end_25} :catchall_2f

    move-object v1, v2

    goto :goto_17

    :cond_27
    nop

    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_2e

    :catch_2c
    move-exception v1

    goto :goto_3f

    :cond_2e
    :goto_2e
    goto :goto_3f

    :catchall_2f
    move-exception v1

    goto :goto_40

    :catch_31
    move-exception v1

    :try_start_32
    const-string v2, "Watchdog"

    const-string v3, "Failed to write system_server MAPS info"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_2f

    if-eqz v0, :cond_2e

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_2c

    goto :goto_2e

    :goto_3f
    return-void

    :goto_40
    nop

    if-eqz v0, :cond_49

    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_49

    :catch_47
    move-exception v2

    nop

    :cond_49
    :goto_49
    throw v1
.end method

.method private getProcessInfo(Ljava/lang/StringBuilder;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string/jumbo v2, "ps -A -o PID -o NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n=====all Process Status info (\'ps -A -o PID -o NAME\')=====\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    if-eqz v2, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_41
    .catchall {:try_start_1 .. :try_end_35} :catchall_3f

    move-object v2, v3

    goto :goto_27

    :cond_37
    nop

    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_3e

    :catch_3c
    move-exception v2

    :goto_3d
    goto :goto_51

    :cond_3e
    :goto_3e
    goto :goto_51

    :catchall_3f
    move-exception v1

    goto :goto_52

    :catch_41
    move-exception v1

    :try_start_42
    const-string v2, "Watchdog"

    const-string v3, "Failed to write all Process Status info"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    if-eqz v0, :cond_3e

    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_3e

    :catch_4f
    move-exception v1

    goto :goto_3d

    :goto_51
    return-void

    :goto_52
    nop

    if-eqz v0, :cond_5b

    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5b

    :catch_59
    move-exception v2

    nop

    :cond_5b
    :goto_5b
    throw v1
.end method

.method private recordResult(Ljava/lang/StringBuilder;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/fd_list.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_14
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v5

    new-instance v5, Landroid/util/Base64OutputStream;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v2, v5

    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FD_LIST_INFO **********\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nFD_LIST_INFO **********\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_88
    .catchall {:try_start_4 .. :try_end_6c} :catchall_86

    nop

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chown system:log /data/log/fd_list.txt"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chmod 640 /data/log/fd_list.txt"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_82} :catch_83

    goto :goto_85

    :catch_83
    move-exception v4

    goto :goto_a8

    :cond_85
    :goto_85
    goto :goto_a8

    :catchall_86
    move-exception v4

    goto :goto_a9

    :catch_88
    move-exception v4

    :try_start_89
    const-string v5, "Watchdog"

    const-string v6, "Failed to write contens in fd_list.txt"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    if-eqz v0, :cond_85

    :try_start_92
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chown system:log /data/log/fd_list.txt"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "chmod 640 /data/log/fd_list.txt"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a7} :catch_83

    goto :goto_85

    :goto_a8
    return-void

    :goto_a9
    nop

    if-eqz v0, :cond_c4

    :try_start_ac
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "chown system:log /data/log/fd_list.txt"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "chmod 640 /data/log/fd_list.txt"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c1} :catch_c2

    goto :goto_c4

    :catch_c2
    move-exception v5

    nop

    :cond_c4
    :goto_c4
    throw v4
.end method


# virtual methods
.method public run()V
    .registers 11

    sget v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/self/fd"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    array-length v2, v0

    goto :goto_16

    :cond_15
    const/4 v2, -0x1

    :goto_16
    int-to-long v3, v2

    const-wide/16 v5, 0x400

    sget-wide v7, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    mul-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_d5

    sget-boolean v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mEmfileChecker:Z

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_2c

    sget-wide v6, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_d5

    :cond_2c
    sget-wide v6, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    add-long/2addr v6, v4

    sput-wide v6, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===== fd_list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4, v0}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getFdInfo(Ljava/lang/StringBuilder;[Ljava/io/File;)V

    invoke-direct {p0, v4}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getMapInfo(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v4}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->getProcessInfo(Ljava/lang/StringBuilder;)V

    const-string v5, "Watchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ The number of fd in system_server is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", so we make fd_list.txt file for debugging."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/server/Watchdog$FileDescriptorWatcher;->recordResult(Ljava/lang/StringBuilder;)V

    sget-boolean v5, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mEmfileChecker:Z

    if-nez v5, :cond_d5

    sget-boolean v5, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumped:Z

    if-nez v5, :cond_d5

    sget-wide v5, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-lez v5, :cond_d5

    sput-boolean v1, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumped:Z

    const-string v5, "Watchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@ The number of fd in system_server is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", so we ran dumpstate for debugging."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sys_emfile"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    sget v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    sub-int/2addr v3, v1

    sput v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    return-void
.end method
