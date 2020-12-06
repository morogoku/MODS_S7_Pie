.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;,
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_20

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_20
    return-object v1
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    if-eqz v1, :cond_15

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .registers 10

    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    monitor-enter p0

    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    monitor-exit p0

    return v1

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model_uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_49

    :try_start_33
    const-string/jumbo v4, "sound_model"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_44

    if-eqz v4, :cond_3f

    const/4 v1, 0x1

    nop

    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return v1

    :catchall_44
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1

    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 29

    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "locale"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_152

    move-object v11, v3

    :try_start_3f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_133

    :goto_45
    const-string/jumbo v3, "type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v12, v3

    if-eqz v12, :cond_5a

    nop

    :goto_54
    move-object/from16 v16, v1

    :goto_56
    move/from16 v1, p2

    goto/16 :goto_f8

    :cond_5a
    const-string/jumbo v3, "model_uuid"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_65
    .catchall {:try_start_3f .. :try_end_65} :catchall_148

    move-object v13, v3

    if-nez v13, :cond_75

    :try_start_68
    const-string v3, "SoundModelDBHelper"

    const-string v4, "Ignoring SoundModel since it doesn\'t specify an ID"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_70

    goto :goto_54

    :catchall_70
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_14b

    :cond_75
    const/4 v3, 0x0

    :try_start_76
    const-string/jumbo v4, "vendor_uuid"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_148

    move v14, v4

    const/4 v4, -0x1

    if-eq v14, v4, :cond_86

    :try_start_81
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_70

    move-object v3, v4

    :cond_86
    move-object v8, v3

    :try_start_87
    const-string v3, "data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object v4, v3

    const-string/jumbo v3, "recognition_modes"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v3, "users"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v3

    const-string v6, "locale"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hint_text"

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_cc

    const-string v0, "SoundModelDBHelper"
    :try_end_c4
    .catchall {:try_start_87 .. :try_end_c4} :catchall_148

    move-object/from16 v16, v1

    :try_start_c6
    const-string v1, "Ignoring SoundModel since it doesn\'t specify users"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_cc
    move-object/from16 v16, v1

    const/4 v0, 0x0

    array-length v1, v3

    const/16 v17, 0x0

    move/from16 v18, v0

    move/from16 v0, v17

    :goto_d6
    if-ge v0, v1, :cond_ef

    aget v19, v3, v0

    move/from16 v20, v19

    move/from16 v21, v1

    move-object/from16 v22, v3

    move/from16 v3, v20

    move/from16 v1, p2

    if-ne v1, v3, :cond_e8

    const/4 v0, 0x1

    goto :goto_f5

    :cond_e8
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    move-object/from16 v3, v22

    goto :goto_d6

    :cond_ef
    move/from16 v1, p2

    move-object/from16 v22, v3

    move/from16 v0, v18

    :goto_f5
    if-nez v0, :cond_104

    nop

    :goto_f8
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_ff

    goto :goto_135

    :cond_ff
    move-object/from16 v1, v16

    const/4 v0, 0x0

    goto/16 :goto_45

    :cond_104
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    new-instance v15, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move/from16 v23, v0

    move-object v0, v3

    move-object/from16 v18, v22

    move-object v3, v15

    move-object v1, v4

    move v4, v2

    move-object v2, v8

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    aput-object v15, v0, v17

    const/4 v3, 0x0

    if-eqz v2, :cond_121

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v3, v4

    :cond_121
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-static {v13}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v4, v8, v3, v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_12a
    .catchall {:try_start_c6 .. :try_end_12a} :catchall_146

    nop

    :try_start_12b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0
    :try_end_132
    .catchall {:try_start_12b .. :try_end_132} :catchall_157

    return-object v4

    :cond_133
    move-object/from16 v16, v1

    :goto_135
    :try_start_135
    const-string v0, "SoundModelDBHelper"

    const-string v1, "No SoundModel available for the given keyphrase"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13c
    .catchall {:try_start_135 .. :try_end_13c} :catchall_146

    :try_start_13c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    nop

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_146
    move-exception v0

    goto :goto_14b

    :catchall_148
    move-exception v0

    move-object/from16 v16, v1

    :goto_14b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :catchall_152
    move-exception v0

    move-object/from16 v16, v1

    :goto_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_13c .. :try_end_156} :catchall_157

    throw v0

    :catchall_157
    move-exception v0

    goto :goto_155
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,PRIMARY KEY (keyphrase_id,locale,users))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14

    const/4 v0, 0x4

    if-ge p2, v0, :cond_c

    const-string v0, "DROP TABLE IF EXISTS sound_model"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1c

    :cond_c
    if-ne p2, v0, :cond_1c

    const-string v0, "SoundModelDBHelper"

    const-string v1, "Adding vendor UUID column"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    :cond_1c
    :goto_1c
    const/4 v0, 0x5

    if-ne p2, v0, :cond_b8

    const-string v1, "SELECT * FROM sound_model"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_b3

    if-eqz v4, :cond_48

    :cond_31
    :try_start_31
    new-instance v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-direct {v4, v0, v2}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(ILandroid/database/Cursor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a
    .catchall {:try_start_31 .. :try_end_39} :catchall_b3

    goto :goto_42

    :catch_3a
    move-exception v4

    :try_start_3b
    const-string v5, "SoundModelDBHelper"

    const-string v6, "Failed to extract V5 record"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_b3

    if-nez v4, :cond_31

    :cond_48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    nop

    const-string v0, "DROP TABLE IF EXISTS sound_model"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_af

    const/4 v5, 0x6

    :try_start_6b
    invoke-virtual {v4, v5, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_95

    const-string v7, "SoundModelDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database write failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_95} :catch_96

    :cond_95
    goto :goto_af

    :catch_96
    move-exception v5

    const-string v6, "SoundModelDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update V6 record "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_af
    :goto_af
    goto :goto_58

    :cond_b0
    add-int/lit8 p2, p2, 0x1

    goto :goto_b8

    :catchall_b3
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_b8
    :goto_b8
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "model_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v2, :cond_26

    const-string/jumbo v2, "vendor_uuid"

    iget-object v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data"

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v2, :cond_a3

    iget-object v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v2, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a3

    const-string v2, "keyphrase_id"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recognition_modes"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "users"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "locale"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hint_text"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_a5

    :try_start_87
    const-string/jumbo v2, "sound_model"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v2, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_9e

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_98

    move v3, v4

    goto :goto_99

    :cond_98
    nop

    :goto_99
    :try_start_99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return v3

    :catchall_9e
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    :cond_a3
    monitor-exit p0

    return v3

    :catchall_a5
    move-exception v0

    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_a5

    throw v0
.end method
