.class public Lcom/android/server/enterprise/application/ApplicationIconDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ApplicationIconDb.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "dmappmgr.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGE_DATA:Ljava/lang/String; = "imagedata"

.field public static final NAME_OWNER:Ljava/lang/String; = "nameowner"

.field public static final NEW_NAME:Ljava/lang/String; = "newname"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationIcon"

.field private static final TAG:Ljava/lang/String; = "ApplicationIconDb"

.field public static final USER_ID:Ljava/lang/String; = "userid"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "dmappmgr.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10

    const-string v0, "ApplicationIcon"

    invoke-static {p1, v0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8e

    :try_start_8
    const-string v0, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApplicationIcon"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s %s"

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "newname"

    aput-object v6, v5, v4

    const-string v6, "TEXT"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "%s %s"

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "userid"

    aput-object v3, v2, v4

    const-string v3, "INT"

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s DEFAULT %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    const-string v2, "ALTER TABLE %s ADD COLUMN %s;"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "ApplicationIcon"

    aput-object v5, v3, v4

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE %s ADD COLUMN %s;"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "ApplicationIcon"

    aput-object v5, v3, v4

    const-string v5, "%s %s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "nameowner"

    aput-object v6, v1, v4

    const-string v4, "INT"

    aput-object v4, v1, v7

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_82
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_82} :catch_83

    goto :goto_8e

    :catch_83
    move-exception v0

    const-string v1, "ApplicationIconDb"

    const-string v2, "::insertNewColumns: Exception while table is upgrading "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_8e
    :goto_8e
    return-void
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

    const-string v2, "ApplicationIconDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return v0
.end method


# virtual methods
.method clearApplicationData()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_35

    const-string v4, "SELECT * FROM ApplicationIcon"

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    const-string/jumbo v4, "pkgname"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_30

    :cond_23
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_23

    :cond_30
    const-string v5, "ApplicationIcon"

    invoke-virtual {v1, v5, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_35} :catch_3d
    .catchall {:try_start_8 .. :try_end_35} :catchall_3b

    :cond_35
    if-eqz v3, :cond_44

    :goto_37
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_3b
    move-exception v2

    goto :goto_45

    :catch_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    if-eqz v3, :cond_44

    goto :goto_37

    :cond_44
    :goto_44
    return-object v0

    :goto_45
    if-eqz v3, :cond_4a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v2
.end method

.method clearApplicationDataForUid(I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_56

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE nameowner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    const-string/jumbo v4, "pkgname"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3f

    :cond_32
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_32

    :cond_3f
    const-string v5, "ApplicationIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nameowner = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_56} :catch_5e
    .catchall {:try_start_8 .. :try_end_56} :catchall_5c

    :cond_56
    if-eqz v3, :cond_65

    :goto_58
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_65

    :catchall_5c
    move-exception v2

    goto :goto_66

    :catch_5e
    move-exception v2

    :try_start_5f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_5c

    if-eqz v3, :cond_65

    goto :goto_58

    :cond_65
    :goto_65
    return-object v0

    :goto_66
    if-eqz v3, :cond_6b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v2
.end method

.method deleteApplicationIcon(Ljava/lang/String;I)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_106
    .catchall {:try_start_4 .. :try_end_8} :catchall_104

    move-object v1, v4

    if-nez v1, :cond_12

    const/4 v2, 0x0

    if-eqz v3, :cond_11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    return v2

    :cond_12
    :try_start_12
    const-string/jumbo v4, "nameowner"

    move v5, p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    if-eqz v3, :cond_44

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_106
    .catchall {:try_start_12 .. :try_end_42} :catchall_104

    if-nez v6, :cond_7a

    :cond_44
    if-eqz v3, :cond_4b

    :try_start_46
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a
    .catchall {:try_start_46 .. :try_end_49} :catchall_104

    goto :goto_4b

    :catch_4a
    move-exception v6

    :cond_4b
    :goto_4b
    :try_start_4b
    const-string/jumbo v6, "userid"

    move-object v4, v6

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    :cond_7a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_fe

    const-string/jumbo v6, "nameowner"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_8f

    if-ne v6, p2, :cond_fe

    :cond_8f
    const-string/jumbo v7, "newname"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "imagedata"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v9, "ApplicationIcon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pkgname = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v8, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_d2

    const/4 v0, 0x1

    :cond_d2
    goto :goto_fe

    :cond_d3
    const-string v8, "ApplicationIcon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_fb} :catch_106
    .catchall {:try_start_4b .. :try_end_fb} :catchall_104

    if-lez v2, :cond_fe

    const/4 v0, 0x1

    :cond_fe
    :goto_fe
    if-eqz v3, :cond_10d

    :goto_100
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_10d

    :catchall_104
    move-exception v2

    goto :goto_10e

    :catch_106
    move-exception v2

    :try_start_107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_104

    if-eqz v3, :cond_10d

    goto :goto_100

    :cond_10d
    :goto_10d
    return v0

    :goto_10e
    if-eqz v3, :cond_113

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_113
    throw v2
.end method

.method deleteApplicationName(Ljava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_8} :catch_be
    .catchall {:try_start_4 .. :try_end_8} :catchall_bc

    move-object v1, v4

    if-nez v1, :cond_12

    const/4 v2, 0x0

    if-eqz v3, :cond_11

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    return v2

    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "nameowner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b6

    const-string/jumbo v4, "imagedata"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_88

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "newname"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v6, "ApplicationIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "nameowner"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_87

    const/4 v0, 0x1

    :cond_87
    goto :goto_b6

    :cond_88
    const-string v5, "ApplicationIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nameowner"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_b3} :catch_be
    .catchall {:try_start_12 .. :try_end_b3} :catchall_bc

    if-lez v2, :cond_b6

    const/4 v0, 0x1

    :cond_b6
    :goto_b6
    if-eqz v3, :cond_c5

    :goto_b8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_c5

    :catchall_bc
    move-exception v2

    goto :goto_c6

    :catch_be
    move-exception v2

    :try_start_bf
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_bc

    if-eqz v3, :cond_c5

    goto :goto_b8

    :cond_c5
    :goto_c5
    return v0

    :goto_c6
    if-eqz v3, :cond_cb

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_cb
    throw v2
