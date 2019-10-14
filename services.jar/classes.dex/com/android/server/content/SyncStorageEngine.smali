.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$MyHandler;,
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_FEED:I = 0x5

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_OTHER:I = 0x0

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mGrantSyncAdaptersAccountAccess:Z

.field private final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field private volatile mIsClockValid:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "sync"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "accounts.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-accounts"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "status.bin"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-status"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "stats.bin"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-stats"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v3

    if-eqz v3, :cond_10d

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Loaded "

    aput-object v6, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, " items"

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    move v4, v0

    :goto_f9
    if-ge v4, v3, :cond_10d

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f9

    :cond_10d
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .registers 1

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncStorageEngine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncStorageEngine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 6

    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_19
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 7

    if-gez p2, :cond_b

    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    const/4 p3, 0x1

    :cond_b
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_39

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_39
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10

    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_39

    if-eqz p2, :cond_38

    const-string v4, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": unknown account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v2

    :cond_39
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v4, :cond_6b

    if-eqz p2, :cond_6a

    const-string v5, "SyncManager"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    const-string v3, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": unknown provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-object v2

    :cond_6b
    return-object v4
.end method

.method private getCurrentDayLocked()I
    .registers 6

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    :cond_3c
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v2, v3}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-nez v2, :cond_1f

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v0, :cond_37

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-object v0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    if-nez v0, :cond_15

    new-instance v1, Landroid/content/SyncStatusInfo;

    invoke-direct {v1, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 11

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_f
    if-ge v0, v2, :cond_52

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_28

    goto :goto_4f

    :cond_28
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v7, :cond_30

    goto :goto_4f

    :cond_30
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v7, v8, v6, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v8, "cleanup"

    invoke-direct {p0, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_46

    goto :goto_4f

    :cond_46
    const/4 v8, -0x1

    invoke-direct {p0, v7, v8, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    const/4 v4, 0x1

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v3}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    const/4 v4, 0x1

    goto :goto_56

    :cond_73
    return v4
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 4

    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v5

    const/4 v7, 0x0

    :try_start_a
    const-string/jumbo v0, "id"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_15} :catch_17

    move v6, v0

    :goto_16
    goto :goto_2b

    :catch_17
    move-exception v0

    const-string v8, "SyncManager"

    const-string/jumbo v9, "the id of the authority is null"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :catch_21
    move-exception v0

    const-string v8, "SyncManager"

    const-string/jumbo v9, "error parsing the id of the authority"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :goto_2b
    if-ltz v6, :cond_1b8

    const-string v0, "authority"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "enabled"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "syncable"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "account"

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "type"

    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-interface {v2, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "package"

    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "class"

    invoke-interface {v2, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v12, :cond_66

    const/4 v15, 0x0

    goto :goto_6a

    :cond_66
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_6a
    if-nez v11, :cond_74

    if-nez v13, :cond_74

    const-string v11, "com.google"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_74
    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    const-string v4, "SyncManagerFile"

    const/4 v14, 0x2

    invoke-static {v4, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d4

    const-string v4, "SyncManagerFile"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding authority: account="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accountType="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " auth="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncable="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    const/4 v14, 0x1

    if-nez v0, :cond_150

    const-string v2, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string v2, "SyncManagerFile"

    const-string v4, "Creating authority entry"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    if-eqz v10, :cond_150

    if-eqz v8, :cond_150

    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4, v8, v15}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-virtual {v3, v8, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_113

    const/4 v4, 0x0

    invoke-direct {v1, v2, v6, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-lez p2, :cond_10f

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_10f
    move-object v4, v0

    const/16 v16, 0x0

    goto :goto_153

    :cond_113
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v17, "35028827"

    const/16 v16, 0x0

    aput-object v17, v4, v16

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "account:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " provider:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " user:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    aput-object v1, v4, v14

    const v1, 0x534e4554

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_152

    :cond_150
    const/16 v16, 0x0

    :goto_152
    move-object v4, v0

    :goto_153
    if-eqz v4, :cond_18a

    if-eqz v9, :cond_161

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15e

    goto :goto_161

    :cond_15e
    move/from16 v0, v16

    goto :goto_162

    :cond_161
    :goto_161
    const/4 v0, 0x1

    :goto_162
    iput-boolean v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v5, :cond_168

    const/4 v0, -0x1

    goto :goto_16c

    :cond_168
    :try_start_168
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_16c
    iput v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_16e
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_16e} :catch_16f

    :goto_16e
    goto :goto_1b8

    :catch_16f
    move-exception v0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    const/4 v1, -0x1

    iput v1, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_16e

    :cond_17d
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_185

    const/4 v1, 0x1

    goto :goto_187

    :cond_185
    move/from16 v1, v16

    :goto_187
    iput v1, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_16e

    :cond_18a
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure adding authority: account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b8
    :goto_1b8
    return-object v4
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 10

    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value1"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value2"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1d
    const-string/jumbo v4, "long"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a3

    :cond_2f
    const-string/jumbo v4, "integer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a3

    :cond_40
    const-string/jumbo v4, "double"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_a3

    :cond_51
    const-string/jumbo v4, "float"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_a3

    :cond_62
    const-string v4, "boolean"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_a3

    :cond_72
    const-string/jumbo v4, "string"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    :cond_7f
    const-string v4, "account"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_8f} :catch_9a
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_8f} :catch_90

    goto :goto_a3

    :catch_90
    move-exception v4

    const-string v5, "SyncManager"

    const-string/jumbo v6, "error parsing bundle value"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a4

    :catch_9a
    move-exception v4

    const-string v5, "SyncManager"

    const-string/jumbo v6, "error parsing bundle value"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a3
    :goto_a3
    nop

    :goto_a4
    return-void
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9

    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_e} :catch_10

    move v3, v4

    :goto_f
    goto :goto_24

    :catch_10
    move-exception v4

    const-string v5, "SyncManager"

    const-string/jumbo v6, "the user in listen-for-tickles is null"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_1a
    move-exception v4

    const-string v5, "SyncManager"

    const-string/jumbo v6, "error parsing the user for listen-for-tickles"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :goto_24
    const-string/jumbo v4, "enabled"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    goto :goto_36

    :cond_35
    :goto_35
    const/4 v2, 0x1

    :goto_36
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "period"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "flex"

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :try_start_19
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1d} :catch_92
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_1d} :catch_87

    move-wide v13, v4

    nop

    nop

    :try_start_20
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_24} :catch_27

    :goto_24
    nop

    :goto_25
    move-wide v15, v3

    goto :goto_71

    :catch_27
    move-exception v0

    move-object v3, v0

    invoke-static {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v3

    const-string v5, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " flex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catch_4c
    move-exception v0

    move-object v3, v0

    invoke-static {v13, v14}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v3

    const-string v5, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", using default: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :goto_71
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v3, v0

    move-wide v7, v13

    move-wide v9, v15

    invoke-direct/range {v3 .. v10}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catch_87
    move-exception v0

    move-object v4, v0

    const-string v4, "SyncManager"

    const-string/jumbo v5, "the period of a periodic sync is null"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :catch_92
    move-exception v0

    move-object v4, v0

    const-string v4, "SyncManager"

    const-string/jumbo v5, "error parsing the period of a periodic sync"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private readAccountInfoLocked()V
    .registers 21

    move-object/from16 v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_5
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v4, v0

    const-string v0, "SyncManagerFile"

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_43
    move v7, v0

    const/4 v8, 0x1

    if-eq v7, v5, :cond_4e

    if-eq v7, v8, :cond_4e

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_43

    :cond_4e
    if-ne v7, v8, :cond_69

    const-string v0, "SyncManager"

    const-string v3, "No initial accounts"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_57} :catch_1da
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_57} :catch_1b5
    .catchall {:try_start_5 .. :try_end_57} :catchall_1b1

    add-int/lit8 v0, v2, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v4, :cond_68

    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    move-exception v0

    :cond_68
    :goto_68
    return-void

    :cond_69
    :try_start_69
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    const-string v0, "accounts"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string/jumbo v0, "listen-for-tickles"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const-string/jumbo v0, "version"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_85} :catch_1da
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_85} :catch_1b5
    .catchall {:try_start_69 .. :try_end_85} :catchall_1b1

    move-object v11, v0

    const/4 v12, 0x0

    if-nez v11, :cond_8b

    move v0, v12

    goto :goto_8f

    :cond_8b
    :try_start_8b
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8f} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_1da
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_1b5
    .catchall {:try_start_8b .. :try_end_8f} :catchall_1b1

    :goto_8f
    goto :goto_94

    :catch_90
    move-exception v0

    move-object v13, v0

    nop

    move v0, v12

    :goto_94
    move v13, v0

    const/4 v14, 0x3

    if-ge v13, v14, :cond_9a

    :try_start_98
    iput-boolean v8, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    :cond_9a
    const-string/jumbo v0, "nextAuthorityId"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_a1} :catch_1da
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a1} :catch_1b5
    .catchall {:try_start_98 .. :try_end_a1} :catchall_1b1

    move-object v15, v0

    if-nez v15, :cond_a6

    move v0, v12

    goto :goto_aa

    :cond_a6
    :try_start_a6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_aa
    iget v8, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_b2} :catch_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a6 .. :try_end_b2} :catch_1da
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b2} :catch_1b5
    .catchall {:try_start_a6 .. :try_end_b2} :catchall_1b1

    goto :goto_b4

    :catch_b3
    move-exception v0

    :goto_b4
    :try_start_b4
    const-string/jumbo v0, "offsetInSeconds"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b4 .. :try_end_bb} :catch_1da
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bb} :catch_1b5
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_1b1

    move-object v3, v0

    if-nez v3, :cond_c0

    move v0, v12

    goto :goto_c4

    :cond_c0
    :try_start_c0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_c4
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_c6} :catch_c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_c6} :catch_1da
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c6} :catch_1b5
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_1b1

    goto :goto_ca

    :catch_c7
    move-exception v0

    :try_start_c8
    iput v12, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    :goto_ca
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    if-nez v0, :cond_e3

    new-instance v0, Ljava/util/Random;

    move-object/from16 v17, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v0, v14, v15}, Ljava/util/Random;-><init>(J)V

    const v8, 0x15180

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    goto :goto_e5

    :cond_e3
    move-object/from16 v17, v15

    :goto_e5
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    if-eqz v10, :cond_f2

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f0

    goto :goto_f2

    :cond_f0
    move v8, v12

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 v8, 0x1

    :goto_f3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v15, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    :goto_107
    if-ne v0, v5, :cond_18a

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ne v15, v5, :cond_158

    const-string v15, "authority"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_149

    invoke-direct {v1, v6, v13, v14}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v15

    move-object v7, v15

    const/4 v8, 0x0

    if-eqz v7, :cond_12c

    iget v15, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v15, v2, :cond_18a

    iget v15, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move v2, v15

    goto :goto_18a

    :cond_12c
    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/Object;

    const-string v15, "26513719"

    aput-object v15, v5, v12

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v5, v16

    const-string v15, "Malformed authority"

    const/16 v18, 0x2

    aput-object v15, v5, v18

    const v15, 0x534e4554

    invoke-static {v15, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_18c

    :cond_149
    move/from16 v18, v5

    const-string/jumbo v5, "listenForTickles"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18c

    invoke-direct {v1, v6}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_18c

    :cond_158
    move/from16 v18, v5

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v15, 0x3

    if-ne v5, v15, :cond_172

    const-string/jumbo v5, "periodicSync"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    if-eqz v7, :cond_18d

    invoke-direct {v1, v6, v7}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v5

    move-object v8, v5

    goto :goto_18d

    :cond_172
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v12, 0x4

    if-ne v5, v12, :cond_18d

    if-eqz v8, :cond_18d

    const-string/jumbo v5, "extra"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    iget-object v5, v8, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v6, v5}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto :goto_18d

    :cond_18a
    :goto_18a
    move/from16 v18, v5

    :cond_18c
    :goto_18c
    const/4 v15, 0x3

    :cond_18d
    :goto_18d
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_191
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c8 .. :try_end_191} :catch_1da
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_191} :catch_1b5
    .catchall {:try_start_c8 .. :try_end_191} :catchall_1b1

    move v0, v5

    const/4 v5, 0x1

    if-ne v0, v5, :cond_196

    goto :goto_19b

    :cond_196
    move/from16 v5, v18

    const/4 v12, 0x0

    goto/16 :goto_107

    :cond_19b
    :goto_19b
    add-int/lit8 v0, v2, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v4, :cond_1ad

    :try_start_1a7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1aa} :catch_1ab

    :goto_1aa
    goto :goto_1ad

    :catch_1ab
    move-exception v0

    goto :goto_1aa

    :cond_1ad
    :goto_1ad
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    return-void

    :catchall_1b1
    move-exception v0

    move v3, v2

    move-object v2, v0

    goto :goto_1f5

    :catch_1b5
    move-exception v0

    move-object v3, v0

    if-nez v4, :cond_1c1

    :try_start_1b9
    const-string v0, "SyncManager"

    const-string v5, "No initial accounts"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c8

    :cond_1c1
    const-string v0, "SyncManager"

    const-string v5, "Error reading accounts"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c8
    .catchall {:try_start_1b9 .. :try_end_1c8} :catchall_1b1

    :goto_1c8
    add-int/lit8 v0, v2, 0x1

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v4, :cond_1d9

    :try_start_1d4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_1d8

    goto :goto_1d9

    :catch_1d8
    move-exception v0

    :cond_1d9
    :goto_1d9
    return-void

    :catch_1da
    move-exception v0

    move-object v3, v0

    :try_start_1dc
    const-string v0, "SyncManager"

    const-string v5, "Error reading accounts"

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e3
    .catchall {:try_start_1dc .. :try_end_1e3} :catchall_1b1

    add-int/lit8 v0, v2, 0x1

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v4, :cond_1f4

    :try_start_1ef
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f2} :catch_1f3

    goto :goto_1f4

    :catch_1f3
    move-exception v0

    :cond_1f4
    :goto_1f4
    return-void

    :goto_1f5
    add-int/lit8 v0, v3, 0x1

    iget v5, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    if-eqz v4, :cond_206

    :try_start_201
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_204} :catch_205

    goto :goto_206

    :catch_205
    move-exception v0

    :cond_206
    :goto_206
    throw v2
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .registers 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "syncmanager.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x1

    :try_start_19
    invoke-static {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_1d} :catch_1f

    move-object v5, v0

    goto :goto_20

    :catch_1f
    move-exception v0

    :goto_20
    if-eqz v5, :cond_2ad

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v7, 0xb

    const/4 v15, 0x0

    if-lt v0, v7, :cond_2d

    move v0, v6

    goto :goto_2e

    :cond_2d
    move v0, v15

    :goto_2e
    const-string v7, "SyncManagerFile"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3e

    const-string v7, "SyncManagerFile"

    const-string v8, "Reading legacy sync accounts db"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v14, v7

    const-string/jumbo v7, "stats, status"

    invoke-virtual {v14, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v13, v7

    const-string v7, "_id"

    const-string/jumbo v8, "status._id as _id"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "account"

    const-string/jumbo v8, "stats.account as account"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6a

    const-string v7, "account_type"

    const-string/jumbo v8, "stats.account_type as account_type"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    const-string v7, "authority"

    const-string/jumbo v8, "stats.authority as authority"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "totalElapsedTime"

    const-string/jumbo v8, "totalElapsedTime"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "numSyncs"

    const-string/jumbo v8, "numSyncs"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "numSourceLocal"

    const-string/jumbo v8, "numSourceLocal"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "numSourcePoll"

    const-string/jumbo v8, "numSourcePoll"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "numSourceServer"

    const-string/jumbo v8, "numSourceServer"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "numSourceUser"

    const-string/jumbo v8, "numSourceUser"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "lastSuccessSource"

    const-string/jumbo v8, "lastSuccessSource"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "lastSuccessTime"

    const-string/jumbo v8, "lastSuccessTime"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "lastFailureSource"

    const-string/jumbo v8, "lastFailureSource"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "lastFailureTime"

    const-string/jumbo v8, "lastFailureTime"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "lastFailureMesg"

    const-string/jumbo v8, "lastFailureMesg"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "pending"

    const-string/jumbo v8, "pending"

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string/jumbo v7, "stats._id = status.stats_id"

    invoke-virtual {v14, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v14

    move-object v8, v5

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_fd
    move-object v14, v7

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v13, -0x1

    if-eqz v7, :cond_1fa

    const-string v7, "account"

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_11c

    const-string v8, "account_type"

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_11d

    :cond_11c
    move-object v8, v4

    :goto_11d
    if-nez v8, :cond_121

    const-string v8, "com.google"

    :cond_121
    const-string v9, "authority"

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11, v9, v15}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {v1, v10, v13, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-eqz v10, :cond_1f4

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    move v13, v11

    move-object v11, v4

    :goto_144
    if-lez v13, :cond_15c

    add-int/lit8 v13, v13, -0x1

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/content/SyncStatusInfo;

    iget v4, v11, Landroid/content/SyncStatusInfo;->authorityId:I

    iget v6, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v4, v6, :cond_159

    const/4 v12, 0x1

    goto :goto_15c

    :cond_159
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_144

    :cond_15c
    :goto_15c
    if-nez v12, :cond_16d

    new-instance v4, Landroid/content/SyncStatusInfo;

    iget v6, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {v4, v6}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v11, v4

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16d
    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "totalElapsedTime"

    move-object/from16 v19, v7

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSyncs"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourceLocal"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourcePoll"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourceServer"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    const-string/jumbo v6, "numSourceUser"

    invoke-static {v14, v6}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iget-object v4, v11, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iput v15, v4, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const-string/jumbo v4, "lastSuccessSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    const-string/jumbo v4, "lastSuccessTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v11, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-string/jumbo v4, "lastFailureSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    iput v4, v11, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    const-string/jumbo v4, "lastFailureTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v11, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-string/jumbo v4, "lastFailureMesg"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    const-string/jumbo v4, "pending"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1f1

    const/4 v4, 0x1

    goto :goto_1f2

    :cond_1f1
    move v4, v15

    :goto_1f2
    iput-boolean v4, v11, Landroid/content/SyncStatusInfo;->pending:Z

    :cond_1f4
    nop

    move-object v7, v14

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_fd

    :cond_1fa
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo v6, "settings"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object v7, v4

    move-object v8, v5

    move v15, v13

    move-object v13, v6

    move-object v6, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_21a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_29f

    const-string/jumbo v7, "name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_239

    goto :goto_21a

    :cond_239
    const-string/jumbo v9, "listen_for_tickles"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_253

    if-eqz v8, :cond_24d

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24b

    goto :goto_24d

    :cond_24b
    const/4 v9, 0x0

    goto :goto_24e

    :cond_24d
    :goto_24d
    const/4 v9, 0x1

    :goto_24e
    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v10, v15}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIII)V

    goto :goto_29c

    :cond_253
    const/4 v10, 0x0

    const-string/jumbo v9, "sync_provider_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29c

    const-string/jumbo v9, "sync_provider_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    :goto_272
    if-lez v11, :cond_29c

    add-int/lit8 v11, v11, -0x1

    iget-object v12, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v13, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29a

    if-eqz v8, :cond_293

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_291

    goto :goto_293

    :cond_291
    move v13, v10

    goto :goto_294

    :cond_293
    :goto_293
    const/4 v13, 0x1

    :goto_294
    iput-boolean v13, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    const/4 v13, 0x1

    iput v13, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_29b

    :cond_29a
    const/4 v13, 0x1

    :goto_29b
    goto :goto_272

    :cond_29c
    :goto_29c
    const/4 v13, 0x1

    goto/16 :goto_21a

    :cond_29f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2ad
    return-void
