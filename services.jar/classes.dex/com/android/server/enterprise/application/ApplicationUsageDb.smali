.class public Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field private static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateLastUsageTime(JJJJ)J
    .registers 14

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-eqz v4, :cond_2b

    cmp-long v4, p7, v2

    if-eqz v4, :cond_2b

    cmp-long v2, p1, v2

    if-eqz v2, :cond_28

    cmp-long v2, p3, p7

    if-lez v2, :cond_1e

    cmp-long v2, p1, p5

    if-gez v2, :cond_1b

    sub-long v0, p3, p1

    goto :goto_31

    :cond_1b
    sub-long v0, p3, p5

    goto :goto_31

    :cond_1e
    cmp-long v2, p1, p5

    if-gez v2, :cond_25

    sub-long v0, p7, p1

    goto :goto_31

    :cond_25
    sub-long v0, p7, p5

    goto :goto_31

    :cond_28
    sub-long v0, p7, p5

    goto :goto_31

    :cond_2b
    cmp-long v2, p3, v2

    if-eqz v2, :cond_31

    sub-long v0, p3, p1

    :cond_31
    :goto_31
    return-wide v0
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    :try_start_0
    const-string v0, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table ApplicationControl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ApplicationUsageDb"

    const-string v2, "::createDmAppMgrTable: Table is Created "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception v0

    const-string v1, "ApplicationUsageDb"

    const-string v2, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_29
    return-void
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "dmappmgr.db"

    if-eqz p0, :cond_26

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move-object v0, v2

    goto :goto_19

    :catch_e
    move-exception v2

    const-string v3, "ApplicationUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_19
    if-eqz v0, :cond_26

    const-string v2, "ApplicationControl"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_26
    return-object v0
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 1 FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE 1=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_2b

    const/4 v0, 0x1

    goto :goto_34

    :catch_2b
    move-exception v1

    const/4 v0, 0x0

    const-string v2, "ApplicationUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return v0
.end method


# virtual methods
.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    if-nez v2, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    const-string v3, "ApplicationControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2f

    if-lez v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    goto :goto_33

    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_38
    return v0
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/application/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "pkgname"

    const-string/jumbo v4, "lastlaunchtime"

    const-string/jumbo v5, "lastpausetime"

    const-string v6, "applastservicestarttime"

    const-string v7, "applastservicestoptime"

    filled-new-array {v0, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p0

    :try_start_16
    iget-object v0, v4, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_b2
    .catchall {:try_start_16 .. :try_end_1c} :catchall_b0

    move-object v2, v0

    if-nez v2, :cond_2b

    const/4 v0, 0x0

    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2a
    return-object v0

    :cond_2b
    :try_start_2b
    const-string v9, "ApplicationControl"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    if-eqz v1, :cond_a5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    :cond_46
    const-string/jumbo v0, "pkgname"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "lastlaunchtime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string/jumbo v7, "lastpausetime"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v7, "applastservicestarttime"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "applastservicestoptime"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v11, v4

    move-wide v12, v5

    move-wide/from16 v16, v7

    invoke-direct/range {v11 .. v19}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v9, v11, v16

    if-nez v9, :cond_8a

    goto :goto_9f

    :cond_8a
    new-instance v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;

    invoke-direct {v9}, Lcom/samsung/android/knox/application/AppInfoLastUsage;-><init>()V

    iput-object v0, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->packageName:Ljava/lang/String;

    iput-wide v11, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastAppUsage:J

    cmp-long v13, v5, v16

    if-eqz v13, :cond_9a

    iput-wide v5, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    goto :goto_9c

    :cond_9a
    iput-wide v7, v9, Lcom/samsung/android/knox/application/AppInfoLastUsage;->lastLaunchTime:J

    :goto_9c
    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a3} :catch_b2
    .catchall {:try_start_2b .. :try_end_a3} :catchall_b0

    if-nez v0, :cond_46

    :cond_a5
    if-eqz v1, :cond_aa

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_aa
    if-eqz v2, :cond_be

    :goto_ac
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_be

    :catchall_b0
    move-exception v0

    goto :goto_bf

    :catch_b2
    move-exception v0

    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b0

    if-eqz v1, :cond_bb

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bb
    if-eqz v2, :cond_be

    goto :goto_ac

    :cond_be
    :goto_be
    return-object v3

    :goto_bf
    if-eqz v1, :cond_c4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c4
    if-eqz v2, :cond_c9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c9
    throw v0
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_4b

    const-string v5, "ApplicationControl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_4b

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_28
    const-string/jumbo v3, "pkgname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "launchcount"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_58
    .catchall {:try_start_3 .. :try_end_49} :catchall_56

    if-nez v3, :cond_28

    :cond_4b
    if-eqz v0, :cond_50

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_50
    if-eqz v1, :cond_64

    :goto_52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_64

    :catchall_56
    move-exception v3

    goto :goto_65

    :catch_58
    move-exception v3

    :try_start_59
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_56

    if-eqz v0, :cond_61

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_61
    if-eqz v1, :cond_64

    goto :goto_52

    :cond_64
    :goto_64
    return-object v2

    :goto_65
    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6a
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6f
    throw v3
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_9f
    .catchall {:try_start_4 .. :try_end_a} :catchall_9d

    move-object v3, v4

    if-nez v3, :cond_14

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_13
    return v2

    :cond_14
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6d

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "ApplicationControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6c

    const/4 v0, 0x1

    :cond_6c
    goto :goto_97

    :cond_6d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "pkgname"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "ApplicationControl"

    invoke-virtual {v3, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_90} :catch_9f
    .catchall {:try_start_14 .. :try_end_90} :catchall_9d

    const-wide/16 v7, 0x0

    cmp-long v2, v7, v5

    if-gez v2, :cond_97

    const/4 v0, 0x1

    :cond_97
    :goto_97
    if-eqz v1, :cond_a6

    :goto_99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a6

    :catchall_9d
    move-exception v2

    goto :goto_ac

    :catch_9f
    move-exception v2

    :try_start_a0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_9d

    if-eqz v1, :cond_a6

    goto :goto_99

    :cond_a6
    :goto_a6
    if-eqz v3, :cond_ab

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ab
    return v0

    :goto_ac
    if-eqz v1, :cond_b1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b1
    throw v2
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_c3
    .catchall {:try_start_4 .. :try_end_a} :catchall_c1

    move-object v3, v4

    if-nez v3, :cond_14

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_13
    return v2

    :cond_14
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_85

    const-string/jumbo v4, "launchcount"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/2addr v4, p2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "launchcount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "lastpausetime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "ApplicationControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_84

    const/4 v0, 0x1

    :cond_84
    goto :goto_bb

    :cond_85
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "pkgname"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "lastpausetime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "ApplicationControl"

    invoke-virtual {v3, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_b4} :catch_c3
    .catchall {:try_start_14 .. :try_end_b4} :catchall_c1

    const-wide/16 v7, 0x0

    cmp-long v2, v7, v5

    if-gez v2, :cond_bb

    const/4 v0, 0x1

    :cond_bb
    :goto_bb
    if-eqz v1, :cond_ca

    :goto_bd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_ca

    :catchall_c1
    move-exception v2

    goto :goto_d0

    :catch_c3
    move-exception v2

    :try_start_c4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c1

    if-eqz v1, :cond_ca

    goto :goto_bd

    :cond_ca
    :goto_ca
    if-eqz v3, :cond_cf

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_cf
    return v0

    :goto_d0
    if-eqz v1, :cond_d5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d5
    throw v2
.end method
