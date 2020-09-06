.class public final Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field public static final CMD_BUF_SIZE_MAX:I = 0x320

.field private static final DEFAULT_TIMEOUT_MS:I = 0xea60

.field private static final RESPONSE_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DualDarDaemonConnector"


# instance fields
.field private mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private mIsListening:Z

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const-string v0, "ddar"

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    new-instance v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const/16 v2, 0x22

    if-eqz v0, :cond_13

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    nop

    :goto_18
    if-ge v1, v3, :cond_36

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_26

    const-string v5, "\\\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_26
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_30

    const-string v5, "\\\\"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_30
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_36
    if-eqz v0, :cond_3b

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    return-void
.end method

.method private listenToSocket()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    move-object v1, v3

    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_142
    .catchall {:try_start_3 .. :try_end_1c} :catchall_140

    :try_start_1c
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_13d

    :try_start_23
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v5}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    const/16 v5, 0x1000

    new-array v6, v5, [B

    move v7, v2

    :goto_2d
    rsub-int v8, v7, 0x1000

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_c7

    const-string v5, "DualDarDaemonConnector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reading with start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    nop

    move v5, v2

    :goto_58
    array-length v8, v6

    if-ge v5, v8, :cond_60

    aput-byte v2, v6, v5
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_5d} :catch_142
    .catchall {:try_start_23 .. :try_end_5d} :catchall_140

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_60
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_63
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_c4

    if-eqz v4, :cond_a2

    :try_start_67
    const-string v4, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closing stream for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_86} :catch_87
    .catchall {:try_start_67 .. :try_end_86} :catchall_c4

    goto :goto_a0

    :catch_87
    move-exception v4

    :try_start_88
    const-string v5, "DualDarDaemonConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed closing output stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_a0
    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_a2
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_c4

    nop

    :try_start_a4
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_c2

    :catch_a8
    move-exception v0

    const-string v3, "DualDarDaemonConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_c3

    :goto_c2
    nop

    :goto_c3
    return-void

    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit v3
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v0

    :cond_c7
    add-int/2addr v8, v7

    const/4 v7, 0x0

    move v9, v7

    move v7, v2

    :goto_cb
    if-ge v7, v8, :cond_126

    :try_start_cd
    aget-byte v10, v6, v7

    if-nez v10, :cond_123

    new-instance v10, Ljava/lang/String;

    sub-int v11, v7, v9

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v6, v9, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v11, "DualDarDaemonConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "rawEvent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_f3} :catch_142
    .catchall {:try_start_cd .. :try_end_f3} :catchall_140

    :try_start_f3
    invoke-static {v10, v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v12

    if-eqz v12, :cond_fe

    goto :goto_107

    :cond_fe
    iget-object v12, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    invoke-virtual {v11}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getCmdNumber()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->add(ILcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;)V
    :try_end_107
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f3 .. :try_end_107} :catch_108
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_107} :catch_142
    .catchall {:try_start_f3 .. :try_end_107} :catchall_140

    :goto_107
    goto :goto_121

    :catch_108
    move-exception v11

    :try_start_109
    const-string v12, "DualDarDaemonConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem parsing message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_121
    add-int/lit8 v9, v7, 0x1

    :cond_123
    add-int/lit8 v7, v7, 0x1

    goto :goto_cb

    :cond_126
    if-nez v9, :cond_131

    const-string v7, "DualDarDaemonConnector"

    const-string v10, "RCV incomplete"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_131
    if-eq v9, v8, :cond_13a

    rsub-int v7, v9, 0x1000

    invoke-static {v6, v9, v6, v2, v7}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_138} :catch_142
    .catchall {:try_start_109 .. :try_end_138} :catchall_140

    nop

    goto :goto_13b

    :cond_13a
    const/4 v7, 0x0

    :goto_13b
    goto/16 :goto_2d

    :catchall_13d
    move-exception v6

    :try_start_13e
    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    :try_start_13f
    throw v6
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_140} :catch_142
    .catchall {:try_start_13f .. :try_end_140} :catchall_140

    :catchall_140
    move-exception v3

    goto :goto_144

    :catch_142
    move-exception v3

    :try_start_143
    throw v3
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_140

    :goto_144
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_147
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_149
    .catchall {:try_start_147 .. :try_end_149} :catchall_1a8

    if-eqz v5, :cond_186

    :try_start_14b
    const-string v5, "DualDarDaemonConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing stream for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_16a} :catch_16b
    .catchall {:try_start_14b .. :try_end_16a} :catchall_1a8

    goto :goto_184

    :catch_16b
    move-exception v5

    :try_start_16c
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed closing output stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_184
    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_186
    monitor-exit v4
    :try_end_187
    .catchall {:try_start_16c .. :try_end_187} :catchall_1a8

    if-eqz v1, :cond_1a7

    :try_start_189
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_18d

    goto :goto_1a7

    :catch_18d
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "DualDarDaemonConnector"

    invoke-static {v5, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    nop

    :cond_1a7
    :goto_1a7
    throw v3

    :catchall_1a8
    move-exception v0

    :try_start_1a9
    monitor-exit v4
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw v0
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_5a

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_52

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p4

    move v3, v0

    :goto_20
    if-ge v3, v2, :cond_4e

    aget-object v4, p4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_37

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs declared-synchronized execute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_3d

    :try_start_19
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v5, :cond_27

    const-string v5, "DualDarDaemonConnector"

    const-string v6, "Missing Output stream - cannot write commands!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_3a

    goto :goto_37

    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_3a

    goto :goto_37

    :catch_33
    move-exception v2

    :try_start_34
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-void

    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_a9

    :try_start_19
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v5, :cond_27

    const-string v5, "DualDarDaemonConnector"

    const-string v6, "Missing Output stream - cannot write commands!"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_a6

    goto :goto_37

    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_a6

    goto :goto_37

    :catch_33
    move-exception v5

    :try_start_34
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_37
    const/4 v5, 0x0

    :cond_38
    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command Sent : sequence Number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "task is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Command is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v6, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mResponseQueue:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;

    const v7, 0xea60

    invoke-virtual {v6, v1, p2, v7}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->remove(ILjava/lang/String;I)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v6

    move-object v5, v6

    if-nez v5, :cond_87

    const-string v6, "DualDarDaemonConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timed-out waiting for response to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_8d

    :cond_87
    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v6

    if-nez v6, :cond_38

    :goto_8d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    if-eqz v5, :cond_a3

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassClientError()Z

    move-result v8

    if-eqz v8, :cond_a3

    const-string v8, "DualDarDaemonConnector"

    const-string/jumbo v9, "event = null or isClassClientError = true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_a3
    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_34 .. :try_end_a4} :catchall_a6

    monitor-exit p0

    return-object v5

    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "DualDarDaemonConnector"

    const-string v4, "Unhandled event \'%s\'"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_26

    :cond_25
    goto :goto_47

    :catch_26
    move-exception v3

    const-string v4, "DualDarDaemonConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error handling \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_47
    return v1
.end method

.method public run()V
    .registers 5

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    if-eqz v0, :cond_2d

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->listenToSocket()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    goto :goto_0

    :catch_8
    move-exception v0

    const-string v1, "DualDarDaemonConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error connectiong to DualDAR daemon in NativeDaemonConnector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v1, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mCallback:Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;

    invoke-interface {v1}, Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;->onDaemonDisconnected()Z

    goto :goto_7

    :cond_2d
    return-void
.end method

.method public setIsListening(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->mIsListening:Z

    return-void
.end method