.end method

.method private readStatisticsLocked()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    :goto_13
    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v4, v3

    if-eqz v3, :cond_6f

    const/16 v3, 0x65

    const/16 v5, 0x64

    if-eq v4, v3, :cond_3b

    if-ne v4, v5, :cond_24

    goto :goto_3b

    :cond_24
    const-string v3, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown stats token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_3b
    :goto_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v4, v5, :cond_45

    add-int/lit16 v5, v3, -0x7d9

    add-int/lit16 v3, v5, 0x37a5

    :cond_45
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v5, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v6, v6

    if-ge v2, v6, :cond_6d

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v5, v6, v2
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6b} :catch_70

    add-int/lit8 v2, v2, 0x1

    :cond_6d
    move v3, v2

    goto :goto_13

    :cond_6f
    :goto_6f
    goto :goto_78

    :catch_70
    move-exception v0

    const-string v1, "SyncManager"

    const-string v2, "No initial statistics"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_78
    return-void
.end method

.method private readStatusLocked()V
    .registers 10

    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "SyncManagerFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_37
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v5, v3

    if-eqz v3, :cond_92

    const/16 v3, 0x64

    if-ne v5, v3, :cond_7b

    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_7a

    iput-boolean v4, v3, Landroid/content/SyncStatusInfo;->pending:Z

    const-string v6, "SyncManagerFile"

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_73

    const-string v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding status for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7a
    goto :goto_37

    :cond_7b
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_91} :catch_93

    nop

    :cond_92
    goto :goto_9b

    :catch_93
    move-exception v0

    const-string v1, "SyncManager"

    const-string v2, "No initial status"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9b
    return-void
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz v0, :cond_30

    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    :cond_24
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_30

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    :cond_30
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p3, p5, p6}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;I)V

    goto :goto_1a

    :cond_17
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1a
    return-void
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;I)V
    .registers 8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;I)V

    goto :goto_33

    :cond_14
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    :goto_33
    return-void
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    if-eqz p1, :cond_2a

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v3, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v3, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v3, :cond_2a

    goto :goto_b

    :cond_2a
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz p3, :cond_4d

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto :goto_34

    :cond_4d
    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v5, p4

    if-nez v5, :cond_59

    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v5, p6

    if-eqz v5, :cond_5e

    :cond_59
    iput-wide p4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide p6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const/4 v0, 0x1

    :cond_5e
    goto :goto_34

    :cond_5f
    goto :goto_b

    :cond_60
    return v0
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;II)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set syncable "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v4, " value="

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const-string v4, " callingUid="

    const/4 v6, 0x4

    aput-object v4, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_2c
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    if-ge p2, v1, :cond_33

    const/4 p2, -0x1

    :cond_33
    const-string v1, "SyncManager"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setIsSyncable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget v1, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v1, p2, :cond_88

    const-string v1, "SyncManager"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_86

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSyncable: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    monitor-exit v0

    return-void

    :cond_88
    iput p2, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_2c .. :try_end_8e} :catchall_9e

    move-object v0, v4

    if-ne p2, v2, :cond_9a

    const/4 v1, -0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;I)V

    :cond_9a
    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void

    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method private writeAccountInfoLocked()V
    .registers 11

    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "SyncManagerFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x0

    move-object v1, v0

    :try_start_27
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "accounts"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "version"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "nextAuthorityId"

    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "offsetInSeconds"

    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_7a
    if-ge v5, v3, :cond_b1

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    const-string/jumbo v8, "listenForTickles"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "user"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "enabled"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "listenForTickles"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    :cond_b1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    nop

    :goto_b8
    if-ge v4, v5, :cond_11b

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string v8, "authority"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "id"

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "user"

    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "enabled"

    iget-boolean v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "account"

    iget-object v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "type"

    iget-object v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "authority"

    iget-object v9, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "syncable"

    iget v9, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "authority"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b8

    :cond_11b
    const-string v4, "accounts"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_128} :catch_129

    goto :goto_138

    :catch_129
    move-exception v0

    const-string v2, "SyncManager"

    const-string v3, "Error writing accounts"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_138

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_138
    :goto_138
    return-void
