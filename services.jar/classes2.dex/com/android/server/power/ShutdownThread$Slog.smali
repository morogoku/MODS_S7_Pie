.class Lcom/android/server/power/ShutdownThread$Slog;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Slog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static delayDumpRaunnable:Ljava/lang/Runnable;

.field private static delayLogLooper:Landroid/os/HandlerThread;

.field private static handler:Lcom/android/server/power/ShutdownThread$Slog;

.field private static handlerLock:Ljava/lang/Object;

.field private static lastLog:Ljava/lang/String;

.field private static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

.field private static queuePoint:I

.field private static queueState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$4302(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static cancelHandler()V
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    return-void
.end method

.method public static closeLogFileWriter()V
    .registers 3

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_2b

    const-string v0, "ShutdownDelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logFileWriter saveAndClose logFileWriter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ShutdownDelay"

    const-string v1, "logFileWriter saveAndClose"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->saveAndClose()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    :cond_2b
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method

.method static onview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4600()Lcom/android/server/power/ShutdownDialog;

    move-result-object v1

    if-eqz v1, :cond_84

    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4700()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_84

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v8

    const/16 v7, 0xb

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0xe

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object p0, v4, v5

    const/4 v5, 0x7

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$4600()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog;->appendTextLog(Ljava/lang/String;)V

    return v0

    :cond_84
    :goto_84
    return v0
.end method

.method public static openLogFileWriter()V
    .registers 4

    const-string/jumbo v0, "sys.shutdownprofiler"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDelay"

    const-string v2, "Shutdown logFileWriter start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v2, "/data/log/"

    const-string/jumbo v3, "shutdown_profile"

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/ShutdownThread$LogFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    :cond_1e
    return-void
.end method

.method private static setMessage(Ljava/lang/String;)V
    .registers 11

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v1, :cond_d9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_10

    goto/16 :goto_d9

    :cond_10
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/ShutdownThread$Slog;->removeMessages(I)V

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_db

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "ShutdownDelay"

    const-string v1, "duplicate log string."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@delay, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v0, "%02d-%02d %02d:%02d:%02d.%03d : "

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const/16 v8, 0xb

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v8, 0x3

    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/16 v8, 0xe

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_9d

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v5, "ShutdownThread"

    invoke-virtual {v0, v5, p0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_bb

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x21

    if-ne v0, v5, :cond_bb

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-ne v0, v5, :cond_bb

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_be

    :cond_bb
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_be
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    monitor-enter v2

    :try_start_c1
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v5, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    sget v0, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/2addr v0, v3

    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v0, v3

    sput v0, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    monitor-exit v2

    return-void

    :catchall_d6
    move-exception v0

    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_c1 .. :try_end_d8} :catchall_d6

    throw v0

    :cond_d9
    :goto_d9
    :try_start_d9
    monitor-exit v0

    return-void

    :catchall_db
    move-exception v1

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_db

    throw v1
.end method

.method public static startState()V
    .registers 4

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    if-nez v0, :cond_12

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ShutdownDelay"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_12
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v0, :cond_33

    const-string v0, "ShutdownDelay"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    goto :goto_3b

    :cond_33
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Slog$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "recovery"

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string/jumbo v0, "recovery-update"

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_6e

    :cond_63
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_78

    :cond_6e
    :goto_6e
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_78
    return-void
.end method

.method public static stopState()V
    .registers 3

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_25

    :cond_9
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "no more delay message"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->removeMessages(I)V

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->removeMessages(I)V

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    move v0, v1

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v0, :cond_9

    goto :goto_4e

    :cond_9
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_d
    :try_start_d
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_43

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v4, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_37

    const-string v2, "ShutdownDelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v6, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    sget v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/2addr v2, v3

    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v2, v3

    sput v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_4b

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1

    :cond_4e
    :goto_4e
    return-void
.end method
