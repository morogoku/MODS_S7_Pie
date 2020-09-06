.class public Lcom/samsung/android/MtpApplication/MtpMediaDBManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MtpMediaDBManager.java"


# static fields
.field public static final LOCK_DATABASE:Ljava/lang/Object;

.field static cr:Landroid/content/ContentResolver;

.field static mContext:Landroid/content/Context;


# instance fields
.field private AudioProjection:[Ljava/lang/String;

.field private CreateFilesTableStr:Ljava/lang/String;

.field private CreateGUIDTableStr:Ljava/lang/String;

.field private CreateMyfilesTableStr:Ljava/lang/String;

.field private VideoProjection:[Ljava/lang/String;

.field private audioURI:Landroid/net/Uri;

.field private fileURI:Landroid/net/Uri;

.field private jniObj:Landroid/mtp/MTPJNIInterface;

.field private videoURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "mtpMedia.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->jniObj:Landroid/mtp/MTPJNIInterface;

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->fileURI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->audioURI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->videoURI:Landroid/net/Uri;

    const-string v0, "CREATE TABLE files( _id INTEGER, _data TEXT, eMime_type INTEGER, _display_name TEXT, _size INTEGER, date_added INTEGER, date_modified INTEGER, datetaken INTEGER, album TEXT default \"<unknown>\", artist TEXT default \"<unknown>\", composer TEXT default \"<unknown>\", description TEXT default \"<unknown>\", duration INTEGER, language TEXT, latitude DOUBLE, longitude DOUBLE, title TEXT, year INTEGER, genre_name TEXT default \"<unknown>\", width INTEGER, height INTEGER)"

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateFilesTableStr:Ljava/lang/String;

    const-string v0, "CREATE TABLE GUID( _id INTEGER, _guid TEXT, PRIMARY KEY (_id))"

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateGUIDTableStr:Ljava/lang/String;

    const-string v0, "CREATE TABLE MyFiles( _id INTEGER PRIMARY KEY AUTOINCREMENT, _data TEXT )"

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateMyfilesTableStr:Ljava/lang/String;

    const-string v0, "album"

    const-string v1, "duration"

    const-string v2, "artist"

    const-string v3, "composer"

    const-string v4, "year"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->AudioProjection:[Ljava/lang/String;

    const-string v1, "album"

    const-string v2, "duration"

    const-string v3, "description"

    const-string v4, "longitude"

    const-string v5, "latitude"

    const-string v6, "language"

    const-string v7, "resolution"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->VideoProjection:[Ljava/lang/String;

    sput-object p1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addGUID(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MtpMediaDBManager"

    const-string v2, "inside addGUID"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_0

    const-string v4, "select * from GUID"

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_id"

    add-int/lit8 v7, v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "_guid"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "GUID"

    invoke-virtual {v1, v6, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v3, :cond_4

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "MtpMediaDBManager"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    if-eqz v3, :cond_4

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    const-string v4, "MtpMediaDBManager"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const-string v2, "MtpMediaDBManager"

    const-string v4, "finish addGUID"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public deleteFilesTable()V
    .locals 5

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MtpMediaDBManager"

    const-string v2, "inside deleteFilesTable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_0

    const-string v3, "files"

    invoke-virtual {v2, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "MtpMediaDBManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "MtpMediaDBManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "MtpMediaDBManager"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v0

    return-void

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getMyfilesDBList()[Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MtpMediaDBManager"

    const-string v2, "inside getMyfilesDBList"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v1, v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "select * from MyFiles"

    invoke-virtual {v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v5, "MtpMediaDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMyfilesDB Count :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v3, [Ljava/lang/String;

    move-object v4, v5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_0

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "MtpMediaDBManager"

    const-string v6, "start updateMyfilesDB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DROP TABLE IF EXISTS MyFiles"

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateMyfilesTableStr:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string v5, "MtpMediaDBManager"

    const-string v6, "finish getMyfilesDBList"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v5, "MtpMediaDBManager"

    const-string v6, "Error ending transaction."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    if-eqz v2, :cond_5

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception v3

    goto :goto_6

    :catch_1
    move-exception v3

    :try_start_4
    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_6
    const-string v5, "MtpMediaDBManager"

    const-string v6, "Error ending transaction."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    if-eqz v2, :cond_5

    goto :goto_2

    :catch_3
    move-exception v3

    :try_start_7
    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v3

    :try_start_9
    const-string v5, "MtpMediaDBManager"

    const-string v6, "Error ending transaction."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_5
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-object v4

    :goto_6
    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    :catch_5
    move-exception v5

    :try_start_b
    const-string v6, "MtpMediaDBManager"

    const-string v7, "Error ending transaction."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "MtpMediaDBManager"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1
.end method

.method public isExistGUID(Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MtpMediaDBManager"

    const-string v2, "inside isExistGUID"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from GUID where _guid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v2, :cond_4

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    if-eqz v2, :cond_4

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_5
    const-string v5, "MtpMediaDBManager"

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const-string v4, "MtpMediaDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish isExistGUID result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "MtpMediaDBManager"

    const-string v1, "inside onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateFilesTableStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateGUIDTableStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->CreateMyfilesTableStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS GUID"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS MyFiles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateFilesTable()V
    .locals 25

    move-object/from16 v1, p0

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "MtpMediaDBManager"

    const-string v3, "inside Thread updateFilesTable"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->cr:Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v8

    :try_start_1
    sget-object v10, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->cr:Landroid/content/ContentResolver;

    iget-object v11, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->fileURI:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v5, v0

    const-string v0, "MtpMediaDBManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v3, v0

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v10, "files"

    invoke-direct {v0, v3, v10}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    move-object v10, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v5, :cond_c

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->cr:Landroid/content/ContentResolver;

    const-string v12, "mtp_running_status"

    invoke-static {v0, v12, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v6, v0

    if-nez v6, :cond_0

    const-string v0, "MtpMediaDBManager"

    const-string v8, "UsbRemoved is called. so finish thread."

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_0
    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    const-string v0, "_id"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "_id"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "_data"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "_data"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "_display_name"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "_display_name"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "title"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "_size"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "_size"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "date_added"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "date_added"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "date_modified"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "date_modified"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v10, v0, v12}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "datetaken"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v12, "datetaken"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v10, v0, v12, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    const-string v0, "mime_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/4 v0, 0x3

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_d

    :cond_1
    const-string v13, "image"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    :try_start_2
    const-string v0, "width"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v14, "width"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "height"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v14, "height"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v9, 0x1

    :try_start_3
    const-string v14, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    move/from16 v16, v8

    goto/16 :goto_f

    :cond_2
    const-string v13, "audio"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    sget-object v17, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->cr:Landroid/content/ContentResolver;

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->audioURI:Landroid/net/Uri;

    iget-object v15, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->AudioProjection:[Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_id"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v15

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v11, v0

    if-eqz v11, :cond_3

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "album"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "duration"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x1

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v10, v0, v15}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "artist"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "composer"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x3

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "year"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x4

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "genre_name"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v14, "genre_name"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v9, 0x1

    :try_start_6
    const-string v14, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_3
    goto :goto_5

    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    :goto_5
    goto/16 :goto_2

    :cond_4
    const-string v11, "video"

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    const/4 v13, 0x0

    sget-object v17, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->cr:Landroid/content/ContentResolver;

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->videoURI:Landroid/net/Uri;

    iget-object v14, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->VideoProjection:[Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v14

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v8, v0

    if-eqz v8, :cond_8

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "album"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v14, 0x0

    :try_start_9
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v10, v0, v15}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "duration"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x1

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v10, v0, v15}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v0, "description"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x2

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const-string v0, "longitude"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x3

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    invoke-virtual {v10, v0, v14, v15}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ID)V

    const-string v0, "latitude"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x4

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    invoke-virtual {v10, v0, v14, v15}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ID)V

    const-string v0, "language"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x5

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v0, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v0, "width"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v14, "height"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v13, :cond_7

    if-eqz v0, :cond_6

    if-nez v14, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v23, v0

    const/16 v16, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    const-string v15, "x"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v23, v0

    const/16 v16, 0x0

    :try_start_b
    aget-object v0, v15, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const/16 v17, 0x1

    aget-object v0, v15, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    move/from16 v0, v24

    goto :goto_8

    :cond_7
    move/from16 v23, v0

    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v23

    :goto_8
    const-string v15, "width"

    invoke-virtual {v10, v15}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    const-string v15, "height"

    invoke-virtual {v10, v15}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move/from16 v16, v14

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    const/16 v16, 0x0

    :goto_9
    const/4 v9, 0x1

    :try_start_d
    const-string v14, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_a
    goto :goto_c

    :goto_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8
    const/16 v16, 0x0

    :goto_c
    move v13, v11

    goto :goto_f

    :cond_9
    move/from16 v16, v8

    goto :goto_e

    :cond_a
    :goto_d
    move/from16 v16, v8

    const/4 v0, 0x3

    :goto_e
    move v13, v0

    :goto_f
    if-eqz v9, :cond_b

    goto :goto_10

    :cond_b
    const-string v0, "eMime_type"

    invoke-virtual {v10, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v16

    goto/16 :goto_0

    :cond_c
    :goto_10
    invoke-virtual {v10}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->jniObj:Landroid/mtp/MTPJNIInterface;

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->jniObj:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_d

    const/4 v8, 0x1

    if-ne v6, v8, :cond_d

    const-string v0, "MtpMediaDBManager"

    const-string v8, "sending db update complete noti to stack"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->jniObj:Landroid/mtp/MTPJNIInterface;

    const/16 v8, 0x1d

    invoke-virtual {v0, v8}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_d
    if-eqz v3, :cond_e

    :try_start_f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v8, v0

    :try_start_10
    const-string v8, "MtpMediaDBManager"

    const-string v10, "Error ending transaction."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    if-eqz v4, :cond_12

    :goto_12
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_17

    :catch_6
    move-exception v0

    :try_start_11
    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v3, :cond_f

    :try_start_12
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v8, v0

    :try_start_13
    const-string v8, "MtpMediaDBManager"

    const-string v10, "Error ending transaction."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :cond_f
    if-eqz v4, :cond_12

    goto :goto_12

    :catch_8
    move-exception v0

    :try_start_14
    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v3, :cond_10

    :try_start_15
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v8, v0

    :try_start_16
    const-string v8, "MtpMediaDBManager"

    const-string v10, "Error ending transaction."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :cond_10
    if-eqz v4, :cond_12

    goto :goto_12

    :catch_a
    move-exception v0

    :try_start_17
    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v3, :cond_11

    :try_start_18
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v8, v0

    :try_start_19
    const-string v8, "MtpMediaDBManager"

    const-string v10, "Error ending transaction."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11
    if-eqz v4, :cond_12

    goto/16 :goto_12

    :cond_12
    :goto_16
    const-string v0, "MtpMediaDBManager"

    const-string v8, "finish updateFilesTable"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    return-void

    :goto_17
    if-eqz v4, :cond_13

    :try_start_1a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_18

    :catch_c
    move-exception v0

    move-object v10, v0

    :try_start_1b
    const-string v10, "MtpMediaDBManager"

    const-string v11, "Error ending transaction."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "MtpMediaDBManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_13
    if-eqz v5, :cond_14

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    throw v0
.end method