.end method

.method getApplicationIcon(Ljava/lang/String;I)[B
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_57
    .catchall {:try_start_4 .. :try_end_8} :catchall_55

    move-object v1, v4

    if-nez v1, :cond_12

    nop

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v2

    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "imagedata"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_57
    .catchall {:try_start_12 .. :try_end_4e} :catchall_55

    move-object v3, v2

    :cond_4f
    if-eqz v0, :cond_76

    :goto_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catchall_55
    move-exception v2

    goto :goto_77

    :catch_57
    move-exception v2

    :try_start_58
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationIcon  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_55

    if-eqz v0, :cond_76

    goto :goto_51

    :cond_76
    :goto_76
    return-object v3

    :goto_77
    if-eqz v0, :cond_7c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v2
.end method

.method getApplicationIconChangedMap()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_7a
    .catchall {:try_start_7 .. :try_end_b} :catchall_78

    move-object v1, v3

    if-nez v1, :cond_15

    nop

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    return-object v2

    :cond_15
    :try_start_15
    const-string v3, "SELECT * FROM ApplicationIcon WHERE imagedata IS NOT NULL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_72

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_72

    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_72

    const-string/jumbo v3, "imagedata"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_71

    const-string/jumbo v4, "userid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    const-string/jumbo v5, "pkgname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_71} :catch_7a
    .catchall {:try_start_15 .. :try_end_71} :catchall_78

    :cond_71
    goto :goto_25

    :cond_72
    if-eqz v0, :cond_99

    :goto_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_99

    :catchall_78
    move-exception v3

    goto :goto_9a

    :catch_7a
    move-exception v3

    :try_start_7b
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationIconChangedMap  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_78

    if-eqz v0, :cond_99

    goto :goto_74

    :cond_99
    :goto_99
    return-object v2

    :goto_9a
    if-eqz v0, :cond_9f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v3
.end method

.method getApplicationName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_57
    .catchall {:try_start_4 .. :try_end_8} :catchall_55

    move-object v1, v4

    if-nez v1, :cond_12

    nop

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v2

    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string/jumbo v2, "newname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_57
    .catchall {:try_start_12 .. :try_end_4e} :catchall_55

    move-object v3, v2

    :cond_4f
    if-eqz v0, :cond_76

    :goto_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catchall_55
    move-exception v2

    goto :goto_77

    :catch_57
    move-exception v2

    :try_start_58
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationName  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_55

    if-eqz v0, :cond_76

    goto :goto_51

    :cond_76
    :goto_76
    return-object v3

    :goto_77
    if-eqz v0, :cond_7c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v2
.end method

