.class final Lcom/android/server/pm/PackageInstallTimeLogger;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.android.server.pm"

.field private static final DEBUG:Z = false

.field private static final ENABLE_SURVEY_MODE:Z

.field private static final FEATURE_INSTALL_TIME:Ljava/lang/String; = "INST"

.field private static final MAX_ACTIVE_TIMEINFO:J = 0x20L

.field private static final MAX_AGE_MILLIS:J = 0x6ddd00L

.field private static final MAX_HISTORICAL_TIMEINFO:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "PackageInstallTime"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mHistoricalInfo:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHistoricalinfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstallLogging:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLogging"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    sput-object p1, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addHistoricalTimeInfo(Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private getCurrentTime()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private removeExpiredTimeInfo()V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    if-nez v5, :cond_2c

    goto :goto_15

    :cond_2c
    iget-wide v6, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    cmp-long v6, v6, v0

    if-gez v6, :cond_37

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    goto :goto_15

    :cond_38
    monitor-exit v2

    return-void

    :catchall_3a
    move-exception v3

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v3
.end method


# virtual methods
.method abandonInstallTimeInfo(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    nop

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method changeInstallTimeInfoKey(II)V
    .registers 8

    if-eqz p1, :cond_4d

    if-nez p2, :cond_5

    goto :goto_4d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    if-nez v1, :cond_34

    const-string v2, "PackageInstallTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInstallTimeInfoKey("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ...): cannot find InstallTimeInfo with key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_34
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_4a

    throw v1

    :cond_4d
    :goto_4d
    const-string v0, "PackageInstallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeInstallTimeInfoKey: invaild keys, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method createInstallTimeInfo(II)Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v1, "PackageInstallTime"

    const-string v2, "createInstallTimeInfo() failed :Observer Hash is zero"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_27

    const-string v2, "PackageInstallTime"

    const-string v3, "Active Logging info over 32"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->removeExpiredTimeInfo()V

    monitor-exit v1

    return-object v0

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_4c

    new-instance v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;-><init>(Lcom/android/server/pm/PackageInstallTimeLogger;Lcom/android/server/pm/PackageInstallTimeLogger$1;)V

    move-object v0, v1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    iget-wide v1, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    iput-wide v1, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    iput p2, v0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mUserId:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_3d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_49

    throw v1

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    if-nez v5, :cond_2d

    goto :goto_15

    :cond_2d
    iget-object v6, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_1ea

    :try_start_30
    iget-object v7, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v7, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ": \"Ver\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_5e
    if-ge v4, v7, :cond_7f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_7f
    iget-object v4, v5, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_15

    :catchall_8a
    move-exception v2

    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_30 .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v2

    :cond_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_1ea

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x78

    if-lez v1, :cond_eb

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, p1, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v3, "Active install Logging info:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_b0

    :cond_e5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_eb
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v1

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_f4
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_166

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    iget-object v7, v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_109
    .catchall {:try_start_f4 .. :try_end_109} :catchall_1e7

    :try_start_109
    iget-object v8, v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    mul-int/lit8 v10, v8, 0x40

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ": \"Ver\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v4

    :goto_137
    if-ge v10, v8, :cond_158

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_137

    :cond_158
    iget-object v10, v6, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    goto :goto_fa

    :catchall_163
    move-exception v1

    monitor-exit v7
    :try_end_165
    .catchall {:try_start_109 .. :try_end_165} :catchall_163

    :try_start_165
    throw v1

    :cond_166
    monitor-exit v5
    :try_end_167
    .catchall {:try_start_165 .. :try_end_167} :catchall_1e7

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1e6

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v1, p1, v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Historical install Logging info("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mHistoricalInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_1ab

    :cond_1e0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_1e6
    return-void

    :catchall_1e7
    move-exception v1

    :try_start_1e8
    monitor-exit v5
    :try_end_1e9
    .catchall {:try_start_1e8 .. :try_end_1e9} :catchall_1e7

    throw v1

    :catchall_1ea
    move-exception v2

    :try_start_1eb
    monitor-exit v1
    :try_end_1ec
    .catchall {:try_start_1eb .. :try_end_1ec} :catchall_1ea

    throw v2
.end method

.method finishInstallTimeInfo(I)V
    .registers 15

    if-nez p1, :cond_a

    const-string v0, "PackageInstallTime"

    const-string v1, "finishInstallTimeInfo: invaild hash"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_ec

    if-nez v1, :cond_39

    const-string v0, "PackageInstallTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishInstallTimeInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): info not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mBaseTime:J

    sub-long v4, v2, v4

    const/4 v0, 0x0

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_45
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v7, 0x20

    add-int/lit16 v9, v9, 0x100

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{\"Pkg\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", \"Ver\":\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_7c
    if-ge v8, v7, :cond_9d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    :cond_9d
    monitor-exit v6
    :try_end_9e
    .catchall {:try_start_45 .. :try_end_9e} :catchall_e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"end\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/Long;

    iget-wide v8, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    sub-long v8, v2, v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_c3
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_e6

    const-string v7, "com.android.server.pm"

    const-string v8, "INST"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/os/UserHandle;

    iget v6, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mUserId:I

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object v6, p0

    move-wide v10, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/pm/PackageInstallTimeLogger;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallTimeLogger;->addHistoricalTimeInfo(Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;)V

    return-void

    :catchall_e6
    move-exception v6

    :try_start_e7
    monitor-exit v7
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v6

    :catchall_e9
    move-exception v7

    :try_start_ea
    monitor-exit v6
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v7

    :catchall_ec
    move-exception v1

    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v1
.end method

.method insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)V
    .registers 10

    sget-object v0, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3f

    sget-boolean v0, Lcom/android/server/pm/PackageInstallTimeLogger;->ENABLE_SURVEY_MODE:Z

    if-eqz v0, :cond_3f

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/pm/PackageInstallTimeLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3f
    return-void
.end method

.method updateInstallTimeInfo(ILjava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_89

    if-nez p2, :cond_6

    goto/16 :goto_89

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_86

    if-nez v1, :cond_39

    const-string v0, "PackageInstallTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInstallTimeInfo: invalid ObserverHash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallTimeLogger;->getCurrentTime()J

    move-result-wide v2

    new-instance v0, Ljava/lang/Long;

    iget-wide v4, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    sub-long v4, v2, v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    iput-wide v2, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mLastTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\":\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_78
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    return-void

    :catchall_83
    move-exception v0

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_83

    throw v0

    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1

    :cond_89
    :goto_89
    const-string v0, "PackageInstallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInstallTimeInfo: invalid hash("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or tag("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateInstallTimeInfo(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-eqz p2, :cond_38

    if-nez p3, :cond_5

    goto :goto_38

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallTimeLogger;->mInstallLogging:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_35

    if-nez v1, :cond_30

    const-string v0, "PackageInstallTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInstallTimeInfo: invalid ObserverHash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    iput-object p2, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    return-void

    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    :cond_38
    :goto_38
    return-void
.end method
