.class public Lcom/samsung/android/rlc/db/MGRegDBHandler;
.super Ljava/lang/Object;
.source "MGRegDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;


# instance fields
.field helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    const-class v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    return-void
.end method

.method private close(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/db/MGRegDBHandler;
    .registers 2

    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    :cond_b
    sget-object v0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->mInstance:Lcom/samsung/android/rlc/db/MGRegDBHandler;

    return-object v0
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "pushreg"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pushtype"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dlvurl"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "rmmreg"

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_28
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    const/4 v0, 0x1

    goto :goto_33

    :catchall_26
    move-exception v1

    goto :goto_38

    :catch_28
    move-exception v1

    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB insert fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_26

    :goto_33
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return v0

    :goto_38
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string/jumbo v1, "rmmreg"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_52

    :try_start_10
    const-string v1, ""

    :cond_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "pushtype"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_3e
    .catchall {:try_start_10 .. :try_end_35} :catchall_3c

    nop

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-object v2

    :catchall_3c
    move-exception v1

    goto :goto_4c

    :catch_3e
    move-exception v1

    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB select fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    if-eqz v0, :cond_57

    goto :goto_54

    :goto_4c
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v1

    :cond_52
    if-eqz v0, :cond_57

    :goto_54
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_57
    const/4 v1, 0x0

    return-object v1
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "pushreg"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "rmmreg"

    const-string/jumbo v4, "pushtype=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v0

    invoke-virtual {p3, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_25
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    const/4 v1, 0x1

    goto :goto_30

    :catchall_23
    move-exception v0

    goto :goto_35

    :catch_25
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "DB update fail"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_23

    :goto_30
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    nop

    return v1

    :goto_35
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized getDeliveryURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string v2, "dlvurl"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-object v1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "rmmpref"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_77

    if-eqz v0, :cond_71

    :try_start_16
    const-string v2, ""

    :cond_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_71

    const-string v3, "key"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string/jumbo v3, "value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3d} :catch_47
    .catchall {:try_start_16 .. :try_end_3d} :catchall_45

    nop

    if-eqz v0, :cond_43

    :try_start_40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_77

    :cond_43
    monitor-exit p0

    return-object v3

    :catchall_45
    move-exception v2

    goto :goto_6b

    :catch_47
    move-exception v2

    :try_start_48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB getValue fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_45

    if-eqz v0, :cond_74

    :goto_67
    :try_start_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_74

    :goto_6b
    if-eqz v0, :cond_70

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_70
    throw v2
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_77

    :cond_71
    if-eqz v0, :cond_74

    goto :goto_67

    :cond_74
    :goto_74
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_5d

    if-nez v2, :cond_58

    :try_start_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "rmmpref"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_32
    .catchall {:try_start_e .. :try_end_2b} :catchall_30

    const/4 v0, 0x1

    :try_start_2c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_5d

    :goto_2f
    goto :goto_5b

    :catchall_30
    move-exception v2

    goto :goto_54

    :catch_32
    move-exception v2

    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB insertValue fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_30

    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2f

    :goto_54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :cond_58
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5d

    :goto_5b
    monitor-exit p0

    return v0

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string/jumbo v2, "pushreg"

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-direct {p0, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->close(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-object v1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateRegStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "pushreg"

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->select(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v3, "Insert new row"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_38

    :cond_1f
    sget-object v2, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update row : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/rlc/db/MGRegDBHandler;->update(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    :goto_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/rlc/db/MGRegDBHandler;->helper:Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;

    invoke-virtual {v1}, Lcom/samsung/android/rlc/db/MGRegDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_43

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "rmmpref"

    const-string v4, "key=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_2e
    .catchall {:try_start_8 .. :try_end_27} :catchall_2c

    const/4 v0, 0x1

    :try_start_28
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_43

    goto :goto_3c

    :catchall_2c
    move-exception v2

    goto :goto_3f

    :catch_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/db/MGRegDBHandler;->TAG:Ljava/lang/String;

    const-string v4, "DB updateValue fail"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_2c

    :try_start_39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    :goto_3c
    nop

    monitor-exit p0

    return v0

    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method