.method getApplicationNameChangedMap()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_7a
    .catchall {:try_start_7 .. :try_end_b} :catchall_78

    move-object v1, v3

    if-nez v1, :cond_15

    nop

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    return-object v2

    :cond_15
    :try_start_15
    const-string v3, "SELECT * FROM ApplicationIcon WHERE newname IS NOT NULL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_72

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_72

    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_72

    const-string/jumbo v3, "newname"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    const-string/jumbo v4, "userid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    const-string/jumbo v5, "pkgname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_71} :catch_7a
    .catchall {:try_start_15 .. :try_end_71} :catchall_78

    :cond_71
    goto :goto_25

    :cond_72
    if-eqz v0, :cond_99

    :goto_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_99

    :catchall_78
    move-exception v3

    goto :goto_9a

    :catch_7a
    move-exception v3

    :try_start_7b
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApplicationNameChangedMap  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7b .. :try_end_96} :catchall_78

    if-eqz v0, :cond_99

    goto :goto_74

    :cond_99
    :goto_99
    return-object v2

    :goto_9a
    if-eqz v0, :cond_9f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "ApplicationIcon"

    invoke-static {p1, v0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    :try_start_8
    const-string v0, " (_id integer primary key autoincrement, pkgname text, imagedata BLOB, newname text, userid int, nameowner int);"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table ApplicationIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ApplicationIconDb"

    const-string v2, "::onCreate: Table is Created "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_25} :catch_26

    goto :goto_31

    :catch_26
    move-exception v0

    const-string v1, "ApplicationIconDb"

    const-string v2, "::onCreate: Exception while table is creating "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_31
    goto :goto_35

    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_35
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method updateApplicationIcon(Ljava/lang/String;[BI)Z
    .registers 22

    move-object/from16 v1, p1

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v12, :cond_16

    const-string v0, "ApplicationIconDb"

    const-string/jumbo v3, "updateApplicationIcon(): null db"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_16
    :try_start_16
    const-string v4, "ApplicationIcon"

    const-string v0, "_id"

    const-string/jumbo v3, "nameowner"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pkgname = ? AND userid= ?"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    aput-object v1, v7, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v7, v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "1"

    move-object v3, v12

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3a
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_3a} :catch_132

    move-object v3, v0

    const/4 v4, 0x0

    if-nez v3, :cond_5e

    :try_start_3e
    const-string v0, "ApplicationIconDb"

    const-string/jumbo v5, "updateApplicationIcon(): null cursor"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_46} :catch_56
    .catchall {:try_start_3e .. :try_end_46} :catchall_4d

    nop

    if-eqz v3, :cond_4c

    :try_start_49
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Landroid/database/SQLException; {:try_start_49 .. :try_end_4c} :catch_132

    :cond_4c
    return v13

    :catchall_4d
    move-exception v0

    move-object/from16 v6, p2

    :goto_50
    move/from16 v10, p3

    :goto_52
    move-object v5, v4

    move-object v4, v0

    goto/16 :goto_11e

    :catch_56
    move-exception v0

    move-object/from16 v6, p2

    :goto_59
    move/from16 v10, p3

    :goto_5b
    move-object v4, v0

    goto/16 :goto_11a

    :cond_5e
    :try_start_5e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "imagedata"
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_66} :catch_56
    .catchall {:try_start_5e .. :try_end_66} :catchall_112

    move-object/from16 v6, p2

    :try_start_68
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v5, "nameowner"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_79} :catch_10f
    .catchall {:try_start_68 .. :try_end_79} :catchall_10d

    const-wide/16 v7, 0x0

    if-nez v5, :cond_a2

    :try_start_7d
    const-string/jumbo v5, "userid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "pkgname"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ApplicationIcon"

    invoke-virtual {v12, v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_93} :catch_10f
    .catchall {:try_start_7d .. :try_end_93} :catchall_a0

    move-wide v4, v9

    cmp-long v7, v4, v7

    if-lez v7, :cond_99

    goto :goto_9a

    :cond_99
    move v14, v13

    :goto_9a
    if-eqz v3, :cond_9f

    :try_start_9c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catch Landroid/database/SQLException; {:try_start_9c .. :try_end_9f} :catch_b7

    :cond_9f
    return v14

    :catchall_a0
    move-exception v0

    goto :goto_50

    :cond_a2
    :try_start_a2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a6} :catch_10f
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_10d

    if-nez v5, :cond_bb

    :try_start_a8
    const-string v5, "ApplicationIconDb"

    const-string/jumbo v7, "updateApplicationIcon(): moveToFirst error!"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_b0} :catch_10f
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_a0

    nop

    if-eqz v3, :cond_ba

    :try_start_b3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b6
    .catch Landroid/database/SQLException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_ba

    :catch_b7
    move-exception v0

    goto/16 :goto_135

    :cond_ba
    :goto_ba
    return v13

    :cond_bb
    :try_start_bb
    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v9, "nameowner"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_d0} :catch_10f
    .catchall {:try_start_bb .. :try_end_d0} :catchall_10d

    if-eqz v9, :cond_e5

    move/from16 v10, p3

    if-eq v9, v10, :cond_e7

    :try_start_d6
    const-string v7, "ApplicationIconDb"

    const-string/jumbo v8, "updateApplicationIcon(): invalid ownerUid"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_de} :catch_10a
    .catchall {:try_start_d6 .. :try_end_de} :catchall_11b

    nop

    if-eqz v3, :cond_e4

    :try_start_e1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e4
    .catch Landroid/database/SQLException; {:try_start_e1 .. :try_end_e4} :catch_130

    :cond_e4
    return v13

    :cond_e5
    move/from16 v10, p3

    :cond_e7
    :try_start_e7
    const-string v11, "ApplicationIcon"

    const-string v15, "_id = ?"

    new-array v4, v14, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v13

    invoke-virtual {v12, v11, v0, v15, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_f7} :catch_10a
    .catchall {:try_start_e7 .. :try_end_f7} :catchall_108

    int-to-long v14, v4

    cmp-long v4, v14, v7

    if-lez v4, :cond_ff

    const/16 v17, 0x1

    goto :goto_102

    :cond_ff
    nop

    move/from16 v17, v13

    :goto_102
    if-eqz v3, :cond_107

    :try_start_104
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_107
    .catch Landroid/database/SQLException; {:try_start_104 .. :try_end_107} :catch_130

    :cond_107
    return v17

    :catchall_108
    move-exception v0

    goto :goto_117

    :catch_10a
    move-exception v0

    goto/16 :goto_5b

    :catchall_10d
    move-exception v0

    goto :goto_115

    :catch_10f
    move-exception v0

    goto/16 :goto_59

    :catchall_112
    move-exception v0

    move-object/from16 v6, p2

    :goto_115
    move/from16 v10, p3

    :goto_117
    move-object v4, v0

    const/4 v5, 0x0

    goto :goto_11e

    :goto_11a
    :try_start_11a
    throw v4
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_11b

    :catchall_11b
    move-exception v0

    goto/16 :goto_52

    :goto_11e
    if-eqz v3, :cond_12f

    if-eqz v5, :cond_12c

    :try_start_122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_122 .. :try_end_125} :catch_126
    .catch Landroid/database/SQLException; {:try_start_122 .. :try_end_125} :catch_130

    goto :goto_12f

    :catch_126
    move-exception v0

    move-object v7, v0

    :try_start_128
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_12f

    :cond_12c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_12f
    :goto_12f
    throw v4
    :try_end_130
    .catch Landroid/database/SQLException; {:try_start_128 .. :try_end_130} :catch_130

    :catch_130
    move-exception v0

    goto :goto_137

    :catch_132
    move-exception v0

    move-object/from16 v6, p2

    :goto_135
    move/from16 v10, p3

    :goto_137
    const-string v3, "ApplicationIconDb"

    const-string/jumbo v4, "updateApplicationIcon(): SQLException - "

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v13
.end method

