.class public Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;
.super Landroid/content/ContentProvider;
.source "KnoxAnalyticsContentProvider.java"


# static fields
.field private static final CLEANED_EVENTS_PATH_ID:I = 0x5

.field private static final DATABASE_SIZE_PATH_ID:I = 0x2

.field private static final DB_EMPTY_SIZE_BYTES:I = 0x4001

.field private static final EVENTS_PATH_ID:I = 0x1

.field private static final EVENT_SIZE_MINIMUM_GUESS_BYTES:J = 0x12cL

.field private static final FEATURES_BLACKLIST_PATH_ID:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final VERSIONING_PATH_ID:I = 0x4

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private volatile mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.knox.analytics.provider"

    const-string v2, "events"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.knox.analytics.provider"

    const-string/jumbo v2, "size"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.knox.analytics.provider"

    const-string v2, "features_blacklist"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.knox.analytics.provider"

    const-string/jumbo v2, "version"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.knox.analytics.provider"

    const-string v2, "cleaned_events"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static calculateChunkSize(JJJ)J
    .registers 12

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateChunkSize(currentDatabaseSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", targetSizeInBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v0, p0, p2

    const-wide/16 v2, 0x1000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2e

    const-wide/16 v2, 0x1

    return-wide v2

    :cond_2e
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p4

    div-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3b

    const-wide/16 v2, 0x1

    :cond_3b
    return-wide v2
.end method

.method private static calculateEventSizeGuess(JJ)J
    .registers 11

    const-wide/16 v0, 0x4001

    sub-long v0, p0, v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_e

    div-long v2, v0, p2

    :cond_e
    const-wide/16 v4, 0x12c

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    const-wide/16 v2, 0x12c

    :cond_16
    sget-object v4, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateEventSizeGuess(): mEventSizeGuessInBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method private deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J
    .registers 13

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_98

    array-length v2, p2

    if-nez v2, :cond_10

    goto/16 :goto_98

    :cond_10
    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromEvents(): empty selectionArgs[0]"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_21
    :try_start_21
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2b} :catch_7e

    nop

    nop

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x2e2e60e6

    if-eq v7, v8, :cond_59

    const v8, -0x2a299844

    if-eq v7, v8, :cond_50

    const v2, -0x10cc55d

    if-eq v7, v2, :cond_46

    goto :goto_63

    :cond_46
    const-string v2, "deleteUntilTargetDbSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x2

    goto :goto_64

    :cond_50
    const-string v7, "deleteUpToId"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    goto :goto_64

    :cond_59
    const-string v2, "deleteChunkBySize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    goto :goto_64

    :cond_63
    :goto_63
    move v2, v6

    :goto_64
    packed-switch v2, :pswitch_data_a0

    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v6, "deleteFromEvents(): invalid selection"

    invoke-static {v2, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :pswitch_6f
    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUntilTargetDbSize(J)J

    move-result-wide v0

    return-wide v0

    :pswitch_74
    invoke-virtual {v5, v3, v4, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JI)J

    move-result-wide v0

    return-wide v0

    :pswitch_79
    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteUpTo(J)J

    move-result-wide v0

    return-wide v0

    :catch_7e
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteFromEvents(): invalid number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_98
    :goto_98
    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromEvents(): no selectionArgs"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_79
        :pswitch_74
        :pswitch_6f
    .end packed-switch
.end method

.method private deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromFeaturesBlacklist("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFeatureBlacklist([Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 10

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "deleteFromVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_50

    array-length v2, p2

    if-nez v2, :cond_f

    goto :goto_50

    :cond_f
    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromEvents(): empty selectionArgs[0]"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_20
    :try_start_20
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_36

    move-wide v0, v3

    nop

    nop

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteFromVersion(J)J

    move-result-wide v3

    return-wide v3

    :catch_36
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteFromEvents(): invalid number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_50
    :goto_50
    sget-object v2, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "deleteFromEvents(): no selectionArgs"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    if-nez v0, :cond_1b

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-object v0, v1

    if-nez v0, :cond_16

    new-instance v1, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method private static getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "getFinalChunkSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "chunk_size"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method private insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoCleanedEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addCleanedEvent(Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_17

    const/4 v3, 0x0

    return-object v3

    :cond_17
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addEvent(Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    return-object v3

    :cond_10
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addFeatureBlacklist(Landroid/content/ContentValues;)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_18

    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    :cond_18
    return-object v3
.end method

.method private insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insertIntoVersion()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->addVersioningBlob(Landroid/content/ContentValues;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_18

    const/4 v3, 0x0

    return-object v3

    :cond_18
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    if-eqz p1, :cond_3e

    array-length v1, p1

    if-lez v1, :cond_3e

    const/4 v1, 0x0

    aget-object v2, p1, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x5a7510f

    if-eq v4, v5, :cond_25

    const v5, 0x1e424ddf

    if-eq v4, v5, :cond_1c

    goto :goto_2f

    :cond_1c
    const-string v4, "lastEventId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_30

    :cond_25
    const-string v1, "count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    :goto_2f
    move v1, v3

    :goto_30
    packed-switch v1, :pswitch_data_48

    goto :goto_3e

    :pswitch_34
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCount()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_39
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getLastId()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :cond_3e
    :goto_3e
    nop

    invoke-static {p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_39
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50df9672

    if-eq v0, v1, :cond_1a

    const v1, 0x181ec758

    if-eq v0, v1, :cond_f

    goto :goto_24

    :cond_f
    const-string/jumbo v0, "notifyVersioningCompleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_1a
    const-string v0, "databaseClean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, -0x1

    :goto_25
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4e

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call(): invalid method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_40
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->notifyVersioningCompleted()V

    return-object v1

    :pswitch_48
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_40
    .end packed-switch
.end method

.method callDatabaseClean(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    const-string/jumbo v0, "targetDbSize"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean(): wrong extras!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_12
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v0

    const-string/jumbo v2, "targetDbSize"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->cleanEventsTable(J)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "deletedEventsCount"

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "deletedSizeBytes"

    sub-long v8, v0, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v6
.end method

.method public cleanEventsTable(J)J
    .registers 26

    move-wide/from16 v6, p1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getEventCountValue()J

    move-result-wide v11

    invoke-static {v9, v10, v6, v7}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->calculateEventSizeGuess(JJ)J

    move-result-wide v13

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanEventsTable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cleanDatabase(): initialSize=%d, initialCount=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v15, 0x1

    aput-object v4, v3, v15

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    const-wide/16 v2, 0x0

    move-wide/from16 v21, v0

    move-wide v0, v2

    move-wide/from16 v2, v21

    :goto_4f
    move v4, v5

    cmp-long v5, v2, v6

    if-lez v5, :cond_c1

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v16, v9

    move-wide v9, v0

    move-wide v0, v2

    move-wide/from16 v18, v11

    move-wide v11, v2

    move-wide v2, v6

    move/from16 v20, v4

    move-wide v4, v13

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->calculateChunkSize(JJJ)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1, v15}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->deleteEventChunk(JI)J

    move-result-wide v2

    sget-object v4, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IT"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v20

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " curS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " tlDel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " nxtCh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_b0

    sget-object v4, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v5, "cleanDatabase(): error deleting or db is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    :cond_b0
    add-long v4, v9, v2

    invoke-virtual {v8}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeInBytes()J

    move-result-wide v2

    nop

    move-wide v0, v4

    move v5, v15

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    move-wide/from16 v6, p1

    const/4 v15, 0x1

    goto :goto_4f

    :cond_c1
    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    move-wide v9, v0

    move-wide v11, v2

    move v15, v4

    :goto_c8
    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanDatabase(): deletedEvents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " iteration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v9
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "delete()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_62

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "delete(): no match for URI"

    invoke-static {v1, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_28
    invoke-direct {p0, p2, p3, v2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v0, v1

    goto :goto_40

    :pswitch_2e
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromVersion(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v0, v1

    goto :goto_40

    :pswitch_34
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromFeaturesBlacklist(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v0, v1

    goto :goto_40

    :cond_3a
    invoke-direct {p0, p2, p3, v2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->deleteFromEvents(Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v0, v1

    nop

    :goto_40
    if-lez v0, :cond_60

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, -0x1

    :try_start_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_60

    :catchall_5b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_60
    :goto_60
    return v0

    nop

    :pswitch_data_62
    .packed-switch 0x3
        :pswitch_34
        :pswitch_2e
        :pswitch_28
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "getType()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "insert()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4d

    packed-switch v1, :pswitch_data_9a

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "delete(): no match for URI"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoCleanedEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5d

    :pswitch_2d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoVersion(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5d

    :pswitch_3d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoFeaturesBlacklist(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5d

    :cond_4d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->insertIntoEvents(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    nop

    :goto_5d
    if-eqz v0, :cond_99

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert(): notifyChange("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    :try_start_80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_90
    .catchall {:try_start_80 .. :try_end_90} :catchall_94

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_99

    :catchall_94
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_99
    :goto_99
    return-object v0

    :pswitch_data_9a
    .packed-switch 0x3
        :pswitch_3d
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->mDatabaseCryptoAdapter:Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "query()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getDatabaseCryptoAdapter()Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_74

    sget-object v1, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "query(): no match for URI"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :pswitch_1f
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    invoke-static {p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getFinalChunkSize(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getCleanedEventsCursor(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_33
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getVersioningBlob()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_43
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getFeatureBlacklistCursor()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_53
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforceInternalOnly(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseCryptoAdapter;->getDatabaseSizeCursor()Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_63
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->enforcePackageNameForContentProvider(Ljava/lang/String;I)V

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->queryEvents([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_63
        :pswitch_53
        :pswitch_43
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/KnoxAnalyticsContentProvider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
