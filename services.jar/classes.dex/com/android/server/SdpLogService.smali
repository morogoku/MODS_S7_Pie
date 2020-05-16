.class public Lcom/android/server/SdpLogService;
.super Landroid/os/ISdpLogService$Stub;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpLogService$SdpLogHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:J = 0x2L

.field private static final DELAY:I = 0xbb8

.field private static final FILE_EOL:B = 0xat

.field private static final FILE_OFFSET:J = 0x0L

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field private static final MAX_FILE_LENGTH:J = 0x300000L

.field private static final MAX_HEADER_LENGTH:J = 0x11L

.field private static final MAX_Q_SIZE:I = 0x12c

.field private static final MSG_SAVE_TO_FILE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x0

.field private static final Q_LOCK:Ljava/lang/Object;

.field private static final SERVICE_NAME:Ljava/lang/String; = "SdpLogService"

.field private static final TAG:Ljava/lang/String; = "SdpLogService"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static final sLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private mIsReady:Z

.field private mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ISdpLogService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/SdpLogService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpLogService;->mIsReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SdpLogService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->markTheBeginning()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SdpLogService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->saveToFile()V

    return-void
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/SdpLogService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "SdpLogService"

    invoke-static {v2, v3, v4, v5, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_5a

    if-nez v2, :cond_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :cond_1c
    :try_start_1c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Exception Occurred while pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] with uid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] trying to access methodName ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SdpLogService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5a
    .catchall {:try_start_1c .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private convertTime(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SdpLogService.d"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SdpLogService.e"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enqPayloadLocked(Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/SdpLogService;->overloadProtection()V

    sget-object v1, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    iget v3, v1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private getCurrentTime()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpLogService;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDeviceVersion()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    return-object v1
.end method

.method private markTheBeginning()V
    .registers 5

    const-string v0, "System Ready!"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    const-string v0, "%s,D,Mark the beginning of SDP log service! [Version : %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/server/SdpLogService;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    return-void
.end method

.method private overloadProtection()V
    .registers 3

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_18

    const-string v0, "Overload Observed..."

    invoke-static {v0}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_18
    return-void
.end method

.method private saveToFile()V
    .registers 21

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    move v9, v0

    :try_start_a
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "/data/log/sdp_log"

    const-string/jumbo v12, "rwd"

    invoke-direct {v10, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_14} :catch_1f1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_1e4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_1d7

    const-wide/32 v13, 0x300000

    move-object v15, v1

    const-wide/16 v0, 0x0

    const-wide/16 v11, 0x11

    if-eqz v8, :cond_c6

    :try_start_1e
    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v17

    move-wide/from16 v2, v17

    cmp-long v17, v2, v0

    const-wide/16 v0, 0x2

    if-nez v17, :cond_32

    const-string v17, "File from scratch"

    move-object/from16 v15, v17

    goto :goto_66

    :cond_32
    cmp-long v17, v2, v11

    if-gtz v17, :cond_3b

    const-string v17, "File is too small"

    move-object/from16 v15, v17

    goto :goto_66

    :cond_3b
    cmp-long v17, v2, v13

    if-lez v17, :cond_44

    const-string v17, "File length exceeded limitation"

    move-object/from16 v15, v17

    goto :goto_66

    :cond_44
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v17

    move-wide/from16 v4, v17

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v17

    move-wide/from16 v6, v17

    cmp-long v17, v4, v11

    if-ltz v17, :cond_62

    cmp-long v17, v4, v13

    if-lez v17, :cond_59

    goto :goto_62

    :cond_59
    cmp-long v17, v6, v0

    if-eqz v17, :cond_66

    const-string v17, "File version mismatched"

    move-object/from16 v15, v17

    goto :goto_66

    :cond_62
    :goto_62
    const-string v17, "File header broken"

    move-object/from16 v15, v17

    :cond_66
    :goto_66
    if-eqz v15, :cond_6b

    const/16 v16, 0x1

    goto :goto_6d

    :cond_6b
    const/16 v16, 0x0

    :goto_6d
    move/from16 v9, v16

    if-eqz v16, :cond_c6

    const-wide/16 v13, 0x0

    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    move-wide v4, v0

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    move-wide v6, v0

    cmp-long v0, v4, v11

    if-ltz v0, :cond_b4

    const-wide/32 v0, 0x300000

    cmp-long v13, v4, v0

    if-lez v13, :cond_9f

    goto :goto_b4

    :cond_9f
    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->write(I)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_c6

    :cond_b4
    :goto_b4
    const/4 v8, 0x0

    const-string/jumbo v0, "saveToFile() - Couldn\'t restore the file"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_bb} :catch_c1
    .catchall {:try_start_1e .. :try_end_bb} :catchall_bc

    goto :goto_c6

    :catchall_bc
    move-exception v0

    move-object v1, v0

    const/4 v11, 0x0

    goto/16 :goto_1b4

    :catch_c1
    move-exception v0

    move-object v11, v0

    move-object v1, v15

    goto/16 :goto_1b0

    :cond_c6
    :goto_c6
    move-object v1, v15

    if-eqz v8, :cond_169

    :try_start_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveToFile() - FP : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", Version : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v13, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v13
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_ec} :catch_166
    .catchall {:try_start_c9 .. :try_end_ec} :catchall_161

    :try_start_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "saveToFile() - QS : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->size()I

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    :goto_107
    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_145

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11a

    goto :goto_107

    :cond_11a
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v15, v14

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v17

    int-to-long v11, v15

    add-long v17, v17, v11

    const-wide/16 v11, 0x1

    add-long v17, v17, v11

    const-wide/32 v11, 0x300000

    cmp-long v16, v17, v11

    if-lez v16, :cond_137

    const-wide/16 v11, 0x11

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_139

    :cond_137
    const-wide/16 v11, 0x11

    :goto_139
    invoke-virtual {v10, v14}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->write(I)V

    nop

    const-wide/16 v11, 0x11

    goto :goto_107

    :cond_145
    monitor-exit v13
    :try_end_146
    .catchall {:try_start_ec .. :try_end_146} :catchall_15e

    :try_start_146
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    move-wide v4, v11

    const-wide/32 v11, 0x300000

    cmp-long v0, v4, v11

    if-lez v0, :cond_155

    const/4 v0, 0x0

    move v8, v0

    goto :goto_169

    :cond_155
    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_15d} :catch_166
    .catchall {:try_start_146 .. :try_end_15d} :catchall_161

    goto :goto_169

    :catchall_15e
    move-exception v0

    :try_start_15f
    monitor-exit v13
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    :try_start_160
    throw v0

    :catchall_161
    move-exception v0

    move-object v15, v1

    const/4 v11, 0x0

    :goto_164
    move-object v1, v0

    goto :goto_1b4

    :catch_166
    move-exception v0

    move-object v11, v0

    goto :goto_1b0

    :cond_169
    :goto_169
    if-eqz v8, :cond_1cd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveToFile() - FP : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", FL : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    if-eqz v9, :cond_1cd

    const-string v0, "/data/log/sdp_log"

    const/16 v11, 0x1a0

    const/16 v12, 0x3e8

    const/16 v13, 0x3ef

    invoke-static {v0, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "saveToFile() - Set permission : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    :try_end_1af
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_1af} :catch_166
    .catchall {:try_start_160 .. :try_end_1af} :catchall_161

    goto :goto_1cd

    :goto_1b0
    :try_start_1b0
    throw v11
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1b1

    :catchall_1b1
    move-exception v0

    move-object v15, v1

    goto :goto_164

    :goto_1b4
    if-eqz v11, :cond_1c9

    :try_start_1b6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1b9} :catch_1c3
    .catch Ljava/io/FileNotFoundException; {:try_start_1b6 .. :try_end_1b9} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1bd
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1b9} :catch_1ba

    goto :goto_1cc

    :catch_1ba
    move-exception v0

    move-object v1, v15

    goto :goto_1d9

    :catch_1bd
    move-exception v0

    move-object v1, v15

    goto :goto_1e6

    :catch_1c0
    move-exception v0

    move-object v1, v15

    goto :goto_1f3

    :catch_1c3
    move-exception v0

    move-object v12, v0

    :try_start_1c5
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1cc

    :cond_1c9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    :goto_1cc
    throw v1
    :try_end_1cd
    .catch Ljava/io/FileNotFoundException; {:try_start_1c5 .. :try_end_1cd} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1cd} :catch_1bd
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1cd} :catch_1ba

    :cond_1cd
    :goto_1cd
    :try_start_1cd
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d0
    .catch Ljava/io/FileNotFoundException; {:try_start_1cd .. :try_end_1d0} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d0} :catch_1d1

    goto :goto_1fd

    :catch_1d1
    move-exception v0

    goto :goto_1d9

    :catch_1d3
    move-exception v0

    goto :goto_1e6

    :catch_1d5
    move-exception v0

    goto :goto_1f3

    :catch_1d7
    move-exception v0

    move-object v15, v1

    :goto_1d9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v10, "saveToFile() - Unexpected error occurred..."

    invoke-static {v10}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_1fe

    :catch_1e4
    move-exception v0

    move-object v15, v1

    :goto_1e6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v10, "saveToFile() - Couldn\'t modify file..."

    invoke-static {v10}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_1fd

    :catch_1f1
    move-exception v0

    move-object v15, v1

    :goto_1f3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo v10, "saveToFile() - Couldn\'t open file"

    invoke-static {v10}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1fd
    nop

    :goto_1fe
    if-eqz v8, :cond_207

    const-string/jumbo v0, "saveToFile() - Done Successfully!!!"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    goto :goto_20d

    :cond_207
    const-string/jumbo v0, "saveToFile() - Failed..."

    invoke-static {v0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    :goto_20d
    return-void
.end method


# virtual methods
.method public enqPayload(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "enqPayload"

    invoke-direct {p0, v0}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/SdpLogService;->mIsReady:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public systemReady()V
    .registers 4

    const-string/jumbo v0, "systemReady"

    invoke-direct {p0, v0}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "SdpLogService"

    const-string v1, "SdpLogService ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdpLogService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SdpLogService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/SdpLogService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/SdpLogService$SdpLogHandler;

    iget-object v1, p0, Lcom/android/server/SdpLogService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpLogService$SdpLogHandler;-><init>(Lcom/android/server/SdpLogService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const-string v0, "SdpLogService"

    const-string v1, "Spawned sdp log thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SdpLogService"

    const-string/jumbo v1, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SdpLogService;->mIsReady:Z

    const-string v1, "SdpLogService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
