.class public Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;
.super Ljava/lang/Object;
.source "DatabaseSizeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;
    }
.end annotation


# static fields
.field private static final DB_CLEAN_EVENT_COUNT:Ljava/lang/String; = "rev"

.field private static final DB_CLEAN_EVENT_EVENT_NAME:Ljava/lang/String; = "databaseCleaned"

.field public static final DB_CLEAN_EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final DB_CLEAN_EVENT_SCHEMA_VERSION:I = 0x1

.field private static final DB_CLEAN_EVENT_SIZE_PARAMETER:Ljava/lang/String; = "rsz"

.field private static final DB_MAX_MAX_SIZE_BYTES:I = 0x500000

.field private static final FACTOR_ALERT:D = 0.9

.field private static final FACTOR_CLEANUP:D = 0.85

.field private static final HT_NAME:Ljava/lang/String; = "KnoxAnalyticsDatabaseSizeObserver"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

.field private mDbAlertSizeInBytes:J

.field private mDbMaxSizeInBytes:J

.field private mDbTargetSizeInBytes:J

.field private mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasAlertedUploader:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "DatabaseSizeObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->calculateDbMaxDbSize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V

    return-void
.end method

.method private calculateDbMaxDbSize()V
    .registers 5

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    long-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    long-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateDbMaxDbSize(): dbMaxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , dbAlertSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDbTargetSizeInBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbTargetSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createDatabaseCleanEvent(JJ)V
    .registers 10

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string v1, "createDatabaseCleanEvent(lastDeletedSize=%d, lastDeletedEventsCount=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ANALYTICS"

    const-string v2, "databaseCleaned"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "rsz"

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string/jumbo v1, "rev"

    invoke-virtual {v0, v1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method private createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;)V
    .registers 6

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedSizeBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedEventsCount()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->createDatabaseCleanEvent(JJ)V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxAnalyticsDatabaseSizeObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stop()V
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_23
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
