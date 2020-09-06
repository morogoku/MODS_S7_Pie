.class Lcom/android/server/nextapp/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-DBManager"

.field private static volatile mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/android/server/nextapp/DBManager;


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/android/server/nextapp/DBHelper;

.field protected mInfoTable:Ljava/lang/String;

.field protected mSampleTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "tbl_Sample"

    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mSampleTable:Ljava/lang/String;

    const-string/jumbo v0, "tbl_Summary"

    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mInfoTable:Ljava/lang/String;

    sget-object v0, Lcom/android/server/nextapp/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/nextapp/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/android/server/nextapp/DBHelper;

    invoke-direct {v1, v0}, Lcom/android/server/nextapp/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_2a
    return-void
.end method

.method protected static destroyInstance()V
    .registers 2

    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBManager;->destroy()V

    :cond_c
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected static getInstance()Lcom/android/server/nextapp/DBManager;
    .registers 2

    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/nextapp/DBManager;

    invoke-direct {v1}, Lcom/android/server/nextapp/DBManager;-><init>()V

    sput-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    :cond_e
    sget-object v1, Lcom/android/server/nextapp/DBManager;->mInstance:Lcom/android/server/nextapp/DBManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected static init(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/nextapp/DBManager;->mContext:Ljava/lang/ref/WeakReference;

    :cond_9
    return-void
.end method


# virtual methods
.method protected beginTransaction()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_9
    return-void
.end method

.method protected destroy()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    :goto_6
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_14

    :catchall_9
    move-exception v1

    goto :goto_2b

    :catch_b
    move-exception v1

    :try_start_c
    const-string v2, "PkgPredictorService-DBManager"

    const-string v3, "Error on closing database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_9

    goto :goto_6

    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    invoke-virtual {v1}, Lcom/android/server/nextapp/DBHelper;->close()V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_1e
    .catchall {:try_start_14 .. :try_end_19} :catchall_1c

    :goto_19
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    goto :goto_27

    :catchall_1c
    move-exception v1

    goto :goto_28

    :catch_1e
    move-exception v1

    :try_start_1f
    const-string v2, "PkgPredictorService-DBManager"

    const-string v3, "Error on closing database helper"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    goto :goto_19

    :goto_27
    return-void

    :goto_28
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDBHelper:Lcom/android/server/nextapp/DBHelper;

    throw v1

    :goto_2b
    iput-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
.end method

.method protected endTransaction()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    return-void
.end method

.method protected execSQL(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected isDBClosed()Z
    .registers 4

    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    xor-int/2addr v1, v2

    monitor-exit v0

    return v1

    :cond_11
    monitor-exit v0

    return v2

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-object v0, Lcom/android/server/nextapp/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected setTransactionSuccessful()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/nextapp/DBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_9
    return-void
.end method
