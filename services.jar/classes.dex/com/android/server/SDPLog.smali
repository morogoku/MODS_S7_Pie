.class public Lcom/android/server/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SDPLog$CallerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = ",D,"

.field private static final DEBUG_ON:Z

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final INFO:Ljava/lang/String; = ",I,"

.field private static final MAX_Q_SIZE:I = 0x32

.field private static final PARAM:Ljava/lang/String; = ",P,"

.field private static final Q_LOCK:Ljava/lang/Object;

.field private static final SUFFIX:Ljava/lang/String; = ".SDPLog"

.field private static final TAG:Ljava/lang/String; = "SDPLog"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static final TOKEN:Ljava/lang/String; = ","

.field private static mSdpLogService:Landroid/os/ISdpLogService;

.field private static final sDelayedPayload:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SDPLog;->DEBUG_ON:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SDPLog;->Q_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/SDPLog;->makeSequence([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_10

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_10
    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_36

    aget-byte v4, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0123456789ABCDEF"

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v4, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " "

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_36
    :goto_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertTime(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyy-MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",D,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->enqPayload(Ljava/lang/String;)V

    if-nez p0, :cond_26

    const-string v1, "SDPLog.d"

    goto :goto_37

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SDPLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_37
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_30

    if-nez p1, :cond_9

    return-void

    :cond_9
    if-eqz p0, :cond_e

    invoke-static {p0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :cond_e
    const-string v0, "Leave a trace of the exception...!"

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2f

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2e
    goto :goto_30

    :catch_2f
    move-exception v0

    :cond_30
    :goto_30
    return-void
.end method

.method private static enqPayload(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_6
    sget-object v0, Lcom/android/server/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    invoke-interface {v0, p0}, Landroid/os/ISdpLogService;->enqPayload(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "SDPLog"

    const-string v2, "Failed to talk with sdp log service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/SDPLog;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i()V
    .registers 2

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/server/SDPLog$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/SDPLog$CallerInfo;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/SDPLog$CallerInfo;)V

    :cond_f
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/SDPLog$CallerInfo;

    invoke-direct {v1}, Lcom/android/server/SDPLog$CallerInfo;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/SDPLog$CallerInfo;)V

    :cond_f
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/server/SDPLog$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/SDPLog$CallerInfo;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/server/SDPLog;->i(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/SDPLog$CallerInfo;)V

    :cond_e
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/SDPLog$CallerInfo;)V
    .registers 6

    invoke-virtual {p2}, Lcom/android/server/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SDPLog;->enqPayload(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/SDPLog;->DEBUG_ON:Z

    if-eqz v1, :cond_28

    if-nez p0, :cond_10

    const-string v1, "SDPLog.i"

    goto :goto_21

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SDPLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-virtual {p2}, Lcom/android/server/SDPLog$CallerInfo;->getSequence()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-eqz p1, :cond_5e

    if-nez p0, :cond_2f

    const-string v1, "SDPLog.d"

    goto :goto_40

    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SDPLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/SDPLog$CallerInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/SDPLog;->enqPayload(Ljava/lang/String;)V

    :cond_5e
    return-void
.end method

.method private static isInitialized()Z
    .registers 3

    sget-object v0, Lcom/android/server/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    const-string/jumbo v0, "sdp_log"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpLogService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpLogService;

    move-result-object v0

    sput-object v0, Lcom/android/server/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    sget-object v0, Lcom/android/server/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcom/android/server/SDPLog;->onInitialized(Z)V

    :cond_1d
    sget-object v0, Lcom/android/server/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    if-eqz v0, :cond_23

    move v1, v2

    nop

    :cond_23
    return v1
.end method

.method private static varargs makeSequence([Ljava/lang/Object;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x1

    array-length v1, p0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, v3

    :goto_a
    const-string v4, ""

    array-length v5, p0

    move v6, v0

    move v0, v3

    :goto_f
    if-ge v0, v5, :cond_6c

    aget-object v7, p0, v0

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_69

    :cond_17
    if-nez v7, :cond_1d

    const-string/jumbo v8, "null"

    :goto_1c
    goto :goto_2d

    :cond_1d
    instance-of v8, v7, [B

    if-eqz v8, :cond_29

    move-object v8, v7

    check-cast v8, [B

    invoke-static {v8}, Lcom/android/server/SDPLog;->bytesToHex([B)Ljava/lang/String;

    move-result-object v8

    goto :goto_1c

    :cond_29
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2d
    if-eqz v6, :cond_4f

    if-nez v6, :cond_33

    move v9, v2

    goto :goto_34

    :cond_33
    move v9, v3

    :goto_34
    move v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_69

    :cond_4f
    if-nez v6, :cond_53

    move v9, v2

    goto :goto_54

    :cond_53
    move v9, v3

    :goto_54
    move v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_6c
    return-object v4
.end method

.method public static md(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/server/SDPLog;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_33

    :cond_a
    sget-object v0, Lcom/android/server/SDPLog;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/SDPLog;->overloadProtectionLocked()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v2, "SDPLog.md"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    :goto_33
    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_34

    throw v1
.end method

.method private static onInitialized(Z)V
    .registers 5

    if-eqz p0, :cond_41

    const-string v0, "SDPLog"

    const-string v1, "Service connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SDPLog;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    const-string v1, "SDPLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delayed payload count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    sget-object v1, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    sget-object v1, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/SDPLog;->enqPayload(Ljava/lang/String;)V

    goto :goto_28

    :cond_3c
    monitor-exit v0

    goto :goto_51

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    const-string v0, "SDPLog"

    const-string v1, "Failed to connect with the service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SDPLog;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4b
    sget-object v1, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    monitor-exit v0

    :goto_51
    return-void

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_52

    throw v1
.end method

.method private static overloadProtectionLocked()V
    .registers 2

    sget-object v0, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1a

    const-string v0, "SDPLog"

    const-string v1, "Q has been overloaded..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SDPLog;->sDelayedPayload:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1a
    return-void
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .registers 1

    return-void
.end method