.end method

.method private writeStatisticsLocked()V
    .registers 9

    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    const/4 v0, 0x0

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3b
    if-ge v4, v2, :cond_65

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v5, v5, v4

    if-nez v5, :cond_44

    goto :goto_65

    :cond_44
    const/16 v6, 0x65

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_65
    :goto_65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_77} :catch_78

    goto :goto_87

    :catch_78
    move-exception v1

    const-string v2, "SyncManager"

    const-string v3, "Error writing stats"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_87

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_87
    :goto_87
    return-void
.end method

.method private writeStatusLocked()V
    .registers 8

    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "SyncManagerFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    const/4 v0, 0x0

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3f
    if-ge v4, v2, :cond_54

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v1, v3}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_66} :catch_67

    goto :goto_76

    :catch_67
    move-exception v1

    const-string v2, "SyncManager"

    const-string v3, "Error writing status"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_76

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_76
    :goto_76
    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 12

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    new-instance v9, Landroid/content/SyncInfo;

    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v7, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    move-object v3, v9

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6c

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    return-object v3

    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public clearAllBackoffsLocked()V
    .registers 13

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3e

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_92

    :cond_3e
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8d

    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const/4 v0, 0x1

    :cond_92
    goto :goto_24

    :cond_93
    goto/16 :goto_e

    :cond_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_4 .. :try_end_96} :catchall_9d

    if-eqz v0, :cond_9c

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    :cond_9c
    return-void

    :catchall_9d
    move-exception v2

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v2
.end method

