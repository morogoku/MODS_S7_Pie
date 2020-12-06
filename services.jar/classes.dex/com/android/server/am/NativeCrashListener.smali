.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-lez p3, :cond_10

    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-gtz v1, :cond_d

    const/4 v2, -0x1

    return v2

    :cond_d
    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_10
    return v0
.end method

.method static unpackInt([BI)I
    .registers 8

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 15

    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v2

    const-wide/16 v2, 0x2710

    :try_start_c
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-eq v5, v3, :cond_2f

    const-string v3, "NativeCrashListener"

    const-string v4, "Unable to read from debuggerd"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v1, v7}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    if-lez v6, :cond_f7

    iget-object v9, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_ff

    :try_start_3f
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_f4

    if-eqz v10, :cond_dd

    :try_start_4c
    iget-boolean v9, v10, Lcom/android/server/am/ProcessRecord;->persistent:Z

    const/4 v11, 0x1

    if-eqz v9, :cond_9d

    const/16 v9, 0x7557

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x2

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v12, v3, v11

    const/4 v11, 0x3

    if-nez v10, :cond_77

    const/4 v12, -0x1

    goto :goto_7b

    :cond_77
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_7b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const-string v11, "Native crash"

    aput-object v11, v3, v7

    const/4 v7, 0x5

    invoke-static {v8}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v7

    const/4 v7, 0x6

    const-string/jumbo v11, "unknown"

    aput-object v11, v3, v7

    const/4 v7, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :cond_9d
    array-length v3, v1

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    if-lez v3, :cond_b3

    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_b0

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b5

    :cond_b0
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_b3
    if-gtz v3, :cond_9d

    :goto_b5
    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_b8} :catch_ff

    :try_start_b8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-boolean v11, v10, Lcom/android/server/am/ProcessRecord;->crashing:Z

    iput-boolean v11, v10, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    monitor-exit v4
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_d7

    :try_start_c0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-direct {v4, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v7, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v7, p0, v10, v8, v4}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d6} :catch_ff

    goto :goto_f3

    :catchall_d7
    move-exception v7

    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    :try_start_d9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7

    :cond_dd
    const-string v3, "NativeCrashListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f3} :catch_ff

    :goto_f3
    goto :goto_fe

    :catchall_f4
    move-exception v3

    :try_start_f5
    monitor-exit v9
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    :try_start_f6
    throw v3

    :cond_f7
    const-string v3, "NativeCrashListener"

    const-string v4, "Bogus pid!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fe} :catch_ff

    :goto_fe
    goto :goto_107

    :catch_ff
    move-exception v2

    const-string v3, "NativeCrashListener"

    const-string v4, "Exception dealing with report"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_107
    return-void
.end method

.method public run()V
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [B

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ndebugsocket"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_13
    :try_start_13
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    const-string v3, "/data/system/ndebugsocket"

    invoke-static {v3}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    invoke-static {v2, v0}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    const-string v5, "/data/system/ndebugsocket"

    const/16 v6, 0x1ff

    invoke-static {v5, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_6b

    :goto_2f
    const/4 v5, 0x0

    move-object v6, v5

    :try_start_31
    invoke-static {v2, v5}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v6, v5

    if-eqz v6, :cond_3b

    invoke-virtual {p0, v6}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_4a
    .catchall {:try_start_31 .. :try_end_3b} :catchall_48

    :cond_3b
    if-eqz v6, :cond_5d

    :try_start_3d
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    move-exception v5

    :goto_42
    :try_start_42
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_45
    .catch Landroid/system/ErrnoException; {:try_start_42 .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_6b

    :goto_45
    goto :goto_5d

    :catch_46
    move-exception v5

    goto :goto_45

    :catchall_48
    move-exception v5

    goto :goto_5e

    :catch_4a
    move-exception v5

    :try_start_4b
    const-string v7, "NativeCrashListener"

    const-string v8, "Error handling connection"

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    if-eqz v6, :cond_5d

    :try_start_54
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v5

    :goto_59
    :try_start_59
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5c
    .catch Landroid/system/ErrnoException; {:try_start_59 .. :try_end_5c} :catch_46
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_6b

    goto :goto_45

    :cond_5d
    :goto_5d
    goto :goto_2f

    :goto_5e
    if-eqz v6, :cond_6a

    :try_start_60
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v0

    :goto_65
    :try_start_65
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_68
    .catch Landroid/system/ErrnoException; {:try_start_65 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6b

    goto :goto_6a

    :catch_69
    move-exception v0

    :cond_6a
    :goto_6a
    :try_start_6a
    throw v5
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    const-string v2, "NativeCrashListener"

    const-string v3, "Unable to init native debug socket!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
