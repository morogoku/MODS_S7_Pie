.class public Lcom/samsung/android/rlc/db/PushFilterDBHandler;
.super Ljava/lang/Object;
.source "PushFilterDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "messageid"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pushfilter"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_27
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    const/4 v0, 0x1

    goto :goto_32

    :catchall_25
    move-exception v1

    goto :goto_37

    :catch_27
    move-exception v1

    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB insert fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_25

    :goto_32
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return v0

    :goto_37
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DELETE FROM pushfilter WHERE _id IN (SELECT * FROM((SELECT _id FROM pushfilter ORDER BY _id ASC LIMIT 10 )) AS A)"

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_13
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1f

    :catchall_11
    move-exception v1

    goto :goto_20

    :catch_13
    move-exception v1

    :try_start_14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB delete fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_11

    goto :goto_d

    :goto_1f
    return v0

    :goto_20
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 10

    const-string/jumbo v1, "pushfilter"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isSameMessageID(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->helper:Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;

    invoke-virtual {v3}, Lcom/samsung/android/rlc/db/PushFilterDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_12

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->select(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    :cond_12
    if-nez v0, :cond_4d

    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]PushFilter DB STATE : CURSOR IS NULL!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_1d1
    .catchall {:try_start_4 .. :try_end_2f} :catchall_1cf

    nop

    if-eqz v0, :cond_38

    :try_start_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_38

    :catch_36
    move-exception v3

    goto :goto_3e

    :cond_38
    :goto_38
    if-eqz v2, :cond_4a

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_36
    .catchall {:try_start_32 .. :try_end_3d} :catchall_1db

    goto :goto_4a

    :goto_3e
    nop

    :try_start_3f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB CLOSE FAIL"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_1db

    goto :goto_4b

    :cond_4a
    :goto_4a
    nop

    :goto_4b
    monitor-exit p0

    return v1

    :cond_4d
    :try_start_4d
    sget-object v3, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]PushFilter DB STATE : Total Data count. Remind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "messageid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Recived MessageID Value -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Comparing MessageID in DataBase "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    const/4 v1, 0x1

    goto :goto_c8

    :cond_c6
    const/4 v1, 0x0

    goto :goto_b4

    :cond_c8
    :goto_c8
    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    if-eqz v1, :cond_e3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Already saved same data in DB."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_de
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f6

    :cond_e3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : No saved same data in DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_de

    :goto_f6
    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1b4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_15b

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : DB IS FULL! Delete start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->messageidDBDelete(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_140

    sget-object v5, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]PushFilter DB STATE : Delete success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15b

    :cond_140
    sget-object v5, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]PushFilter DB STATE : Delete fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15b
    :goto_15b
    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]PushFilter DB STATE : Saving new data into DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4, p1, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->insert(ILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_199

    sget-object v6, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]PushFilter DB STATE : Save Success into DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b4

    :cond_199
    sget-object v6, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]PushFilter DB STATE : Save Fail into DB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_1b4} :catch_1d1
    .catchall {:try_start_4d .. :try_end_1b4} :catchall_1cf

    :cond_1b4
    :goto_1b4
    if-eqz v0, :cond_1bc

    :try_start_1b6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1bc

    :catch_1ba
    move-exception v3

    goto :goto_1c2

    :cond_1bc
    :goto_1bc
    if-eqz v2, :cond_1ce

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c1} :catch_1ba
    .catchall {:try_start_1b6 .. :try_end_1c1} :catchall_1db

    goto :goto_1ce

    :goto_1c2
    nop

    :try_start_1c3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB CLOSE FAIL"

    :goto_1ca
    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1c3 .. :try_end_1cd} :catchall_1db

    goto :goto_1ee

    :cond_1ce
    :goto_1ce
    goto :goto_1ee

    :catchall_1cf
    move-exception v3

    goto :goto_1f0

    :catch_1d1
    move-exception v3

    :try_start_1d2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d5
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_1cf

    if-eqz v0, :cond_1df

    :try_start_1d7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1df

    :catchall_1db
    move-exception p1

    goto :goto_20c

    :catch_1dd
    move-exception v3

    goto :goto_1e5

    :cond_1df
    :goto_1df
    if-eqz v2, :cond_1ce

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1e4} :catch_1dd
    .catchall {:try_start_1d7 .. :try_end_1e4} :catchall_1db

    goto :goto_1ce

    :goto_1e5
    nop

    :try_start_1e6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v5, "DB CLOSE FAIL"
    :try_end_1ed
    .catchall {:try_start_1e6 .. :try_end_1ed} :catchall_1db

    goto :goto_1ca

    :goto_1ee
    monitor-exit p0

    return v1

    :goto_1f0
    nop

    if-eqz v0, :cond_1f9

    :try_start_1f3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1f9

    :catch_1f7
    move-exception v4

    goto :goto_1ff

    :cond_1f9
    :goto_1f9
    if-eqz v2, :cond_20b

    invoke-direct {p0, v2}, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1fe} :catch_1f7
    .catchall {:try_start_1f3 .. :try_end_1fe} :catchall_1db

    goto :goto_20b

    :goto_1ff
    nop

    :try_start_200
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v5, Lcom/samsung/android/rlc/db/PushFilterDBHandler;->TAG:Ljava/lang/String;

    const-string v6, "DB CLOSE FAIL"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_20b
    :goto_20b
    throw v3
    :try_end_20c
    .catchall {:try_start_200 .. :try_end_20c} :catchall_1db

    :goto_20c
    monitor-exit p0

    throw p1
.end method