.method public clearAndReadState()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    monitor-exit v0

    return-void

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v5, p2, :cond_7d

    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    :cond_7a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_7d
    goto :goto_22

    :cond_7e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_e7

    :goto_84
    if-lez v2, :cond_de

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v6, :cond_9d

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v6, v7}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    :cond_9d
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    :cond_a8
    :goto_a8
    if-lez v6, :cond_c0

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-ne v7, v4, :cond_a8

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a8

    :cond_c0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    :cond_c7
    :goto_c7
    if-lez v6, :cond_dd

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v7, v4, :cond_c7

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c7

    :cond_dd
    goto :goto_84

    :cond_de
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    :cond_e7
    monitor-exit v0

    return-void

    :catchall_e9
    move-exception v1

    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_3 .. :try_end_eb} :catchall_e9

    throw v1
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAuthorityCount()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1e
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncInfo;

    if-nez p2, :cond_29

    iget v5, v4, Landroid/content/SyncInfo;->authorityId:I

    iget-object v6, v4, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v7, v4, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v5, v6, v7, v8}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v5

    goto :goto_2e

    :cond_29
    new-instance v5, Landroid/content/SyncInfo;

    invoke-direct {v5, v4}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    :goto_2e
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_32
    monitor-exit v0

    return-object v2

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 6

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 6

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_10

    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    :cond_10
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide v2

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 9

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    if-eqz p1, :cond_1c

    :try_start_6
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v3, "get authority syncable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    if-nez v2, :cond_16

    monitor-exit v0

    return v1

    :cond_16
    iget v1, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    :catchall_1a
    move-exception v1

    goto :goto_43

    :cond_1c
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_22
    if-lez v2, :cond_41

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_40

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget v1, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    :cond_40
    goto :goto_22

    :cond_41
    monitor-exit v0

    return v1

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_1a

    throw v1
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " auto - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    if-nez v1, :cond_34

    const/4 v2, 0x0

    goto :goto_38

    :cond_34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_38
    monitor-exit v0

    return v2

    :cond_3a
    if-nez v1, :cond_3f

    iget-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_43

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_43
    monitor-exit v0

    return v2

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 9

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_3c

    :cond_a
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_37

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-eqz v5, :cond_34

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_34

    monitor-exit v0

    return-object v4

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_37
    monitor-exit v0

    return-object v1

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw v1

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 11

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1f

    :try_start_7
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string/jumbo v4, "getSyncAutomatically"

    invoke-direct {p0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_1b

    move v1, v2

    nop

    :cond_1b
    monitor-exit v0

    return v1

    :catchall_1d
    move-exception v1

    goto :goto_47

    :cond_1f
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_25
    if-lez v3, :cond_45

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_44

    monitor-exit v0

    return v2

    :cond_44
    goto :goto_25

    :cond_45
    monitor-exit v0

    return v1

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_1d

    throw v1
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1f

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    monitor-exit v0

    return-object v2

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSyncRandomOffset()I
    .registers 2

    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 12

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "insertStartSyncEvent"

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_32

    const-wide/16 v2, -0x1

    monitor-exit v0

    return-wide v2

    :cond_32
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    const/4 v5, 0x0

    if-gez v4, :cond_50

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    :cond_50
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    iput v5, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_69
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_81

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_69

    :cond_81
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v4, v4

    const-string v6, "SyncManager"

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string v2, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_3 .. :try_end_a4} :catchall_ab

    move-wide v0, v4

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-wide v0

    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public isClockValid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return v0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_2c
    goto :goto_d

    :cond_2d
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_35

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v5, :cond_22

    goto :goto_32

    :cond_22
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_32

    :cond_2b
    iget-boolean v6, v4, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v6, :cond_32

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_35
    monitor-exit v0

    return v2

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    iput-boolean p2, v2, Landroid/content/SyncStatusInfo;->pending:Z

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public queueBackup()V
    .registers 2

    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_43

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    return-void

    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public reportActiveChange()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void
