.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
.super Ljava/lang/Object;
.source "EdgeLightingHistory.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_DEV_DEBUG:Z

.field private static final MAX_EDGE_LIGHTING_HISTORY:I = 0xa

.field private static final MAX_EVENT_HISTORY:I = 0x14

.field private static final MAX_HOST_HISTORY:I = 0x14

.field private static final MAX_LISTENER_HISTORY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "EdgeLightingHistory"

.field private static mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;


# instance fields
.field private mEdgeLightingHistory:[Ljava/lang/String;

.field private mEdgeLightingHistoryIdx:I

.field private mEventHistory:[Ljava/lang/String;

.field private mEventHistoryIdx:I

.field private mHostHistory:[Ljava/lang/String;

.field private mHostHistoryIdx:I

.field private mListenerHistory:[Ljava/lang/String;

.field private mListenerHistoryIdx:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    sput-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    .registers 2

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    goto :goto_11

    :cond_a
    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    invoke-direct {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;-><init>()V

    sput-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :goto_11
    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v3, v6

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x6

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "-EdgeLightingHistory"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "  [Host History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_35

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_35
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    array-length v3, v3

    move v1, v3

    const-string v3, "  [Listener History] :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_44
    if-ge v3, v1, :cond_67

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_67
    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v3, :cond_6f

    sget-boolean v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v3, :cond_ce

    :cond_6f
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v3, v3

    move v1, v3

    const-string v3, "  [EL History] :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_7e
    if-ge v3, v1, :cond_a1

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_9e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_a1
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    array-length v3, v3

    move v1, v3

    const-string v3, "  [Event History] :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_ab
    if-ge v2, v1, :cond_ce

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_cb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cb
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_ce
    monitor-exit v0

    return-void

    :catchall_d0
    move-exception v1

    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_3 .. :try_end_d2} :catchall_d0

    throw v1
.end method

.method updateEdgeLightingHistory(Ljava/lang/String;)V
    .registers 8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "EdgeLightingHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEdgeLightingHistory log = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2b
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ltz v3, :cond_40

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ge v3, v2, :cond_40

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    aput-object v0, v3, v4

    :cond_40
    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-lt v3, v2, :cond_47

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    :cond_47
    monitor-exit v1

    return-void

    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_49

    throw v2
.end method

.method updateEventHistory(Ljava/lang/String;)V
    .registers 8

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "EdgeLightingHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEventHistory log = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2b
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-ltz v3, :cond_40

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-ge v3, v2, :cond_40

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    aput-object v0, v3, v4

    :cond_40
    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-lt v3, v2, :cond_47

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    :cond_47
    monitor-exit v1

    return-void

    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2b .. :try_end_4b} :catchall_49

    throw v2
.end method

.method updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_17
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-ltz v3, :cond_30

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-ge v3, v2, :cond_30

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_30
    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-lt v3, v2, :cond_37

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    :cond_37
    monitor-exit v1

    return-void

    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_17
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    array-length v2, v2

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-ltz v3, :cond_30

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-ge v3, v2, :cond_30

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_30
    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-lt v3, v2, :cond_37

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    :cond_37
    monitor-exit v1

    return-void

    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_39

    throw v2
.end method
