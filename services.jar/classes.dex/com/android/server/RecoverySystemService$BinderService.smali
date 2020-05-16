.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


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

.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_4f

    const-string/jumbo v2, "init.svc.uncrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "init.svc.setup-bcb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "init.svc.clear-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3a

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_3a

    :cond_38
    move v5, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v5, v6

    :goto_3b
    if-nez v5, :cond_3e

    return v6

    :cond_3e
    const-wide/16 v6, 0x3e8

    :try_start_40
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception v6

    const-string v7, "RecoverySystemService"

    const-string v8, "Interrupted:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4f
    return v0
.end method

.method private connectService()Landroid/net/LocalSocket;
    .registers 8

    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2c

    :try_start_b
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v4, "uncrypt"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_1a

    const/4 v1, 0x1

    goto :goto_2c

    :catch_1a
    move-exception v3

    const-wide/16 v4, 0x3e8

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v4

    const-string v5, "RecoverySystemService"

    const-string v6, "Interrupted:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2c
    :goto_2c
    if-nez v1, :cond_37

    const-string v2, "RecoverySystemService"

    const-string v3, "Timed out connecting to uncrypt socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_37
    return-object v0
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    const-string v2, "RecoverySystemService"

    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1c
    if-eqz p1, :cond_27

    const-string v3, "ctl.start"

    const-string/jumbo v4, "setup-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_27
    const-string v3, "ctl.start"

    const-string v4, "clear-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v3

    if-nez v3, :cond_3c

    const-string v2, "RecoverySystemService"

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3c
    const/4 v4, 0x0

    nop

    :try_start_3e
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v5

    if-eqz p1, :cond_65

    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v6, v5

    invoke-virtual {v2, v5, v1, v6}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :cond_65
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v6, 0x64

    if-ne v5, v6, :cond_a0

    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_83

    const-string/jumbo v8, "setup"

    goto :goto_85

    :cond_83
    const-string v8, "clear"

    :goto_85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " bcb successfully finished."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_94} :catch_c4
    .catchall {:try_start_3e .. :try_end_94} :catchall_c2

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    const/4 v1, 0x1

    return v1

    :cond_a0
    :try_start_a0
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt failed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b7} :catch_c4
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_c2

    nop

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :catchall_c2
    move-exception v1

    goto :goto_d7

    :catch_c4
    move-exception v5

    :try_start_c5
    const-string v6, "RecoverySystemService"

    const-string v7, "IOException when communicating with uncrypt:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_c2

    nop

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :goto_d7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 8

    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "RecoverySystemService"

    const-string v3, "!@[reset tracking] rebootRecoveryWithCommand write to recovery_cause"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_5c

    :try_start_24
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_4c
    .catchall {:try_start_24 .. :try_end_2b} :catchall_5c

    const/4 v3, 0x0

    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecoverySystemService rebootRecoveryWithCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_40} :catch_46
    .catchall {:try_start_2c .. :try_end_40} :catchall_44

    :try_start_40
    invoke-static {v3, v2}, Lcom/android/server/RecoverySystemService$BinderService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4c
    .catchall {:try_start_40 .. :try_end_43} :catchall_5c

    goto :goto_54

    :catchall_44
    move-exception v4

    goto :goto_48

    :catch_46
    move-exception v3

    :try_start_47
    throw v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_44

    :goto_48
    :try_start_48
    invoke-static {v3, v2}, Lcom/android/server/RecoverySystemService$BinderService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_5c

    :catch_4c
    move-exception v2

    :try_start_4d
    const-string v3, "RecoverySystemService"

    const-string v4, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4

    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 16

    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_22

    const-string v3, "RecoverySystemService"

    const-string/jumbo v4, "uncrypt service is unavailable."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_22
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_135

    :try_start_27
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_115
    .catchall {:try_start_27 .. :try_end_2e} :catchall_135

    :try_start_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_42} :catch_10f
    .catchall {:try_start_2e .. :try_end_42} :catchall_10d

    :try_start_42
    invoke-static {v3, v4}, Lcom/android/server/RecoverySystemService$BinderService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_115
    .catchall {:try_start_42 .. :try_end_45} :catchall_135

    nop

    :try_start_46
    const-string v4, "ctl.start"

    const-string/jumbo v5, "uncrypt"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v4

    if-nez v4, :cond_5d

    const-string v3, "RecoverySystemService"

    const-string v5, "Failed to connect to uncrypt socket"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_135

    return v2

    :cond_5d
    const/4 v5, 0x0

    nop

    :try_start_5f
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v6

    const/high16 v6, -0x80000000

    move v7, v6

    :goto_76
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    if-ne v8, v7, :cond_7f

    if-eq v7, v6, :cond_7f

    goto :goto_76

    :cond_7f
    move v7, v8

    if-ltz v8, :cond_c7

    const/16 v9, 0x64

    if-gt v8, v9, :cond_c7

    const-string v10, "RecoverySystemService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uncrypt read status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_9d} :catch_ef
    .catchall {:try_start_5f .. :try_end_9d} :catchall_ed

    if-eqz p2, :cond_ab

    :try_start_9f
    invoke-interface {p2, v8}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ef
    .catchall {:try_start_9f .. :try_end_a2} :catchall_ed

    goto :goto_ab

    :catch_a3
    move-exception v10

    :try_start_a4
    const-string v11, "RecoverySystemService"

    const-string v12, "RemoteException when posting progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    if-ne v8, v9, :cond_c6

    const-string v6, "RecoverySystemService"

    const-string/jumbo v9, "uncrypt successfully finished."

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b8} :catch_ef
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_ed

    nop

    :try_start_b9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    const/4 v2, 0x1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_135

    return v2

    :cond_c6
    goto :goto_76

    :cond_c7
    :try_start_c7
    const-string v6, "RecoverySystemService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_e1} :catch_ef
    .catchall {:try_start_c7 .. :try_end_e1} :catchall_ed

    nop

    :try_start_e2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_135

    return v2

    :catchall_ed
    move-exception v2

    goto :goto_103

    :catch_ef
    move-exception v6

    :try_start_f0
    const-string v7, "RecoverySystemService"

    const-string v8, "IOException when reading status: "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_ed

    nop

    :try_start_f8
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    return v2

    :goto_103
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_10d
    .catchall {:try_start_f8 .. :try_end_10d} :catchall_135

    :catchall_10d
    move-exception v5

    goto :goto_111

    :catch_10f
    move-exception v3

    :try_start_110
    throw v3
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10d

    :goto_111
    :try_start_111
    invoke-static {v3, v4}, Lcom/android/server/RecoverySystemService$BinderService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_115} :catch_115
    .catchall {:try_start_111 .. :try_end_115} :catchall_135

    :catch_115
    move-exception v3

    :try_start_116
    const-string v4, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when writing \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v2

    :catchall_135
    move-exception v1

    monitor-exit v0
    :try_end_137
    .catchall {:try_start_116 .. :try_end_137} :catchall_135

    throw v1
.end method