.end method

.method reportChange(I)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_a
    if-lez v2, :cond_32

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_1e

    goto :goto_a

    :cond_1e
    if-nez v0, :cond_26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    :cond_26
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_32
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_77

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_66
    if-lez v1, :cond_76

    add-int/lit8 v1, v1, -0x1

    :try_start_6a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ISyncStatusObserver;

    invoke-interface {v2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_73} :catch_74

    goto :goto_75

    :catch_74
    move-exception v2

    :goto_75
    goto :goto_66

    :cond_76
    return-void

    :catchall_77
    move-exception v2

    :try_start_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v2
.end method

.method public resetTodayStats(Z)V
    .registers 7

    if-eqz p1, :cond_9

    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method restoreAllPeriodicSyncs()Z
    .registers 13

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    nop

    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    goto :goto_20

    :cond_3a
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_42
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> nextSyncTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v15

    :try_start_3b
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v7, 0x1

    if-eqz v0, :cond_61

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_45

    goto :goto_61

    :cond_45
    const/4 v0, -0x1

    invoke-direct {v9, v10, v0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_5a

    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_5a

    const/4 v1, 0x0

    move v0, v7

    move v7, v1

    goto :goto_70

    :cond_5a
    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    nop

    move v0, v7

    goto :goto_70

    :cond_61
    :goto_61
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v1, v9

    move-wide v5, v11

    move v0, v7

    move-wide v7, v13

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v1

    move v7, v1

    :goto_70
    move v1, v7

    monitor-exit v15
    :try_end_72
    .catchall {:try_start_3b .. :try_end_72} :catchall_78

    if-eqz v1, :cond_77

    invoke-virtual {v9, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    :cond_77
    return-void

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v15
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public setClockValid()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    const-string v0, "SyncManager"

    const-string v1, "Clock is valid now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 9

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDelayUntil: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> delayUntil "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_2d
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_39

    monitor-exit v0

    return-void

    :cond_39
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_40

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void

    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;II)V
    .registers 7

    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4, p5}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;II)V

    return-void
