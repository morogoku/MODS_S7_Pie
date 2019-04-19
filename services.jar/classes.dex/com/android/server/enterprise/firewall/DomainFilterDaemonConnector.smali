.class final Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;
.super Ljava/lang/Object;
.source "DomainFilterDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "DomainFilterDaemonConnector"


# instance fields
.field private mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mDaemonLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    const-string/jumbo v0, "dnsproxyd"

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mSocket:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mLooper:Landroid/os/Looper;

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
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    move-object v3, v0

    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    iget-object v6, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1f} :catch_fb
    .catchall {:try_start_4 .. :try_end_1f} :catchall_f8

    :try_start_1f
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    monitor-exit v6
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_f5

    :try_start_26
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    invoke-interface {v0}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onDaemonConnected()V

    const/16 v6, 0x1000

    new-array v0, v6, [B

    move-object v7, v0

    const/4 v8, 0x0

    move v0, v8

    :goto_32
    rsub-int v9, v0, 0x1000

    invoke-virtual {v5, v7, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-gez v9, :cond_91

    const-string v6, "DomainFilterDaemonConnector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "listenToSocket() - got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " reading with start = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    move v6, v8

    :goto_5b
    array-length v9, v7

    if-ge v6, v9, :cond_63

    aput-byte v8, v7, v6
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_60} :catch_fb
    .catchall {:try_start_26 .. :try_end_60} :catchall_f8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_63
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_66
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_8e

    if-eqz v0, :cond_7b

    :try_start_6a
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_70
    .catchall {:try_start_6a .. :try_end_6f} :catchall_8e

    goto :goto_79

    :catch_70
    move-exception v0

    :try_start_71
    const-string v5, "DomainFilterDaemonConnector"

    const-string/jumbo v6, "listenToSocket() - Failed closing output stream. "

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_79
    iput-object v2, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_8e

    nop

    :try_start_7d
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_8c

    :catch_81
    move-exception v0

    move-object v2, v0

    const-string v2, "DomainFilterDaemonConnector"

    const-string/jumbo v4, "listenToSocket() - Failed closing socket."

    invoke-static {v2, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8d

    :goto_8c
    nop

    :goto_8d
    return-void

    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0

    :cond_91
    add-int/2addr v9, v0

    const/4 v0, 0x0

    move v10, v0

    move v0, v8

    :goto_95
    move v11, v0

    if-ge v11, v9, :cond_dd

    :try_start_98
    aget-byte v0, v7, v11

    if-nez v0, :cond_d9

    new-instance v0, Ljava/lang/String;

    sub-int v12, v11, v10

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v10, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a5} :catch_fb
    .catchall {:try_start_98 .. :try_end_a5} :catchall_f8

    move-object v12, v0

    :try_start_a6
    invoke-static {v12, v2}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    iget-object v13, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    iget-object v14, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_bd} :catch_be
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_bd} :catch_fb
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_f8

    goto :goto_d6

    :catch_be
    move-exception v0

    :try_start_bf
    const-string v2, "DomainFilterDaemonConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "listenToSocket() - Problem parsing message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    add-int/lit8 v0, v11, 0x1

    move v10, v0

    :cond_d9
    add-int/lit8 v0, v11, 0x1

    const/4 v2, 0x0

    goto :goto_95

    :cond_dd
    if-nez v10, :cond_e7

    const-string v0, "DomainFilterDaemonConnector"

    const-string/jumbo v2, "listenToSocket() - RCV incomplete"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e7
    if-eq v10, v9, :cond_f0

    rsub-int v0, v10, 0x1000

    invoke-static {v7, v10, v7, v8, v0}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_ee} :catch_fb
    .catchall {:try_start_bf .. :try_end_ee} :catchall_f8

    nop

    goto :goto_f1

    :cond_f0
    const/4 v0, 0x0

    :goto_f1
    nop

    const/4 v2, 0x0

    goto/16 :goto_32

    :catchall_f5
    move-exception v0

    :try_start_f6
    monitor-exit v6
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v0
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_f8} :catch_fb
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f8

    :catchall_f8
    move-exception v0

    move-object v2, v0

    goto :goto_114

    :catch_fb
    move-exception v0

    :try_start_fc
    const-string v2, "DomainFilterDaemonConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenToSocket() - Communications error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_114
    .catchall {:try_start_fc .. :try_end_114} :catchall_f8

    :goto_114
    iget-object v4, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_117
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_119
    .catchall {:try_start_117 .. :try_end_119} :catchall_140

    if-eqz v0, :cond_12d

    :try_start_11b
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_120} :catch_121
    .catchall {:try_start_11b .. :try_end_120} :catchall_140

    goto :goto_12a

    :catch_121
    move-exception v0

    :try_start_122
    const-string v5, "DomainFilterDaemonConnector"

    const-string/jumbo v6, "listenToSocket() - Failed closing output stream. "

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12a
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    :cond_12d
    monitor-exit v4
    :try_end_12e
    .catchall {:try_start_122 .. :try_end_12e} :catchall_140

    if-eqz v3, :cond_13f

    :try_start_130
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    goto :goto_13f

    :catch_134
    move-exception v0

    move-object v4, v0

    const-string v4, "DomainFilterDaemonConnector"

    const-string/jumbo v5, "listenToSocket() - Failed closing socket."

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    :cond_13f
    :goto_13f
    throw v2

    :catchall_140
    move-exception v0

    :try_start_141
    monitor-exit v4
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw v0
.end method

.method static makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_52

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_16

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x300

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3b

    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-nez v3, :cond_20

    const-string v3, "DomainFilterDaemonConnector"

    const-string/jumbo v4, "execute() - Missing Output stream - cannot write commands!"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_38

    goto :goto_35

    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_2c
    .catchall {:try_start_20 .. :try_end_2b} :catchall_38

    goto :goto_35

    :catch_2c
    move-exception v3

    :try_start_2d
    const-string v4, "DomainFilterDaemonConnector"

    const-string/jumbo v5, "execute() - Error writing outputstream."

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_38

    monitor-exit p0

    return-void

    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "DomainFilterDaemonConnector"

    const-string v3, "Unhandled event \'%s\'"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_24

    :cond_23
    goto :goto_41

    :catch_24
    move-exception v2

    const-string v3, "DomainFilterDaemonConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() - Error handling \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_41
    return v1
.end method

.method public run()V
    .registers 4

    const-string v0, "DomainFilterDaemonConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ").run()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    :goto_28
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->listenToSocket()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    :goto_2b
    goto :goto_28

    :catch_2c
    move-exception v0

    const-string v1, "DomainFilterDaemonConnector"

    const-string/jumbo v2, "run() - Error in NativeDaemonConnector: "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->mCallback:Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;

    invoke-interface {v1}, Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;->onDaemonDisconnected()V

    goto :goto_2b
.end method