.method updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_c} :catch_d2
    .catchall {:try_start_8 .. :try_end_c} :catchall_d0

    move-object v4, v5

    if-nez v4, :cond_16

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15
    return v3

    :cond_16
    :try_start_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "userid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_98

    const-string/jumbo v5, "nameowner"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_54

    if-ne v5, p3, :cond_97

    :cond_54
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "newname"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "nameowner"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "userid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v6, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_97

    const/4 v1, 0x1

    :cond_97
    goto :goto_ca

    :cond_98
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "pkgname"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "newname"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "userid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "nameowner"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "ApplicationIcon"

    invoke-virtual {v4, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_c3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_c3} :catch_d2
    .catchall {:try_start_16 .. :try_end_c3} :catchall_d0

    const-wide/16 v8, 0x0

    cmp-long v3, v8, v6

    if-gez v3, :cond_ca

    const/4 v1, 0x1

    :cond_ca
    :goto_ca
    if-eqz v2, :cond_d9

    :goto_cc
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_d9

    :catchall_d0
    move-exception v3

    goto :goto_da

    :catch_d2
    move-exception v3

    :try_start_d3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_d0

    if-eqz v2, :cond_d9

    goto :goto_cc

    :cond_d9
    :goto_d9
    return v1

    :goto_da
    if-eqz v2, :cond_df

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_df
    throw v3
.end method