.end method

.method public setMasterSyncAutomatically(ZIII)V
    .registers 18

    move-object v8, p0

    move v9, p2

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set master enabled="

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v1, v10

    const-string v2, " user="

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3b
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_51

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    monitor-exit v1

    return-void

    :cond_51
    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {v8}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3b .. :try_end_5e} :catchall_7d

    if-eqz p1, :cond_6f

    const/4 v2, 0x0

    const/4 v4, -0x7

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    move v3, v9

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    :cond_6f
    invoke-virtual {v8, v10}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v8}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    return-void

    :catchall_7d
    move-exception v0

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    :cond_6
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    :cond_6
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .registers 3

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_6

    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    :cond_6
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZII)V
    .registers 21

    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically:  provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Set sync auto account="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v13, 0x1

    aput-object v9, v2, v13

    const-string v3, " user="

    aput-object v3, v2, v1

    const/4 v3, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, " authority="

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v11, v2, v3

    const/4 v3, 0x6

    const-string v5, " value="

    aput-object v5, v2, v3

    const/4 v3, 0x7

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, " callingUid="

    aput-object v5, v2, v3

    const/16 v3, 0x9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v2, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_79
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, v9, v11, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v3, -0x1

    invoke-direct {v8, v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v4, v12, :cond_ad

    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ab

    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    monitor-exit v2

    return-void

    :cond_ad
    if-eqz v12, :cond_b5

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v1, :cond_b5

    iput v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    :cond_b5
    iput-boolean v12, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-direct {v8}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_79 .. :try_end_bb} :catchall_d3

    if-eqz v12, :cond_cc

    const/4 v4, -0x6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v5, v11

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;I)V

    :cond_cc
    invoke-virtual {v8, v13}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    invoke-virtual {v8}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    return-void

    :catchall_d3
    move-exception v0

    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 34

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_b
    const-string v0, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v0, 0x0

    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_32
    if-lez v9, :cond_49

    add-int/lit8 v9, v9, -0x1

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object v0, v10

    iget v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_47

    goto :goto_49

    :cond_47
    const/4 v0, 0x0

    goto :goto_32

    :cond_49
    :goto_49
    if-nez v0, :cond_64

    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopSyncEvent: no history for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return-void

    :cond_64
    iput-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    const/4 v10, 0x1

    iput v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    iput-object v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-wide/from16 v11, p6

    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J
    :try_end_6f
    .catchall {:try_start_b .. :try_end_6f} :catchall_27a

    move-wide/from16 v13, p8

    :try_start_71
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    iget v15, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-direct {v1, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v15, v8, v10}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v2, v4

    iput-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    move/from16 v17, v9

    iget-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v8, v4

    iput-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v2, :pswitch_data_282

    goto :goto_109

    :pswitch_a9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_109

    :pswitch_b9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    goto :goto_109

    :pswitch_c9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    goto :goto_109

    :pswitch_d9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    goto :goto_109

    :pswitch_e9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    goto :goto_109

    :pswitch_f9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    nop

    :goto_109
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v3

    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-nez v8, :cond_120

    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v9, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v9, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    goto :goto_143

    :cond_120
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v3, v8, :cond_147

    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v10, v10

    move/from16 v18, v2

    const/4 v2, 0x1

    sub-int/2addr v10, v2

    const/4 v11, 0x0

    invoke-static {v8, v11, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v8, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v8, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v9, 0x0

    aput-object v8, v2, v9

    const/4 v2, 0x1

    :goto_143
    move/from16 v18, v2

    const/4 v8, 0x0

    goto :goto_14e

    :cond_147
    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    :goto_14e
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v2, v2, v8

    iget-wide v8, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v8, v4

    const/4 v10, 0x0

    const-string/jumbo v11, "success"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-wide/16 v19, 0x0

    if-eqz v11, :cond_17f

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v11, v11, v19

    if-eqz v11, :cond_16d

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v19

    if-eqz v11, :cond_16e

    :cond_16d
    const/4 v10, 0x1

    :cond_16e
    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v11, v8, v9}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    iget v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v11, v4

    iput-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_1c4

    :cond_17f
    const-string v11, "canceled"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b1

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v19

    if-nez v11, :cond_18e

    const/4 v10, 0x1

    :cond_18e
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iget-object v11, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v11, v8, v9, v6}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    iget v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v11, v4

    iput-wide v11, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_1c4

    :cond_1b1
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    iget-object v11, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const/4 v10, 0x1

    :goto_1c4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Source="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move/from16 v22, v3

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v2, v2, v3

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Elapsed="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    const-string v2, " Reason="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    invoke-static {v2, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v2, :cond_228

    const-string v2, " Exemption="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    packed-switch v2, :pswitch_data_292

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    goto :goto_225

    :pswitch_217
    const-string/jumbo v2, "top"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_228

    :pswitch_21e
    const-string/jumbo v2, "fg"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_228

    :goto_225
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_228
    :goto_228
    const-string v2, " Extras="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v2, v11}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    if-eqz v10, :cond_23f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_256

    :cond_23f
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_256

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v12, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v12, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_256
    :goto_256
    if-eqz v18, :cond_25c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_273

    :cond_25c
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_273

    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_273
    :goto_273
    monitor-exit v7
    :try_end_274
    .catchall {:try_start_71 .. :try_end_274} :catchall_27f

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void

    :catchall_27a
    move-exception v0

    move-wide/from16 v13, p8

    :goto_27d
    :try_start_27d
    monitor-exit v7
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27f

    throw v0

    :catchall_27f
    move-exception v0

    goto :goto_27d

    nop

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_e9
        :pswitch_d9
        :pswitch_c9
        :pswitch_b9
        :pswitch_a9
    .end packed-switch

    :pswitch_data_292
    .packed-switch 0x1
        :pswitch_21e
        :pswitch_217
    .end packed-switch
.end method

.method public writeAllState()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
