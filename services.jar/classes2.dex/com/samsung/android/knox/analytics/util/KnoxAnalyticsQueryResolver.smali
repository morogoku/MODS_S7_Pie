.class public Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;
.super Ljava/lang/Object;
.source "KnoxAnalyticsQueryResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


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

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(Landroid/content/Context;JLjava/lang/String;I)J
    .registers 15

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getUriFromType(I)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_2e

    sget-object v5, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v6, "addEvent(): null ret uri"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_2e
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3c

    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v7, "addEvent(): null ret uri"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_3c
    nop

    :try_start_3d
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_41} :catch_43

    move-wide v3, v6

    goto :goto_5e

    :catch_43
    move-exception v6

    sget-object v7, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEvent(): error parsing return id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEvent(): actualId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method public static addVersioningBlob(Landroid/content/Context;ILjava/lang/String;J)J
    .registers 13

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "addVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "eventId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_39

    sget-object v5, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v6, "addVersioningBlob(): null ret uri"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    :cond_39
    nop

    :try_start_3a
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3e} :catch_40

    move-wide v3, v5

    goto :goto_48

    :catch_40
    move-exception v5

    sget-object v6, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v7, "addVersioningBlob(): error parsing return id"

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-wide v3
.end method

.method public static callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;
    .registers 8

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callDatabaseClean()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "targetDbSize"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "databaseClean"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v3

    return-object v3
.end method

.method public static callNotifyVersioningCompleted(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "callNotifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notifyVersioningCompleted"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getDatabaseSize(Landroid/content/Context;)J
    .registers 8

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getDatabaseSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseSize;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_12} :catch_4d

    if-eqz v1, :cond_37

    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_37

    :cond_1b
    const-wide/16 v3, -0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2b} :catch_35
    .catchall {:try_start_14 .. :try_end_2b} :catchall_33

    move-wide v3, v5

    :cond_2c
    nop

    if-eqz v1, :cond_32

    :try_start_2f
    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_32} :catch_4d

    :cond_32
    return-wide v3

    :catchall_33
    move-exception v3

    goto :goto_47

    :catch_35
    move-exception v2

    goto :goto_46

    :cond_37
    :goto_37
    :try_start_37
    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getDatabaseSize(): empty cursor"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3e} :catch_35
    .catchall {:try_start_37 .. :try_end_3e} :catchall_33

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_45

    :try_start_42
    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_45
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_45} :catch_4d

    :cond_45
    return-wide v3

    :goto_46
    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_33

    :goto_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-static {v2, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4c
    throw v3
    :try_end_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatabaseSize(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getEventCount(Landroid/content/Context;)J
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getEventCount()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "count"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_50

    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getEventCount(): empty cursor"

    invoke-static {v2, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_25} :catch_47
    .catchall {:try_start_18 .. :try_end_25} :catchall_45

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_2c

    :try_start_29
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2c} :catch_50

    :cond_2c
    return-wide v4

    :cond_2d
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    :try_start_30
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_3e

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3d} :catch_47
    .catchall {:try_start_30 .. :try_end_3d} :catchall_45

    move-wide v4, v6

    :cond_3e
    nop

    if-eqz v1, :cond_44

    :try_start_41
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_44} :catch_50

    :cond_44
    return-wide v4

    :catchall_45
    move-exception v2

    goto :goto_4a

    :catch_47
    move-exception v2

    move-object v3, v2

    :try_start_49
    throw v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_45

    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4f
    throw v2
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEventCount(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getFeaturesBlacklist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_79

    :try_start_12
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_29

    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getFeaturesBlacklist(): empty cursor"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_23} :catch_6d
    .catchall {:try_start_12 .. :try_end_23} :catchall_6a

    if-eqz v2, :cond_28

    :try_start_25
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_28} :catch_79

    :cond_28
    return-object v3

    :cond_29
    :try_start_29
    const-string v3, "feature"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "disable_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_41
    new-instance v6, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    move-object v8, v1

    goto :goto_57

    :cond_4f
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_57
    invoke-direct {v6, v7, v8}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_61} :catch_6d
    .catchall {:try_start_29 .. :try_end_61} :catchall_6a

    if-nez v6, :cond_41

    nop

    if-eqz v2, :cond_69

    :try_start_66
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_69} :catch_79

    :cond_69
    return-object v5

    :catchall_6a
    move-exception v3

    move-object v4, v1

    goto :goto_73

    :catch_6d
    move-exception v3

    :try_start_6e
    throw v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_73
    if-eqz v2, :cond_78

    :try_start_75
    invoke-static {v4, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_78
    throw v3
    :try_end_79
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_79} :catch_79

    :catch_79
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLastEventId(Landroid/content/Context;)J
    .registers 9

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getLastEventId()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_b
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "lastEventId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_54

    if-eqz v1, :cond_3e

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_3e

    :cond_21
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_32

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_31} :catch_3b
    .catchall {:try_start_1a .. :try_end_31} :catchall_39

    move-wide v4, v6

    :cond_32
    nop

    if-eqz v1, :cond_38

    :try_start_35
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_38} :catch_54

    :cond_38
    return-wide v4

    :catchall_39
    move-exception v2

    goto :goto_4e

    :catch_3b
    move-exception v2

    move-object v3, v2

    goto :goto_4d

    :cond_3e
    :goto_3e
    :try_start_3e
    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getLastEventId(): empty cursor"

    invoke-static {v2, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_45} :catch_3b
    .catchall {:try_start_3e .. :try_end_45} :catchall_39

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_4c

    :try_start_49
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4c} :catch_54

    :cond_4c
    return-wide v4

    :goto_4d
    :try_start_4d
    throw v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_39

    :goto_4e
    if-eqz v1, :cond_53

    :try_start_50
    invoke-static {v3, v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_53
    throw v2
    :try_end_54
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_54} :catch_54

    :catch_54
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastEventId(): ERROR READING CONTENT PROVIDER! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private static getUriFromType(I)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_14

    sget-object v1, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v2, "getUriFromType(): not URI associated with this log type"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :pswitch_c
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_12

    :pswitch_f
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$DatabaseClean;->CONTENT_URI:Landroid/net/Uri;

    nop

    :goto_12
    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public static getVersioningBlob(Landroid/content/Context;)[Ljava/lang/String;
    .registers 11

    sget-object v0, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v1, "getVersioningBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_c
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$Versioning;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_8d

    :try_start_12
    const-string v3, "-1"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_70

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    goto :goto_70

    :cond_23
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_69

    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVersioningBlob() - id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v6

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_69} :catch_81
    .catchall {:try_start_12 .. :try_end_69} :catchall_7e

    :cond_69
    nop

    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6f
    .catch Ljava/lang/IllegalStateException; {:try_start_6c .. :try_end_6f} :catch_8d

    :cond_6f
    return-object v3

    :cond_70
    :goto_70
    :try_start_70
    sget-object v4, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v5, "getVersioningBlob(): empty cursor"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_77} :catch_81
    .catchall {:try_start_70 .. :try_end_77} :catchall_7e

    nop

    if-eqz v2, :cond_7d

    :try_start_7a
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_7d} :catch_8d

    :cond_7d
    return-object v3

    :catchall_7e
    move-exception v3

    move-object v4, v1

    goto :goto_87

    :catch_81
    move-exception v3

    :try_start_82
    throw v3
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_87
    if-eqz v2, :cond_8c

    :try_start_89
    invoke-static {v4, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8c
    throw v3
    :try_end_8d
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->TAG:Ljava/lang/String;

    const-string v4, "getFeaturesBlacklist(): ERROR READING CONTENT PROVIDER! "

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
