.class public Lcom/android/server/knox/ddar/DDLog$Logger;
.super Ljava/lang/Object;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# static fields
.field private static final ROTATE_SIZE:J = 0x400000L

.field public static final TAG:Ljava/lang/String; = "DualDAR:DDLog:Logger"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field private static mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;


# instance fields
.field private cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

.field private currentFile:Ljava/io/File;

.field private final currentFileName:Ljava/lang/String;

.field private fos:Ljava/io/OutputStreamWriter;

.field private logWorker:Ljava/lang/Thread;

.field private loggerRunning:Z

.field private mCtx:Landroid/content/Context;

.field private final storageDir:Ljava/io/File;

.field private storeQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->mCtx:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    const-string v1, "ddar_fw_log"

    iput-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    new-instance v0, Lcom/android/server/knox/ddar/DDLog$Logger$2;

    const-string v1, "Log Worker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/ddar/DDLog$Logger$2;-><init>(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->logWorker:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->mCtx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->enqueLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/DDLog$Logger;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/knox/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/knox/ddar/DDLog$Logger;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/DDLog$Logger;->realStore(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupBackupFiles()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    new-instance v1, Lcom/android/server/knox/ddar/DDLog$Logger$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDLog$Logger$1;-><init>(Lcom/android/server/knox/ddar/DDLog$Logger;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_39

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v2, "DualDAR:DDLog:Logger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "is removed as next backup log file is ready"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_39
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$Logger;
    .registers 3

    const-class v0, Lcom/android/server/knox/ddar/DDLog$Logger;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    if-nez v1, :cond_13

    new-instance v1, Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDLog$Logger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/DDLog$Logger;->start()V

    :cond_13
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static enqueLog(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/knox/ddar/DDLog$Logger;->getInstance()Lcom/android/server/knox/ddar/DDLog$Logger;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {v0, p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->log(Ljava/lang/String;)V

    return-void
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

.method public static declared-synchronized getInstance()Lcom/android/server/knox/ddar/DDLog$Logger;
    .registers 2

    const-class v0, Lcom/android/server/knox/ddar/DDLog$Logger;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/ddar/DDLog$Logger;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private internalClose()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_2d

    :catch_13
    move-exception v0

    const-string v1, "DualDAR:DDLog:Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while closing stream! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method private moveCurrentToBackup()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ddar_fw_log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "DualDAR:DDLog:Logger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rename Log File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method private openCurrentFile()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    const-string v2, "ddar_fw_log.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_39

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_39
    const-string v0, "DualDAR:DDLog:Logger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened Existing or New Log file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->beforeWrite(J)V

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private declared-synchronized realStore(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->openCurrentFile()V

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current file set in realStore!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/DDLog$CountingOutputStream;->getByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_4e

    const-string v0, "DualDAR:DDLog:Logger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is larger than "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes. Rotating file."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->roll()Z

    :cond_4e
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_56
    .catchall {:try_start_1 .. :try_end_53} :catchall_54

    goto :goto_70

    :catchall_54
    move-exception p1

    goto :goto_72

    :catch_56
    move-exception v0

    :try_start_57
    const-string v1, "DualDAR:DDLog:Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while writing to stream! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_54

    :goto_70
    monitor-exit p0

    return-void

    :goto_72
    monitor-exit p0

    throw p1
.end method

.method private roll()Z
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->internalClose()V

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->cleanupBackupFiles()V

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->moveCurrentToBackup()V

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->openCurrentFile()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getCurrentTime()Ljava/lang/String;
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public log(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_3d

    :catch_23
    move-exception v0

    const-string v1, "DualDAR:DDLog:Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while adding to store queue! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method

.method public start()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->logWorker:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->logWorker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "DDAR Logging Started [DeviceVersion : %s]\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->getDeviceVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$Logger;->enqueLog(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/DDLog$Logger;->loggerRunning:Z

    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDLog$Logger;->internalClose()V

    return-void
.end method
